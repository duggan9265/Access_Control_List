library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity packet_parser is
    generic (

        C_s_axis_rxd_TDATA_WIDTH : integer := 32; -- Parameters of Axi Slave Bus Interface s_axis_rxd

    );

    port (
        clk, rst, i_rx_valid : in std_logic;
        i_rx_data : in std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
        o_rx_data : out std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
        o_rx_valid : out std_logic
    );
end packet_parser;

architecture rtl of packet_parser is
begin
end architecture rtl;