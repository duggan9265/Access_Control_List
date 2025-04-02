library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity System_Top is
    Port (
        -- AXI Stream Input (from Ethernet FIFO)
        s_axis_aclk  : in  std_logic;
        s_axis_aresetn : in  std_logic;
        s_axis_tdata : in  std_logic_vector(31 downto 0);
        s_axis_tvalid : in  std_logic;
        s_axis_tready : out std_logic;
        s_axis_tlast  : in  std_logic;

        -- AXI Stream Output (to PS or Ethernet)
        m_axis_tdata : out std_logic_vector(31 downto 0);
        m_axis_tvalid : out std_logic;
        m_axis_tready : in  std_logic;
        m_axis_tlast  : out std_logic
    );
end system_top;

architecture rtl of system_top is
begin
    process(s_axis_aclk)
    begin
        if rising_edge(s_axis_aclk) then
            if s_axis_tvalid = '1' and m_axis_tready = '1' then
                -- Implement ACL Filtering Logic Here
                -- If the packet is allowed, forward it
                m_axis_tdata  <= s_axis_tdata;
                m_axis_tvalid <= '1';
                m_axis_tlast  <= s_axis_tlast;
            else
                m_axis_tvalid <= '0';
            end if;
        end if;
    end process;
end rtl;