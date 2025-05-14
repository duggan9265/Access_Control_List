-- vhdl-linter-disable type-resolved
-- Created by Daniel Duggan, April 2025

-- Packet_parser.vhd, used to read in and sort data from the MAC.
-- Designed as a State Machine, includes a FIFO. Data is written into the FIFO and then read from the FIFO by the FSM. 
-- Designed to check the Ethertype, IPv4 protocol, IPv4 source and destination addresses.

-- Accesses certain memory addresses of the FIFO corresponding to the particular rule check to be carried out.
-- If a rule is broken, makes the FIFO read out all 0's. This occurs until i_rxd_tlast is set high by the Axi Ethernet top-level, and the FIFO
-- becomes empty. Then, the FSM returns to idle.
-- If all checks pass, data is read out starting at memory address 0x0 until i_rxd_tlast is set high and the FIFO becomes empty.
-- movement between states is controlled by the write count (wr_cnt) inside the FIFO.
-- 
--                 Ethernet Header

-- MAC Dest.     MAC Source       Ehertype             32-bit words = 4 byte words.
-- |  6     |       6          |     2        |
-- | bytes  |      bytes       |    bytes     |
-- |__________________________________________|            
--                 14 bytes
--  word 0  |      word 1      |    word 3    
--  word 1  |      word 2      |

--                 IPv4 Header
-- Starts at byte 15, contained in word 3 is i.) the version, ii.) IHL, iii.) DSPC and iv.) ECN, which altogether total 16 bits (0-15).
-- Protocol in word 5. Source and destintation addresses in words 6, 7 and 8.
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
        o_rd_valid : std_logic; -- signal to control reading from FIFO
        o_rd_address : unsigned(fifo_depth - 1 downto 0);
        o_rd_cnt_override, empty : std_logic;
    end record;

    -- Record of signals that sends on data, or used to deny access immediately.
    type process_data is record
        data_out : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
        invalid : std_logic;
    end record;

    -- Record of buffers for the IPv4 source and destination address.
    type IPv4_source_dest is record
        source : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
        dest : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
    end record;

    -- Setup the Finite State Machine
    type fsm is
    (idle, check_ethertype, check_IPv4_protocol, IPv4_source_addr, check_IPv4_source_addr, check_IPv4_des_addr, data_invalid, wait_data, allow_data);

    signal fifo : fifo_rec;
    signal state : fsm;
    signal data : process_data;
    signal IPv4 : IPv4_source_dest;

    constant Ethertype_IPv4 : std_logic_vector(15 downto 0) := x"0800";
    constant ICMP : std_logic_vector(7 downto 0) := x"01";
    constant IPX : std_logic_vector(7 downto 0) := x"6f";
    constant TCP : std_logic_vector(7 downto 0) := x"06";
    constant source_addr : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0) := x"DDDD_FFFF";
    constant dest_addr : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0) := x"AAAA_BBBB";

begin

    FIFO_inst : entity work.FIFO
        port map(
            clk => clk,
            rst => rst,
            i_rxd_tvalid => i_rxd_tvalid,
            i_rx_data => i_rxd_tdata,
            i_rxd_tlast => i_rxd_tlast,
            i_rd_valid => fifo.o_rd_valid, -- o_rd_valid acts as a rd_enable. Controlled by packet_parser 'I can accept data'.
            i_deny_data => data.invalid, -- to make FIFO output all 0's when don't have IPv4 header.
            i_rd_address => fifo.o_rd_address,
            i_rd_cnt_override => fifo.o_rd_cnt_override,
            o_data => fifo.i_data,
            o_wr_cnt => fifo.i_wr_cnt,
            empty => fifo.empty,
            o_rxd_tready => o_rxd_tready -- deasserted when FIFO is full.
        );

    fsm_process : process (clk, rst)
    begin
        if rst = '0' then
            fifo.o_rd_valid <= '0';
            state <= idle;
            data.invalid <= '0';
            fifo.o_rd_cnt_override <= '0';

        elsif (rising_edge(clk)) then
            case state is
                when idle =>
                    if fifo.i_wr_cnt = 3 then
                        state <= check_ethertype;
                        fifo.o_rd_address <= to_unsigned(3, fifo_depth); -- we set this so it reads the 3th word. add. 0x3
                        fifo.o_rd_cnt_override <= '1';
                    else
                        state <= state;
                    end if;
                when check_ethertype =>
                    if fifo.i_wr_cnt = 5 then
                        if fifo.i_data(31 downto 16) = Ethertype_IPv4 then
                            state <= check_IPv4_protocol;
                            fifo.o_rd_address <= to_unsigned(5, fifo_depth); -- check protocol. 5th word. add 0x5
                        else
                            state <= data_invalid;
                            data.invalid <= '1';
                        end if;

                    end if;
                when check_IPv4_protocol =>
                    if fifo.i_wr_cnt = 7 then
                        if not (fifo.i_data(7 downto 0) = ICMP or
                            fifo.i_data(7 downto 0) = IPX or
                            fifo.i_data(7 downto 0) = TCP) then
                            data.invalid <= '1';
                            state <= data_invalid;
                        else
                            fifo.o_rd_address <= to_unsigned(6, fifo_depth);
                            state <= IPv4_source_addr;
                        end if;
                    end if;
                when IPv4_source_addr =>
                    if fifo.i_wr_cnt = 8 then
                        IPv4.source(31 downto 16) <= fifo.i_data(15 downto 0); --source addr. 1
                        fifo.o_rd_address <= to_unsigned(7, fifo_depth);
                    elsif fifo.i_wr_cnt = 9 then
                        IPv4.source(15 downto 0) <= fifo.i_data(31 downto 16); --source addr. 2
                        IPv4.dest(31 downto 16) <= fifo.i_data(15 downto 0); -- dest addr. 1
                        fifo.o_rd_address <= to_unsigned(8, fifo_depth);
                        state <= check_IPv4_source_addr;
                    else
                        state <= state;
                    end if;
                when check_IPv4_source_addr =>
                    if not IPv4.source(31 downto 0) = source_addr then
                        state <= data_invalid;
                        data.invalid <= '1';

                    elsif fifo.i_wr_cnt > 8 then
                        IPv4.dest(15 downto 0) <= fifo.i_data(31 downto 16); -- dest addr. 2
                        state <= check_IPv4_des_addr;
                    end if;
                when check_IPv4_des_addr =>
                    if not IPv4.dest(31 downto 0) = dest_addr then
                        state <= data_invalid;
                        data.invalid <= '1';
                    else
                        fifo.o_rd_address <= to_unsigned(0, fifo_depth);
                        fifo.o_rd_cnt_override <= '0'; --ctrls what data is read from FIFO
                        fifo.o_rd_valid <= '1'; --controls rd_cnt inside FIFO.
                        state <= wait_data;
                    end if;
                when wait_data =>
                    state <= allow_data; -- to allow data from 0x0 address of FIFO be the input to PP. 

                when allow_data =>
                    data.data_out <= fifo.i_data(31 downto 0);
                    if fifo.empty = '1' then
                        state <= idle;
                    else
                        state <= allow_data;
                    end if;
                when data_invalid =>
                    fifo.o_rd_valid <= '1';
                    fifo.o_rd_cnt_override <= '0';
                    if fifo.empty = '1' then
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