-- vhdl-linter-disable type-resolved
-- Created by Daniel Duggan, April 2025

-- Packet_parser.vhd, used to read in and sort data from the MAC.
-- Designed as a State Machine, includes a FIFO. Data is written into the FIFO and then read from the FIFO by the FSM. 
-- When at least 3 words are written into the FIFO, the FSM moves out of idle.
-- The MAC address, source address and Ethertype are first split into 3 words.
-- It is first checked that the ethernet frame contains the IPv4 protocol (ethertype = 0x800).
-- If not the frame is discarded. A signal data.invalid goes high. This is sent to the FIFO which then only reads out 0's.
-- If 0x800 is detected, the IPv4 frame is checked for it's protocol.
-- Certain protocols are passed, others are not, and the frame is discarded.
-- Rejected protocols cuase data.invalid to go high.
-- When i_rxd_tlast is asserted, the state machine retruns to idle. 
--                 Ethernet Header

-- MAC Dest.     MAC Source       Ehertype             32-bit words = 4 byte words.
-- |  6     |       6          |     2        |
-- | bytes  |      bytes       |    bytes     |
-- |__________________________________________|            
--                 14 bytes
--  word 1  |      word 2      |    word 4    
--  word 2  |      word 3      |

--                 IPv4 Header
-- Starts at byte 15, contained in word 4 is i.) the version, ii.) IHL, iii.) DSPC and iv.) ECN, which altogether total 16 bits (0-15).
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity packet_parser is
    generic (

        C_s_axis_rxd_TDATA_WIDTH : integer := 32; -- Parameters of Axi Slave Bus Interface s_axis_rxd.
        fifo_depth : integer := 9
    );
    port (
        clk, rst, i_rxd_tvalid, i_rxd_tlast : in std_logic; --will connect to FIFO
        i_rxd_tdata : in std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0); -- connected to FIFO
        o_rxd_tdata : out std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0); -- connected to ACL_rule_matcher       
        o_rxd_tready, o_fifo_invalid : out std_logic
    );
end packet_parser;

architecture rtl of packet_parser is
    -- Record of signals that come/go to the FIFO.
    type fifo_rec is record
        i_data : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0); -- data from FIFO
        i_wr_cnt : unsigned(fifo_depth - 1 downto 0);
        rd_valid : std_logic; -- signal to control reading from FIFO
        o_rd_address : unsigned(fifo_depth - 1 downto 0);
        o_rd_cnt_override : std_logic;
    end record;

    -- Record of signals that sends on data, or used to deny access immediately.
    type process_data is record
        data_out : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
        invalid : std_logic;
    end record;

    -- Setup the Finite State Machine
    type fsm is
    (idle, check_ethertype, check_IPv4_protocol, data_invalid, wait_data, allow_data);

    signal fifo : fifo_rec;
    signal state : fsm;
    signal data : process_data;

    constant Ethertype_IPv4 : std_logic_vector(15 downto 0) := x"0800";
    constant ICMP : std_logic_vector(7 downto 0) := x"01";
    constant IPX : std_logic_vector(7 downto 0) := x"6f";
    constant TCP : std_logic_vector(7 downto 0) := x"06";
begin

    FIFO_inst : entity work.FIFO
        port map(
            clk => clk,
            rst => rst,
            i_rxd_tvalid => i_rxd_tvalid,
            i_rx_data => i_rxd_tdata,
            i_rxd_tlast => i_rxd_tlast,
            i_rd_valid => fifo.rd_valid, -- rd_valid acts as a rd_enable. Controlled by packet_parser 'I can accept data'.
            i_fifo_invalid => data.invalid, -- to make FIFO output all 0's when don't have IPv4 header.
            i_rd_address => fifo.o_rd_address,
            i_rd_cnt_override => fifo.o_rd_cnt_override,
            o_data => fifo.i_data,
            o_wr_cnt => fifo.i_wr_cnt,
            o_rxd_tready => o_rxd_tready -- deasserted when FIFO is full.
        );

    fsm_process : process (clk, rst)
    begin

        if rst = '0' then
            fifo.rd_valid <= '0';
            state <= idle;
            data.invalid <= '0';
            fifo.o_rd_cnt_override <= '0';

        elsif (rising_edge(clk)) then
            
            case state is
                when idle =>
                    if fifo.i_wr_cnt = 3 then
                        state <= check_ethertype;
                        fifo.o_rd_address <= to_unsigned(3, fifo_depth); -- we set this so it reads the 4th word add. 0x3
                        fifo.o_rd_cnt_override <= '1';
                    else
                        state <= state;
                    end if;

                when check_ethertype =>
                    if fifo.i_wr_cnt >4 then
                    if fifo.i_data(31 downto 16) = Ethertype_IPv4 then
                        state <= check_IPv4_protocol;
                        fifo.o_rd_address <= to_unsigned(5, fifo_depth); -- check protocol add. 6th word add. 0x5
                    else
                        state <= data_invalid;
                        data.invalid <= '1';
                        end if;

                    end if;
                
                when check_IPv4_protocol =>
                    if fifo.i_wr_cnt > 6 then
                        if not (fifo.i_data(7 downto 0) = ICMP or
                            fifo.i_data(7 downto 0) = IPX or
                            fifo.i_data(7 downto 0) = TCP) then
                            data.invalid <= '1';
                            state <= data_invalid;
                        else
                            fifo.o_rd_address <= to_unsigned(0, fifo_depth);
                            fifo.o_rd_cnt_override <= '0'; --ctrls what data is read from FIFO
                            fifo.rd_valid <= '1'; --controls rd_cnt inside FIFO.
                            state <= wait_data;
                        end if;
                    end if;
                    
                when wait_data =>
                          state <= allow_data; 
                    
                when allow_data =>
                    data.data_out <= fifo.i_data(31 downto 0);
                    if i_rxd_tlast = '1' then
                        state <= idle;
                    else 
                        state <= allow_data;
                    end if;

                when data_invalid =>
                    fifo.rd_valid <= '1';
                    fifo.o_rd_cnt_override <= '1';
                    if i_rxd_tlast = '1' then
                        state <= idle;
                    end if;

                when others =>
                    state <= idle;
            end case;
                
        end if;
    end process;
    o_fifo_invalid <= data.invalid;
    o_rxd_tdata <= data.data_out;
end architecture rtl;