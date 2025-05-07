-- vhdl-linter-disable type-resolved
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ACL_RTL_top_v1_0 is
	generic (
		-- Users to add parameters here
        
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface s_axi_rxd
		C_s_axi_rxd_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Slave Bus Interface s_axi_rxs
		C_s_axi_rxs_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface m_axi_rxd
		C_m_axi_rxd_TDATA_WIDTH	: integer	:= 32;
		C_m_axi_rxd_START_COUNT	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface m_axi_rxs
		C_m_axi_rxs_TDATA_WIDTH	: integer	:= 32;
		C_m_axi_rxs_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface s_axi_rxd
		s_axi_rxd_aclk	: in std_logic;
		s_axi_rxd_aresetn	: in std_logic;
		s_axi_rxd_tready	: out std_logic;
		s_axi_rxd_tdata	: in std_logic_vector(C_s_axi_rxd_TDATA_WIDTH-1 downto 0);
		s_axi_rxd_tstrb	: in std_logic_vector((C_s_axi_rxd_TDATA_WIDTH/8)-1 downto 0);
		s_axi_rxd_tlast	: in std_logic;
		s_axi_rxd_tvalid	: in std_logic;

		-- Ports of Axi Slave Bus Interface s_axi_rxs
		s_axi_rxs_aclk	: in std_logic;
		s_axi_rxs_aresetn	: in std_logic;
		s_axi_rxs_tready	: out std_logic;
		s_axi_rxs_tdata	: in std_logic_vector(C_s_axi_rxs_TDATA_WIDTH-1 downto 0);
		s_axi_rxs_tstrb	: in std_logic_vector((C_s_axi_rxs_TDATA_WIDTH/8)-1 downto 0);
		s_axi_rxs_tlast	: in std_logic;
		s_axi_rxs_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface m_axi_rxd
		m_axi_rxd_aclk	: in std_logic;
		m_axi_rxd_aresetn	: in std_logic;
		m_axi_rxd_tvalid	: out std_logic;
		m_axi_rxd_tdata	: out std_logic_vector(C_m_axi_rxd_TDATA_WIDTH-1 downto 0);
		m_axi_rxd_tstrb	: out std_logic_vector((C_m_axi_rxd_TDATA_WIDTH/8)-1 downto 0);
		m_axi_rxd_tlast	: out std_logic;
		m_axi_rxd_tready	: in std_logic;

		-- Ports of Axi Master Bus Interface m_axi_rxs
		m_axi_rxs_aclk	: in std_logic;
		m_axi_rxs_aresetn	: in std_logic;
		m_axi_rxs_tvalid	: out std_logic;
		m_axi_rxs_tdata	: out std_logic_vector(C_m_axi_rxs_TDATA_WIDTH-1 downto 0);
		m_axi_rxs_tstrb	: out std_logic_vector((C_m_axi_rxs_TDATA_WIDTH/8)-1 downto 0);
		m_axi_rxs_tlast	: out std_logic;
		m_axi_rxs_tready	: in std_logic
	);
end ACL_RTL_top_v1_0;

architecture arch_imp of ACL_RTL_top_v1_0 is

	-- component declaration
	component ACL_RTL_top_v1_0_s_axi_rxd is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component ACL_RTL_top_v1_0_s_axi_rxd;

	component ACL_RTL_top_v1_0_s_axi_rxs is
		generic (
		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
		);
		port (
		S_AXIS_ACLK	: in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
		);
	end component ACL_RTL_top_v1_0_s_axi_rxs;

	component ACL_RTL_top_v1_0_m_axi_rxd is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component ACL_RTL_top_v1_0_m_axi_rxd;

	component ACL_RTL_top_v1_0_m_axi_rxs is
		generic (
		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M_START_COUNT	: integer	:= 32
		);
		port (
		M_AXIS_ACLK	: in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TVALID	: out std_logic;
		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TREADY	: in std_logic
		);
	end component ACL_RTL_top_v1_0_m_axi_rxs;

	signal o_rx_tdata : std_logic_vector(31 downto 0);

begin

-- Instantiation of Axi Bus Interface s_axi_rxd
ACL_RTL_top_v1_0_s_axi_rxd_inst : ACL_RTL_top_v1_0_s_axi_rxd
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_s_axi_rxd_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s_axi_rxd_aclk,
		S_AXIS_ARESETN	=> s_axi_rxd_aresetn,
		S_AXIS_TREADY	=> s_axi_rxd_tready,
		S_AXIS_TDATA	=> s_axi_rxd_tdata,
		S_AXIS_TSTRB	=> s_axi_rxd_tstrb,
		S_AXIS_TLAST	=> s_axi_rxd_tlast,
		S_AXIS_TVALID	=> s_axi_rxd_tvalid
	);

-- Instantiation of Axi Bus Interface s_axi_rxs
ACL_RTL_top_v1_0_s_axi_rxs_inst : ACL_RTL_top_v1_0_s_axi_rxs
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_s_axi_rxs_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s_axi_rxs_aclk,
		S_AXIS_ARESETN	=> s_axi_rxs_aresetn,
		S_AXIS_TREADY	=> s_axi_rxs_tready,
		S_AXIS_TDATA	=> s_axi_rxs_tdata,
		S_AXIS_TSTRB	=> s_axi_rxs_tstrb,
		S_AXIS_TLAST	=> s_axi_rxs_tlast,
		S_AXIS_TVALID	=> s_axi_rxs_tvalid
	);

-- Instantiation of Axi Bus Interface m_axi_rxd
ACL_RTL_top_v1_0_m_axi_rxd_inst : ACL_RTL_top_v1_0_m_axi_rxd
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_m_axi_rxd_TDATA_WIDTH,
		C_M_START_COUNT	=> C_m_axi_rxd_START_COUNT
	)
	port map (
		M_AXIS_ACLK	=> m_axi_rxd_aclk,
		M_AXIS_ARESETN	=> m_axi_rxd_aresetn,
		M_AXIS_TVALID	=> m_axi_rxd_tvalid,
		M_AXIS_TDATA	=> m_axi_rxd_tdata,
		M_AXIS_TSTRB	=> m_axi_rxd_tstrb,
		M_AXIS_TLAST	=> m_axi_rxd_tlast,
		M_AXIS_TREADY	=> m_axi_rxd_tready
	);

-- Instantiation of Axi Bus Interface m_axi_rxs
ACL_RTL_top_v1_0_m_axi_rxs_inst : ACL_RTL_top_v1_0_m_axi_rxs
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_m_axi_rxs_TDATA_WIDTH,
		C_M_START_COUNT	=> C_m_axi_rxs_START_COUNT
	)
	port map (
		M_AXIS_ACLK	=> m_axi_rxs_aclk,
		M_AXIS_ARESETN	=> m_axi_rxs_aresetn,
		M_AXIS_TVALID	=> m_axi_rxs_tvalid,
		M_AXIS_TDATA	=> m_axi_rxs_tdata,
		M_AXIS_TSTRB	=> m_axi_rxs_tstrb,
		M_AXIS_TLAST	=> m_axi_rxs_tlast,
		M_AXIS_TREADY	=> m_axi_rxs_tready
	);

	-- Add user logic here
	-- Instatiation of packet parser. Receives data from ACL_top_v1_0_0
	packet_parser_inst: entity work.packet_parser -- vhdl-linter-disable-line not-declared
	 
	 port map(
		clk => s_axi_rxd_aclk, --all signals come from ACL_top_v1_0_s_axis_rxd_inst : ACL_top_v1_0_s_axis_rxd
		rst => s_axi_rxd_aresetn,
		i_rxd_tvalid => s_axi_rxd_tvalid, -- goes to FIFO wr_en ultimately
		i_rxd_tdata => s_axi_rxd_tdata,
		i_rxd_tlast => s_axi_rxd_tlast, -- goes to pack_parser --> fifo. Controls wr_cnt.
        o_rxd_tready => s_axi_rxd_tready, -- low when FIFO is full.
		o_rxd_tdata => o_rx_tdata
	);

	-- User logic ends

end arch_imp;
