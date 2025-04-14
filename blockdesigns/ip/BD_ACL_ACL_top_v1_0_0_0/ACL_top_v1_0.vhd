-- vhdl-linter-disable type-resolved.
-- Created by Daniel Duggan, April 2025. 

-- This entity is created using the create and package new IP functionality in Vivado.
-- It is used as a top level for the Access Control List. All sub-entites of the access 
-- control list are instantiated here with the exception of the FIFO contained inside packet_parser.vhd
-- The AXIS inputs are connected to the packet parser entity (packet_parser.vhd) starting line 217.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ACL_top_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends here
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface s_axis_rxd
		C_s_axis_rxd_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Slave Bus Interface s_axis_rxs
		C_s_axis_rxs_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface m_axis_rxd
		C_m_axis_rxd_TDATA_WIDTH	: integer	:= 32;
		C_m_axis_rxd_START_COUNT	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface m_axis_rxs
		C_m_axis_rxs_TDATA_WIDTH	: integer	:= 32;
		C_m_axis_rxs_START_COUNT	: integer	:= 32
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface s_axis_rxd
		s_axis_rxd_aclk	: in std_logic;
		s_axis_rxd_aresetn	: in std_logic;
		s_axis_rxd_tready	: out std_logic;
		s_axis_rxd_tdata	: in std_logic_vector(C_s_axis_rxd_TDATA_WIDTH-1 downto 0);
		s_axis_rxd_tstrb	: in std_logic_vector((C_s_axis_rxd_TDATA_WIDTH/8)-1 downto 0);
		s_axis_rxd_tlast	: in std_logic;
		s_axis_rxd_tvalid	: in std_logic;

		-- Ports of Axi Slave Bus Interface s_axis_rxs
		s_axis_rxs_aclk	: in std_logic;
		s_axis_rxs_aresetn	: in std_logic;
		s_axis_rxs_tready	: out std_logic;
		s_axis_rxs_tdata	: in std_logic_vector(C_s_axis_rxs_TDATA_WIDTH-1 downto 0);
		s_axis_rxs_tstrb	: in std_logic_vector((C_s_axis_rxs_TDATA_WIDTH/8)-1 downto 0);
		s_axis_rxs_tlast	: in std_logic;
		s_axis_rxs_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface m_axis_rxd
		m_axis_rxd_aclk	: in std_logic;
		m_axis_rxd_aresetn	: in std_logic;
		m_axis_rxd_tvalid	: out std_logic;
		m_axis_rxd_tdata	: out std_logic_vector(C_m_axis_rxd_TDATA_WIDTH-1 downto 0);
		m_axis_rxd_tstrb	: out std_logic_vector((C_m_axis_rxd_TDATA_WIDTH/8)-1 downto 0);
		m_axis_rxd_tlast	: out std_logic;
		m_axis_rxd_tready	: in std_logic;

		-- Ports of Axi Master Bus Interface m_axis_rxs
		m_axis_rxs_aclk	: in std_logic;
		m_axis_rxs_aresetn	: in std_logic;
		m_axis_rxs_tvalid	: out std_logic;
		m_axis_rxs_tdata	: out std_logic_vector(C_m_axis_rxs_TDATA_WIDTH-1 downto 0);
		m_axis_rxs_tstrb	: out std_logic_vector((C_m_axis_rxs_TDATA_WIDTH/8)-1 downto 0);
		m_axis_rxs_tlast	: out std_logic;
		m_axis_rxs_tready	: in std_logic
	);
end ACL_top_v1_0;

architecture arch_imp of ACL_top_v1_0 is

	-- component declaration
	component ACL_top_v1_0_s_axis_rxd is
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
	end component ACL_top_v1_0_s_axis_rxd;

	component ACL_top_v1_0_s_axis_rxs is
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
	end component ACL_top_v1_0_s_axis_rxs;

	component ACL_top_v1_0_m_axis_rxd is
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
	end component ACL_top_v1_0_m_axis_rxd;

	component ACL_top_v1_0_m_axis_rxs is
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
	end component ACL_top_v1_0_m_axis_rxs;

	-- Signals to connect to packet_parser i.e. incoming data

	signal rx_data         : std_logic_vector(C_s_axis_rxd_TDATA_WIDTH-1 downto 0); -- Buffer for incoming data
	signal rx_valid        : std_logic;  -- Data valid flag
	signal rx_ready        : std_logic;  -- Ready to accept data
	signal byte_counter    : integer;      -- Count received bytes
	signal frame_active    : std_logic;  -- Indicates an active frame

begin

-- Instantiation of Axi Bus Interface s_axis_rxd
ACL_top_v1_0_s_axis_rxd_inst : ACL_top_v1_0_s_axis_rxd
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_s_axis_rxd_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s_axis_rxd_aclk,
		S_AXIS_ARESETN	=> s_axis_rxd_aresetn,
		S_AXIS_TREADY	=> s_axis_rxd_tready,
		S_AXIS_TDATA	=> s_axis_rxd_tdata,
		S_AXIS_TSTRB	=> s_axis_rxd_tstrb,
		S_AXIS_TLAST	=> s_axis_rxd_tlast,
		S_AXIS_TVALID	=> s_axis_rxd_tvalid
	);

-- Instantiation of Axi Bus Interface s_axis_rxs
ACL_top_v1_0_s_axis_rxs_inst : ACL_top_v1_0_s_axis_rxs
	generic map (
		C_S_AXIS_TDATA_WIDTH	=> C_s_axis_rxs_TDATA_WIDTH
	)
	port map (
		S_AXIS_ACLK	=> s_axis_rxs_aclk,
		S_AXIS_ARESETN	=> s_axis_rxs_aresetn,
		S_AXIS_TREADY	=> s_axis_rxs_tready,
		S_AXIS_TDATA	=> s_axis_rxs_tdata,
		S_AXIS_TSTRB	=> s_axis_rxs_tstrb,
		S_AXIS_TLAST	=> s_axis_rxs_tlast,
		S_AXIS_TVALID	=> s_axis_rxs_tvalid
	);

-- Instantiation of Axi Bus Interface m_axis_rxd
ACL_top_v1_0_m_axis_rxd_inst : ACL_top_v1_0_m_axis_rxd
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_m_axis_rxd_TDATA_WIDTH,
		C_M_START_COUNT	=> C_m_axis_rxd_START_COUNT
	)
	port map (
		M_AXIS_ACLK	=> m_axis_rxd_aclk,
		M_AXIS_ARESETN	=> m_axis_rxd_aresetn,
		M_AXIS_TVALID	=> m_axis_rxd_tvalid,
		M_AXIS_TDATA	=> m_axis_rxd_tdata,
		M_AXIS_TSTRB	=> m_axis_rxd_tstrb,
		M_AXIS_TLAST	=> m_axis_rxd_tlast,
		M_AXIS_TREADY	=> m_axis_rxd_tready
	);

-- Instantiation of Axi Bus Interface m_axis_rxs
ACL_top_v1_0_m_axis_rxs_inst : ACL_top_v1_0_m_axis_rxs
	generic map (
		C_M_AXIS_TDATA_WIDTH	=> C_m_axis_rxs_TDATA_WIDTH,
		C_M_START_COUNT	=> C_m_axis_rxs_START_COUNT
	)
	port map (
		M_AXIS_ACLK	=> m_axis_rxs_aclk,
		M_AXIS_ARESETN	=> m_axis_rxs_aresetn,
		M_AXIS_TVALID	=> m_axis_rxs_tvalid,
		M_AXIS_TDATA	=> m_axis_rxs_tdata,
		M_AXIS_TSTRB	=> m_axis_rxs_tstrb,
		M_AXIS_TLAST	=> m_axis_rxs_tlast,
		M_AXIS_TREADY	=> m_axis_rxs_tready
	);

	-- Instatiation of packet parser. Receives data from ACL_top_v1_0_0
	packet_parser_inst: entity work.packet_parser
	 generic map(
		C_s_axis_rxd_TDATA_WIDTH => C_s_axis_rxd_TDATA_WIDTH
	)
	 port map(
		clk => s_axis_rxd_aclk, --all signals come from ACL_top_v1_0_s_axis_rxd_inst : ACL_top_v1_0_s_axis_rxd
		rst => s_axis_rxd_aresetn,
		i_rxd_tvalid => s_axis_rxd_tvalid, -- goes to FIFO wr_en ultimately
		i_rxd_tdata => s_axis_rxd_tdata,
		i_rx_tlast => s_axis_rxd_tlast, -- goes to pack_parser --> fifo. Controls wr_cnt.
		o_rx_ready => s_axis_rxd_tready
	);
	
	-- User logic ends

end arch_imp;
