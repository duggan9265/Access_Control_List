-- vhdl-linter-disable type-resolved
-- Created by Daniel Duggan, April 2025.

-- This FIFO takes the data from ACL top.
-- It act as a buffer to allow data to be sorted through in the packet parser.
-- Reset (rst) is active low and asynchronous to match the AXIS protocol.
-- i_rxd_tvalid acts as a wr_enable (controlled by ACL_top). i_rd_valid acts as a read_enable (controlled by the packet parser.)
-- if i_fifo_invalid is asserted, the FIFO outputs 0 until the FSM inside packet_parser returns to idle. 
-- This occurs when i_rx_tlast is asserted inside the packet parser.
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity fifo is
    generic (

        C_s_axis_rxd_TDATA_WIDTH : integer := 32; -- Parameters of Axi Slave Bus Interface s_axis_rxd.
        fifo_depth : integer := 9; -- have 380 words max, this gives 512 addressess (2^9)
        fifo_width : integer := 32 -- width of each word.
    );

    port (
        clk, rst, i_rxd_tvalid, i_rd_valid, i_rx_tlast, i_fifo_invalid : in std_logic; --wr enable = i_rx_tvalid
        i_rx_data : in std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
        o_data : out std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0); -- o_rx_data = o_data
        o_wr_cnt : out unsigned(fifo_depth - 1 downto 0);
        o_rxd_tready : out std_logic -- deassert ready when FIFO full.
    );
end fifo;

architecture rtl of fifo is
    type fifo_cntr_interface is record
        wr_cnt : unsigned(fifo_depth - 1 downto 0);
        rd_cnt : unsigned(fifo_depth - 1 downto 0);
        rxd_tready : std_logic; -- deassert ready when FIFO full.
        entry_count : unsigned (fifo_depth downto 0);
        full : std_logic;
        empty : std_logic;
    end record;

    type fifo_type is array ((2 ** fifo_depth - 1) downto 0) of std_logic_vector(fifo_width - 1 downto 0);

    signal fifo : fifo_cntr_interface; -- control interface signal
    signal memory : fifo_type; -- memory signal
    signal o_data_sig : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);

begin
    fifo_write_cnt : process (clk, rst)
    begin
        if rst = '0' then
            fifo.wr_cnt <= (others => '0');
        elsif (rising_edge(clk)) then
            if fifo.full = '0' and i_rxd_tvalid = '1' then
                if fifo.wr_cnt = (2 ** fifo_depth) - 1 or i_rx_tlast = '1' then
                    fifo.wr_cnt <= (others => '0');
                else
                    fifo.wr_cnt <= fifo.wr_cnt + 1;
                end if;
            end if;

        end if;
    end process;

    fifo_read_cnt : process (clk, rst)
    begin
        if rst = '0' then
            fifo.rd_cnt <= (others => '0');
        elsif (rising_edge(clk)) then
            if fifo.empty = '0' and i_rd_valid = '1' then
                if fifo.rd_cnt = (2 ** fifo_depth) - 1 then
                    fifo.rd_cnt <= (others => '0');
                else
                    fifo.rd_cnt <= fifo.rd_cnt + 1;
                end if;
            end if;
        end if;
    end process;

    fifo_write_read : process (clk)
    begin
        if (rising_edge(clk)) then
            memory(to_integer(fifo.wr_cnt)) <= i_rx_data;
        end if;

        if (rising_edge(clk)) then
            if i_fifo_invalid = '0' then
                o_data_sig <= std_logic_vector(memory(to_integer(fifo.rd_cnt)));
            else
                o_data_sig <= (others => '0');
            end if;
        end if;
    end process;

    fifo_cnt_check : process (fifo.wr_cnt, fifo.rd_cnt)
    begin
        if fifo.wr_cnt < fifo.rd_cnt then
            fifo.entry_count <= resize(fifo.wr_cnt - fifo.rd_cnt, fifo_depth + 1) + to_unsigned(2 ** fifo_depth, fifo_depth + 1);
        else
            fifo.entry_count <= resize(fifo.wr_cnt - fifo.rd_cnt, fifo_depth + 1);
        end if;
    end process;

    fifo.empty <= '1' when to_integer(fifo.entry_count) = 0 else
    '0';
    fifo.full <= '1' when to_integer(fifo.entry_count) = 2 ** fifo_depth else
    '0';

    o_wr_cnt <= fifo.wr_cnt;
    fifo.rxd_tready <= not fifo.full; -- deassert ready when FIFO full.
    o_rxd_tready <= fifo.rxd_tready; -- deassert ready when FIFO full. 
    o_data <= o_data_sig;
end architecture rtl;