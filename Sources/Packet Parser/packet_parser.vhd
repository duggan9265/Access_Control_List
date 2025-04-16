-- vhdl-linter-disable type-resolved
-- Created by Daniel Duggan, April 2025

-- Packet_parser.vhd, used to read in and sort data from the MAC.
-- Designed as a State Machine, includes a FIFO. Data is written into the FIFO and then read from the FIFO by the FSM. 
-- When at least 3 words are written into the FIFO, the FSM moves out of idle.
-- The MAC address, source address and Ethertype are first split into 3 words.
-- It is first checked that the ethernet frame contains the IPv4 protocol (ethertype = 0x800).
-- If not the frame is discarded. A signal data.invalid goes high. This is sent to the FIFO which then only reads out 0's.
-- Next the IPv4 frame is checked for it's protocol.
-- Certain protocols are passed, others are not, and the frame is discarded.
-- Rejected protocols cuase data.invalid to go high.
-- When i_rx_tlast is asserted, the state machine retruns to idle. 

/*
                Ethernet Header

MAC Dest.     MAC Source       Ehertype             32-bit words = 4 byte words.
|  6     |       6          |     2        |
| bytes  |      bytes       |    bytes     |
|__________________________________________|            
                14 bytes
 word 1  |      word 2      |    word 3    
 word 2  |      word 3      |
 
                IPv4 Header
Starts at byte 15, contained in word 3 is i.) the version, ii.) IHL,iii.) DSPC and iv.) ECN which altogether total 16 bits (0-15).
*/

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity packet_parser is
    generic (

        C_s_axis_rxd_TDATA_WIDTH : integer := 32; -- Parameters of Axi Slave Bus Interface s_axis_rxd.
        fifo_depth : integer := 9
    );
    port (
        clk, rst, i_rxd_tvalid, i_rx_tlast : in std_logic; --will connect to FIFO
        i_rxd_tdata : in std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0); -- connected to FIFO
        o_rxd_tdata : out std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0); -- connected to ACL_rule_matcher
        o_rxd_tready, o_fifo_invalid : out std_logic
    );
end packet_parser;

architecture rtl of packet_parser is
    -- Record of signal buffers for the Ethernet Frame.
    type ether_frame_rec is record
        mac_dest : std_logic_vector(6 * 8 - 1 downto 0); --MAC destination is 6 octets (bytes).
        mac_source : std_logic_vector(6 * 8 - 1 downto 0);
        ethertype : std_logic_vector(2 * 8 - 1 downto 0);
    end record;

    -- Record of signal buffers for the IPv4 frame.
    type ipv4_frame_rec is record
        initial : std_logic_vector(2 * 8 - 1 downto 0);
        protocol : std_logic_vector(8 - 1 downto 0);
    end record;

    -- Record of signals that come/go to the FIFO.
    type fifo_rec is record
        i_data : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0); -- data from FIFO
        i_wr_cnt : unsigned(fifo_depth - 1 downto 0);
        rd_valid : std_logic; -- signal to control reading from FIFO
    end record;

    -- Record of signals that sends on data, or used to deny access immediately.
    type process_data is record
        data_out : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
        invalid : std_logic;
    end record;

    -- Setup the Finite State Machine
    type fsm is
    (idle, word0, word1, word2, word3, IPv4_frame);

    signal ether : ether_frame_rec;
    signal ipv4 : ipv4_frame_rec;
    signal fifo : fifo_rec;
    signal state, next_state : fsm;
    signal data : process_data;
    signal word_cnt : integer range 0 to 380; -- ethernet frame is max 1518 bytes. There are 380, 32-bit words in 1518 bytes.
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
            i_rx_tlast => i_rx_tlast,
            i_rd_valid => fifo.rd_valid, -- rd_valid acts as a rd_enable. Controlled by packet_parser 'I can accept data'.
            i_fifo_invalid => o_fifo_invalid, -- to make FIFO output all 0's when don't have IPv4 header.
            o_data => fifo.i_data,
            o_wr_cnt => fifo.i_wr_cnt,
            o_rxd_tready => o_rxd_tready -- deasserted when FIFO is full.
        );

    fsm_process : process (state, fifo.i_wr_cnt)
    begin
        case state is
            when idle =>
                if fifo.i_wr_cnt >= 2 then -- >= have at least 3 words.
                    next_state <= word0;
                else
                    state <= idle;
                end if;

            when word0 =>
                next_state <= word0;

            when word1 =>
                next_state <= word1;

            when word2 =>
                next_state <= word3;

            when word3 =>
                next_state <= IPv4_frame;

            when IPv4_frame =>
                if i_rx_tlast = '1' then
                    next_state <= idle;
                end if;

            when others =>
                state <= next_state;
        end case;
    end process;

    data_process : process (clk, rst)
    begin

        if rst = '0' then
            fifo.rd_valid <= '0';
            state <= idle;
            data.data_out <= (others => '0');
        elsif (rising_edge(clk)) then
            state <= next_state;

            case state is
                when idle =>
                    word_cnt <= 0;
                    data.invalid <= '0';

                when word0 =>
                    fifo.rd_valid <= '1';
                    ether.mac_dest(47 downto 16) <= fifo.i_data(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
                    data.data_out <= ether.mac_dest(47 downto 16);
                    word_cnt <= word_cnt + 1;

                when word1 =>
                    fifo.rd_valid <= '1';
                    ether.mac_dest(15 downto 0) <= fifo.i_data(31 downto 16);
                    ether.mac_source(47 downto 32) <= fifo.i_data(15 downto 0);
                    data.data_out <= (ether.mac_dest(15 downto 0) & ether.mac_source(47 downto 32));
                    word_cnt <= word_cnt + 1;

                when word2 =>
                    fifo.rd_valid <= '1';
                    ether.mac_source(31 downto 0) <= fifo.i_data(31 downto 0);
                    data.data_out <= (ether.mac_source(31 downto 0));
                    word_cnt <= word_cnt + 1;

                when word3 =>
                    fifo.rd_valid <= '1';
                    ether.ethertype(15 downto 0) <= fifo.i_data(31 downto 16);
                    ipv4.initial(15 downto 0) <= fifo.i_data(15 downto 0);
                    if ether.ethertype(15 downto 0) /= Ethertype_IPv4 then
                        data.data_out <= (others => '0');
                        data.invalid <= '1';
                    else
                        data.data_out <= (ether.mac_source(15 downto 0) & ether.ethertype(15 downto 0));
                    end if;
                    word_cnt <= word_cnt + 1;

                when IPv4_frame =>
                    fifo.rd_valid <= '1';
                    word_cnt <= word_cnt + 1;
                    if word_cnt = 5 then
                        ipv4.protocol <= fifo.i_data(7 downto 0);
                        if ipv4.protocol /= (ICMP or IPX or TCP) then
                            data.data_out <= (others => '0');
                            data.invalid <= '1';
                        else
                            data.data_out <= fifo.i_data(31 downto 0);
                        end if;
                    else
                        data.data_out <= fifo.i_data(31 downto 0);
                    end if;
            end case;
        end if;
    end process;
    o_fifo_invalid <= data.invalid;
    o_rxd_tdata <= data.data_out;
end architecture rtl;