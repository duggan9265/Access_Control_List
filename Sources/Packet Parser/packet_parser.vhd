-- vhdl-linter-disable type-resolved
-- Created by Daniel Duggan, April 2025

-- Packet_parser.vhd, used to read in data from the MAC.
-- Designed as a State Machine, includes a FIFO.
-- First checks if ethernet frame contans the IPv4 protocole (ethertype = 0x800).

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
        i_rxd_tdata : in std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0); --will connect to FIFO
        o_rx_ready : out std_logic
    );
end packet_parser;

architecture rtl of packet_parser is

    type ether_frame_rec is record
        mac_dest : std_logic_vector(6 * 8 - 1 downto 0); --MAC destination is 6 octets (bytes). These will be dependent on data_in
        mac_source : std_logic_vector(6 * 8 - 1 downto 0);
        ethertype : std_logic_vector(2 * 8 - 1 downto 0);
    end record;

    type ipv4_frame_rec is record
        total_length : std_logic_vector(2 * 8 - 1 downto 0);
    end record;

    type data_from_fifo_rec is record 
        i_data : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
        i_wr_cnt : unsigned(fifo_depth - 1 downto 0);
    end record;

    type fsm is
        (idle, );

    
    signal ether : ether_frame_rec;
    signal ipv4 : ipv4_frame_rec;
    signal fifo : data_from_fifo_rec;
    signal o_rd_valid : std_logic;

begin

    FIFO_inst : entity work.FIFO
    port map (
        clk => clk,
        rst => rst,
        i_wr_en => i_rxd_tvalid,
        i_rx_data => i_rxd_tdata,
        i_rx_tlast => i_rx_tlast,
        i_rd_valid => o_rd_valid, --rd_valid acts as a rd_enable
        o_data => fifo.i_data,
        o_wr_cnt => fifo.i_wr_cnt,
        o_rd_valid => open
    );

end architecture rtl;