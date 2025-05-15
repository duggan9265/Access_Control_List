-- vhdl-linter-disable type-resolved
-- Created by Daniel Duggan, April 2025.

-- This FIFO takes the data from ACL top via the Packet Parser (PP).
-- It act as a buffer to allow data to be sorted through in the PP.
-- Reset (rst) is active low and asynchronous to match the AXIS protocol.

-- i_rxd_tvalid acts as a wr_enable (controlled by ACL_top). i_rd_valid acts as a read_enable (controlled by the PP.)
-- Data is written when i_rxd_tvalid is high and the FIFO is not full. 
-- The PP can randomly access the data. This used for rule checking. 
-- Data is read whe the PP is ready and sets i_rd_valid high. If a rule is broken, i_deny_data is set high. All 0's are output.
-- When i_rxd_tlast is asserted, the wr_cnt value is held constant. 
-- Data is read until the Fifo is empty. The fifo.empty signal is assserted.
-- This is conveyed to the PP which goes to idle, whilst the wr_cnt is returned to 0.
-- The read and write pointers (wr_cnt and rd_cnt) are reset to 0.

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity fifo is
    generic (

        C_s_axis_rxd_TDATA_WIDTH : integer := 32; -- Parameters of Axi Slave Bus Interface s_axis_rxd.
        fifo_full : integer := 380; -- Ethernet frame has maximum 380 words
        fifo_depth : integer := 9; -- have 380 words max, this gives 512 addressess (2^9)
        fifo_width : integer := 32 -- width of each word.
    );

    port (
        clk, rst, i_rxd_tvalid, i_rd_valid, i_rxd_tlast, i_deny_data, i_rd_cnt_override : in std_logic; --wr enable = i_rx_tvalid
        i_rx_data : in std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0);
        i_rd_address : unsigned(fifo_depth - 1 downto 0);
        o_data : out std_logic_vector(C_s_axis_rxd_TDATA_WIDTH - 1 downto 0); -- o_rx_data = o_data
        o_wr_cnt : out unsigned(fifo_depth - 1 downto 0);
         empty : out std_logic -- deassert ready when FIFO full.o_rxd_tready,
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
        if (rising_edge(clk)) then
            if rst = '0' then
                fifo.wr_cnt <= (others => '0');

            elsif fifo.full = '0' and i_rxd_tvalid = '1' then
                if fifo.wr_cnt = (2 ** fifo_depth) - 1 then
                    fifo.wr_cnt <= (others => '0');
                elsif i_rxd_tlast = '1' then
                    fifo.wr_cnt <= fifo.wr_cnt; -- hold value so we can assert empty
                else
                    fifo.wr_cnt <= fifo.wr_cnt + 1;
                end if;
            elsif fifo.empty = '1' and i_rxd_tvalid = '0' then
                fifo.wr_cnt <= (others => '0');
            end if;
        end if;
    end process;

    fifo_read_cnt : process (clk, rst)
    begin
        if (rising_edge(clk)) then
            if rst = '0' then
                fifo.rd_cnt <= (others => '0');
            elsif i_rd_valid = '1' and i_rd_cnt_override = '0' then
                if (fifo.rd_cnt = (2 ** fifo_depth) - 1) or (fifo.empty = '1') then
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
            if i_rxd_tvalid = '1' and fifo.full = '0' then
                memory(to_integer(fifo.wr_cnt)) <= i_rx_data;
            end if;

            if i_rd_cnt_override = '1' then
                o_data_sig <= std_logic_vector(memory(to_integer(i_rd_address)));
            elsif i_deny_data = '0' then
                o_data_sig <= std_logic_vector(memory(to_integer(fifo.rd_cnt)));
            elsif i_deny_data = '1' then
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
    fifo.full <= '1' when to_integer(fifo.entry_count) = fifo_full - 1 else
    '0';

    o_wr_cnt <= fifo.wr_cnt;
    fifo.rxd_tready <= not fifo.full; -- deassert ready when FIFO full.
    --o_rxd_tready <= fifo.rxd_tready; -- deassert ready when FIFO full. 
    empty <= fifo.empty; -- used to set PP back to idle
    o_data <= o_data_sig;
end architecture rtl;