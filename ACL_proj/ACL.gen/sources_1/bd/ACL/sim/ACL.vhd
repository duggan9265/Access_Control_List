--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Wed Apr 16 16:26:08 2025
--Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
--Command     : generate_target ACL.bd
--Design      : ACL
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_clk_led_imp_1RJE16F is
  port (
    CLK : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end axi_clk_led_imp_1RJE16F;

architecture STRUCTURE of axi_clk_led_imp_1RJE16F is
  component ACL_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ACL_xlslice_0_0;
  component ACL_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ACL_c_counter_binary_0_0;
  signal CLK_1 : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK_1 <= CLK;
  Dout(0) <= xlslice_0_Dout(0);
c_counter_binary_0: component ACL_c_counter_binary_0_0
     port map (
      CLK => CLK_1,
      Q(31 downto 0) => c_counter_binary_0_Q(31 downto 0)
    );
xlslice_0: component ACL_xlslice_0_0
     port map (
      Din(31 downto 0) => c_counter_binary_0_Q(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_141RNAV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_141RNAV;

architecture STRUCTURE of m00_couplers_imp_141RNAV is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_5O5PST is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_5O5PST;

architecture STRUCTURE of m00_couplers_imp_5O5PST is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_ARLOCK : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_m00_couplers_AWLOCK : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_couplers_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_m00_couplers_RLAST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_couplers_to_m00_couplers_WLAST : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC;
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m00_couplers_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m00_couplers_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(1 downto 0) <= m00_couplers_to_m00_couplers_ARID(1 downto 0);
  M_AXI_arlen(7 downto 0) <= m00_couplers_to_m00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m00_couplers_to_m00_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= m00_couplers_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= m00_couplers_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m00_couplers_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m00_couplers_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m00_couplers_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(1 downto 0) <= m00_couplers_to_m00_couplers_AWID(1 downto 0);
  M_AXI_awlen(7 downto 0) <= m00_couplers_to_m00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m00_couplers_to_m00_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= m00_couplers_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= m00_couplers_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m00_couplers_to_m00_couplers_AWVALID;
  M_AXI_bready <= m00_couplers_to_m00_couplers_BREADY;
  M_AXI_rready <= m00_couplers_to_m00_couplers_RREADY;
  M_AXI_wdata(127 downto 0) <= m00_couplers_to_m00_couplers_WDATA(127 downto 0);
  M_AXI_wlast <= m00_couplers_to_m00_couplers_WLAST;
  M_AXI_wstrb(15 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(15 downto 0);
  M_AXI_wvalid <= m00_couplers_to_m00_couplers_WVALID;
  S_AXI_arready <= m00_couplers_to_m00_couplers_ARREADY;
  S_AXI_awready <= m00_couplers_to_m00_couplers_AWREADY;
  S_AXI_bid(5 downto 0) <= m00_couplers_to_m00_couplers_BID(5 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_m00_couplers_BVALID;
  S_AXI_rdata(127 downto 0) <= m00_couplers_to_m00_couplers_RDATA(127 downto 0);
  S_AXI_rid(5 downto 0) <= m00_couplers_to_m00_couplers_RID(5 downto 0);
  S_AXI_rlast <= m00_couplers_to_m00_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_m00_couplers_RVALID;
  S_AXI_wready <= m00_couplers_to_m00_couplers_WREADY;
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_m00_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_m00_couplers_ARID(1 downto 0) <= S_AXI_arid(1 downto 0);
  m00_couplers_to_m00_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_m00_couplers_ARLOCK <= S_AXI_arlock;
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_m00_couplers_ARREADY <= M_AXI_arready;
  m00_couplers_to_m00_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_m00_couplers_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_m00_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_m00_couplers_AWID(1 downto 0) <= S_AXI_awid(1 downto 0);
  m00_couplers_to_m00_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_m00_couplers_AWLOCK <= S_AXI_awlock;
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_m00_couplers_AWREADY <= M_AXI_awready;
  m00_couplers_to_m00_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_m00_couplers_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  m00_couplers_to_m00_couplers_BREADY <= S_AXI_bready;
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID <= M_AXI_bvalid;
  m00_couplers_to_m00_couplers_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  m00_couplers_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  m00_couplers_to_m00_couplers_RLAST <= M_AXI_rlast;
  m00_couplers_to_m00_couplers_RREADY <= S_AXI_rready;
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID <= M_AXI_rvalid;
  m00_couplers_to_m00_couplers_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  m00_couplers_to_m00_couplers_WLAST <= S_AXI_wlast;
  m00_couplers_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_m00_couplers_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  m00_couplers_to_m00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_LKMQ7M is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_LKMQ7M;

architecture STRUCTURE of m01_couplers_imp_LKMQ7M is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1ULP3I4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m02_couplers_imp_1ULP3I4;

architecture STRUCTURE of m02_couplers_imp_1ULP3I4 is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid(0) <= m02_couplers_to_m02_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid(0) <= m02_couplers_to_m02_couplers_AWVALID(0);
  M_AXI_bready(0) <= m02_couplers_to_m02_couplers_BREADY(0);
  M_AXI_rready(0) <= m02_couplers_to_m02_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m02_couplers_to_m02_couplers_WVALID(0);
  S_AXI_arready(0) <= m02_couplers_to_m02_couplers_ARREADY(0);
  S_AXI_awready(0) <= m02_couplers_to_m02_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m02_couplers_to_m02_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m02_couplers_to_m02_couplers_RVALID(0);
  S_AXI_wready(0) <= m02_couplers_to_m02_couplers_WREADY(0);
  m02_couplers_to_m02_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m02_couplers_to_m02_couplers_ARREADY(0) <= M_AXI_arready(0);
  m02_couplers_to_m02_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m02_couplers_to_m02_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m02_couplers_to_m02_couplers_AWREADY(0) <= M_AXI_awready(0);
  m02_couplers_to_m02_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m02_couplers_to_m02_couplers_BREADY(0) <= S_AXI_bready(0);
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RREADY(0) <= S_AXI_rready(0);
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WREADY(0) <= M_AXI_wready(0);
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mgt_tx_clk_led_imp_L4JKJ9 is
  port (
    CLK : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end mgt_tx_clk_led_imp_L4JKJ9;

architecture STRUCTURE of mgt_tx_clk_led_imp_L4JKJ9 is
  component ACL_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ACL_xlslice_0_1;
  component ACL_c_counter_binary_0_1 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ACL_c_counter_binary_0_1;
  signal CLK_1 : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK_1 <= CLK;
  Dout(0) <= xlslice_0_Dout(0);
c_counter_binary_0: component ACL_c_counter_binary_0_1
     port map (
      CLK => CLK_1,
      Q(31 downto 0) => c_counter_binary_0_Q(31 downto 0)
    );
xlslice_0: component ACL_xlslice_0_1
     port map (
      Din(31 downto 0) => c_counter_binary_0_Q(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rx_clk_led_imp_SMH1UL is
  port (
    CLK : in STD_LOGIC;
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end rx_clk_led_imp_SMH1UL;

architecture STRUCTURE of rx_clk_led_imp_SMH1UL is
  component ACL_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ACL_xlslice_0_2;
  component ACL_c_counter_binary_0_2 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component ACL_c_counter_binary_0_2;
  signal CLK_1 : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  CLK_1 <= CLK;
  Dout(0) <= xlslice_0_Dout(0);
c_counter_binary_0: component ACL_c_counter_binary_0_2
     port map (
      CLK => CLK_1,
      Q(31 downto 0) => c_counter_binary_0_Q(31 downto 0)
    );
xlslice_0: component ACL_xlslice_0_2
     port map (
      Din(31 downto 0) => c_counter_binary_0_Q(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1GJOPNR is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1GJOPNR;

architecture STRUCTURE of s00_couplers_imp_1GJOPNR is
  component ACL_auto_us_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ACL_auto_us_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_us_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_us_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_us_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_us_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_us_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_us_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_us_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_us_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_us_to_s00_couplers_RREADY;
  M_AXI_wdata(127 downto 0) <= auto_us_to_s00_couplers_WDATA(127 downto 0);
  M_AXI_wlast <= auto_us_to_s00_couplers_WLAST;
  M_AXI_wstrb(15 downto 0) <= auto_us_to_s00_couplers_WSTRB(15 downto 0);
  M_AXI_wvalid <= auto_us_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_us_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_us_AWREADY;
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_us_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_us_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_us_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_us_WREADY;
  auto_us_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s00_couplers_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  auto_us_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_us_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_us_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_us_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_us_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_us_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_us_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_us_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_us_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_us_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_us_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_us_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_us_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_us_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_us_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_us_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_us_WVALID <= S_AXI_wvalid;
auto_us: component ACL_auto_us_0
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_us_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s00_couplers_AWVALID,
      m_axi_bready => auto_us_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s00_couplers_BVALID,
      m_axi_rdata(127 downto 0) => auto_us_to_s00_couplers_RDATA(127 downto 0),
      m_axi_rlast => auto_us_to_s00_couplers_RLAST,
      m_axi_rready => auto_us_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s00_couplers_RVALID,
      m_axi_wdata(127 downto 0) => auto_us_to_s00_couplers_WDATA(127 downto 0),
      m_axi_wlast => auto_us_to_s00_couplers_WLAST,
      m_axi_wready => auto_us_to_s00_couplers_WREADY,
      m_axi_wstrb(15 downto 0) => auto_us_to_s00_couplers_WSTRB(15 downto 0),
      m_axi_wvalid => auto_us_to_s00_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => s00_couplers_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_us_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => s00_couplers_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_us_AWVALID,
      s_axi_bready => s00_couplers_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_us_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => s00_couplers_to_auto_us_RLAST,
      s_axi_rready => s00_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_us_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => s00_couplers_to_auto_us_WLAST,
      s_axi_wready => s00_couplers_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_FW55SD is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_FW55SD;

architecture STRUCTURE of s00_couplers_imp_FW55SD is
  component ACL_auto_ds_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ACL_auto_ds_0;
  component ACL_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ACL_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_ds_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_ds_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= auto_pc_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_pc_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(15 downto 0) <= s00_couplers_to_auto_ds_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(127 downto 0) <= s00_couplers_to_auto_ds_RDATA(127 downto 0);
  S_AXI_rid(15 downto 0) <= s00_couplers_to_auto_ds_RID(15 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_ds_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_ds_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_ds_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  s00_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_ds_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_ds_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_ds_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  s00_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_ds_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_ds_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  s00_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_ds_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  s00_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component ACL_auto_ds_0
     port map (
      m_axi_araddr(39 downto 0) => auto_ds_to_auto_pc_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_ds_to_auto_pc_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_ds_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(15 downto 0) => s00_couplers_to_auto_ds_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_ds_ARLOCK,
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_ds_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s00_couplers_to_auto_ds_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_ds_AWLOCK,
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_ds_AWVALID,
      s_axi_bid(15 downto 0) => s00_couplers_to_auto_ds_BID(15 downto 0),
      s_axi_bready => s00_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_ds_BVALID,
      s_axi_rdata(127 downto 0) => s00_couplers_to_auto_ds_RDATA(127 downto 0),
      s_axi_rid(15 downto 0) => s00_couplers_to_auto_ds_RID(15 downto 0),
      s_axi_rlast => s00_couplers_to_auto_ds_RLAST,
      s_axi_rready => s00_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_ds_RVALID,
      s_axi_wdata(127 downto 0) => s00_couplers_to_auto_ds_WDATA(127 downto 0),
      s_axi_wlast => s00_couplers_to_auto_ds_WLAST,
      s_axi_wready => s00_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(15 downto 0) => s00_couplers_to_auto_ds_WSTRB(15 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_ds_WVALID
    );
auto_pc: component ACL_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_pc_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_pc_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(39 downto 0) => auto_ds_to_auto_pc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(39 downto 0) => auto_ds_to_auto_pc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1RHLYX4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_1RHLYX4;

architecture STRUCTURE of s01_couplers_imp_1RHLYX4 is
  component ACL_auto_ds_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ACL_auto_ds_1;
  component ACL_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ACL_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s01_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s01_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s01_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s01_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s01_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s01_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s01_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s01_couplers_WVALID : STD_LOGIC;
  signal s01_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s01_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s01_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_auto_ds_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal s01_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal s01_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s01_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s01_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_auto_ds_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal s01_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal s01_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s01_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal s01_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal s01_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s01_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s01_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal s01_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal s01_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal s01_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s01_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal s01_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal s01_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s01_couplers_to_auto_ds_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= auto_pc_to_s01_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s01_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_pc_to_s01_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s01_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s01_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s01_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= s01_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(15 downto 0) <= s01_couplers_to_auto_ds_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= s01_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= s01_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(127 downto 0) <= s01_couplers_to_auto_ds_RDATA(127 downto 0);
  S_AXI_rid(15 downto 0) <= s01_couplers_to_auto_ds_RID(15 downto 0);
  S_AXI_rlast <= s01_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= s01_couplers_to_auto_ds_WREADY;
  auto_pc_to_s01_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s01_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s01_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s01_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_auto_ds_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s01_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_auto_ds_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  s01_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_auto_ds_ARLOCK <= S_AXI_arlock;
  s01_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_auto_ds_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s01_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s01_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s01_couplers_to_auto_ds_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  s01_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s01_couplers_to_auto_ds_AWLOCK <= S_AXI_awlock;
  s01_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s01_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s01_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s01_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  s01_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  s01_couplers_to_auto_ds_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  s01_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  s01_couplers_to_auto_ds_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  s01_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component ACL_auto_ds_1
     port map (
      m_axi_araddr(39 downto 0) => auto_ds_to_auto_pc_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_ds_to_auto_pc_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(39 downto 0) => s01_couplers_to_auto_ds_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(15 downto 0) => s01_couplers_to_auto_ds_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s01_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => s01_couplers_to_auto_ds_ARLOCK,
      s_axi_arprot(2 downto 0) => s01_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => s01_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s01_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(39 downto 0) => s01_couplers_to_auto_ds_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s01_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s01_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s01_couplers_to_auto_ds_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s01_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => s01_couplers_to_auto_ds_AWLOCK,
      s_axi_awprot(2 downto 0) => s01_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s01_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => s01_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s01_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => s01_couplers_to_auto_ds_AWVALID,
      s_axi_bid(15 downto 0) => s01_couplers_to_auto_ds_BID(15 downto 0),
      s_axi_bready => s01_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => s01_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => s01_couplers_to_auto_ds_BVALID,
      s_axi_rdata(127 downto 0) => s01_couplers_to_auto_ds_RDATA(127 downto 0),
      s_axi_rid(15 downto 0) => s01_couplers_to_auto_ds_RID(15 downto 0),
      s_axi_rlast => s01_couplers_to_auto_ds_RLAST,
      s_axi_rready => s01_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_auto_ds_RVALID,
      s_axi_wdata(127 downto 0) => s01_couplers_to_auto_ds_WDATA(127 downto 0),
      s_axi_wlast => s01_couplers_to_auto_ds_WLAST,
      s_axi_wready => s01_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(15 downto 0) => s01_couplers_to_auto_ds_WSTRB(15 downto 0),
      s_axi_wvalid => s01_couplers_to_auto_ds_WVALID
    );
auto_pc: component ACL_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_pc_to_s01_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s01_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s01_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_pc_to_s01_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s01_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s01_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s01_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s01_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s01_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s01_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s01_couplers_WVALID,
      s_axi_araddr(39 downto 0) => auto_ds_to_auto_pc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(39 downto 0) => auto_ds_to_auto_pc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_QWJZOI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s01_couplers_imp_QWJZOI;

architecture STRUCTURE of s01_couplers_imp_QWJZOI is
  component ACL_auto_us_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ACL_auto_us_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s01_couplers_ARREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s01_couplers_ARVALID : STD_LOGIC;
  signal auto_us_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_us_to_s01_couplers_RLAST : STD_LOGIC;
  signal auto_us_to_s01_couplers_RREADY : STD_LOGIC;
  signal auto_us_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_auto_us_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_us_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_us_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_us_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_auto_us_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_auto_us_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_us_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_auto_us_ARREADY : STD_LOGIC;
  signal s01_couplers_to_auto_us_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_auto_us_ARVALID : STD_LOGIC;
  signal s01_couplers_to_auto_us_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_auto_us_RLAST : STD_LOGIC;
  signal s01_couplers_to_auto_us_RREADY : STD_LOGIC;
  signal s01_couplers_to_auto_us_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_auto_us_RVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_us_to_s01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_us_to_s01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_us_to_s01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_us_to_s01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_us_to_s01_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_us_to_s01_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_us_to_s01_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_us_to_s01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_us_to_s01_couplers_ARVALID;
  M_AXI_rready <= auto_us_to_s01_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s01_couplers_to_auto_us_ARREADY;
  S_AXI_rdata(31 downto 0) <= s01_couplers_to_auto_us_RDATA(31 downto 0);
  S_AXI_rlast <= s01_couplers_to_auto_us_RLAST;
  S_AXI_rresp(1 downto 0) <= s01_couplers_to_auto_us_RRESP(1 downto 0);
  S_AXI_rvalid <= s01_couplers_to_auto_us_RVALID;
  auto_us_to_s01_couplers_ARREADY <= M_AXI_arready;
  auto_us_to_s01_couplers_RDATA(127 downto 0) <= M_AXI_rdata(127 downto 0);
  auto_us_to_s01_couplers_RLAST <= M_AXI_rlast;
  auto_us_to_s01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_us_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_auto_us_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s01_couplers_to_auto_us_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s01_couplers_to_auto_us_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s01_couplers_to_auto_us_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s01_couplers_to_auto_us_ARLOCK(0) <= S_AXI_arlock(0);
  s01_couplers_to_auto_us_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s01_couplers_to_auto_us_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s01_couplers_to_auto_us_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s01_couplers_to_auto_us_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_auto_us_RREADY <= S_AXI_rready;
auto_us: component ACL_auto_us_1
     port map (
      m_axi_araddr(31 downto 0) => auto_us_to_s01_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_us_to_s01_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_us_to_s01_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_us_to_s01_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_us_to_s01_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_us_to_s01_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_us_to_s01_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_us_to_s01_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_us_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_us_to_s01_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_us_to_s01_couplers_ARVALID,
      m_axi_rdata(127 downto 0) => auto_us_to_s01_couplers_RDATA(127 downto 0),
      m_axi_rlast => auto_us_to_s01_couplers_RLAST,
      m_axi_rready => auto_us_to_s01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_us_to_s01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_us_to_s01_couplers_RVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(31 downto 0) => s01_couplers_to_auto_us_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s01_couplers_to_auto_us_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s01_couplers_to_auto_us_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arlen(7 downto 0) => s01_couplers_to_auto_us_ARLEN(7 downto 0),
      s_axi_arlock(0) => s01_couplers_to_auto_us_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s01_couplers_to_auto_us_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s01_couplers_to_auto_us_ARQOS(3 downto 0),
      s_axi_arready => s01_couplers_to_auto_us_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s01_couplers_to_auto_us_ARSIZE(2 downto 0),
      s_axi_arvalid => s01_couplers_to_auto_us_ARVALID,
      s_axi_rdata(31 downto 0) => s01_couplers_to_auto_us_RDATA(31 downto 0),
      s_axi_rlast => s01_couplers_to_auto_us_RLAST,
      s_axi_rready => s01_couplers_to_auto_us_RREADY,
      s_axi_rresp(1 downto 0) => s01_couplers_to_auto_us_RRESP(1 downto 0),
      s_axi_rvalid => s01_couplers_to_auto_us_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_1PDWKA4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_1PDWKA4;

architecture STRUCTURE of s02_couplers_imp_1PDWKA4 is
  component ACL_auto_us_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component ACL_auto_us_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_us_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_us_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_us_to_s02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_us_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_us_to_s02_couplers_AWREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_us_to_s02_couplers_AWVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_BREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_us_to_s02_couplers_BVALID : STD_LOGIC;
  signal auto_us_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal auto_us_to_s02_couplers_WLAST : STD_LOGIC;
  signal auto_us_to_s02_couplers_WREADY : STD_LOGIC;
  signal auto_us_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal auto_us_to_s02_couplers_WVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_auto_us_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_auto_us_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_AWREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_us_AWVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_BREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_us_BVALID : STD_LOGIC;
  signal s02_couplers_to_auto_us_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_us_WLAST : STD_LOGIC;
  signal s02_couplers_to_auto_us_WREADY : STD_LOGIC;
  signal s02_couplers_to_auto_us_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_us_WVALID : STD_LOGIC;
  signal NLW_auto_us_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_awaddr(31 downto 0) <= auto_us_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_us_to_s02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_us_to_s02_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_us_to_s02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_us_to_s02_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_us_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_us_to_s02_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_us_to_s02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_us_to_s02_couplers_AWVALID;
  M_AXI_bready <= auto_us_to_s02_couplers_BREADY;
  M_AXI_wdata(127 downto 0) <= auto_us_to_s02_couplers_WDATA(127 downto 0);
  M_AXI_wlast <= auto_us_to_s02_couplers_WLAST;
  M_AXI_wstrb(15 downto 0) <= auto_us_to_s02_couplers_WSTRB(15 downto 0);
  M_AXI_wvalid <= auto_us_to_s02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_awready <= s02_couplers_to_auto_us_AWREADY;
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_auto_us_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_auto_us_BVALID;
  S_AXI_wready <= s02_couplers_to_auto_us_WREADY;
  auto_us_to_s02_couplers_AWREADY <= M_AXI_awready;
  auto_us_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_us_to_s02_couplers_BVALID <= M_AXI_bvalid;
  auto_us_to_s02_couplers_WREADY <= M_AXI_wready;
  s02_couplers_to_auto_us_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_auto_us_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s02_couplers_to_auto_us_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s02_couplers_to_auto_us_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s02_couplers_to_auto_us_AWLOCK(0) <= S_AXI_awlock(0);
  s02_couplers_to_auto_us_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_auto_us_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s02_couplers_to_auto_us_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s02_couplers_to_auto_us_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_auto_us_BREADY <= S_AXI_bready;
  s02_couplers_to_auto_us_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_auto_us_WLAST <= S_AXI_wlast;
  s02_couplers_to_auto_us_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_auto_us_WVALID <= S_AXI_wvalid;
auto_us: component ACL_auto_us_2
     port map (
      m_axi_awaddr(31 downto 0) => auto_us_to_s02_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_us_to_s02_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_us_to_s02_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_us_to_s02_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_us_to_s02_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_us_to_s02_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_us_to_s02_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_us_to_s02_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_us_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_us_to_s02_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_us_to_s02_couplers_AWVALID,
      m_axi_bready => auto_us_to_s02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_us_to_s02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_us_to_s02_couplers_BVALID,
      m_axi_wdata(127 downto 0) => auto_us_to_s02_couplers_WDATA(127 downto 0),
      m_axi_wlast => auto_us_to_s02_couplers_WLAST,
      m_axi_wready => auto_us_to_s02_couplers_WREADY,
      m_axi_wstrb(15 downto 0) => auto_us_to_s02_couplers_WSTRB(15 downto 0),
      m_axi_wvalid => auto_us_to_s02_couplers_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_aresetn => S_ARESETN_1,
      s_axi_awaddr(31 downto 0) => s02_couplers_to_auto_us_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s02_couplers_to_auto_us_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s02_couplers_to_auto_us_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => s02_couplers_to_auto_us_AWLEN(7 downto 0),
      s_axi_awlock(0) => s02_couplers_to_auto_us_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s02_couplers_to_auto_us_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s02_couplers_to_auto_us_AWQOS(3 downto 0),
      s_axi_awready => s02_couplers_to_auto_us_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s02_couplers_to_auto_us_AWSIZE(2 downto 0),
      s_axi_awvalid => s02_couplers_to_auto_us_AWVALID,
      s_axi_bready => s02_couplers_to_auto_us_BREADY,
      s_axi_bresp(1 downto 0) => s02_couplers_to_auto_us_BRESP(1 downto 0),
      s_axi_bvalid => s02_couplers_to_auto_us_BVALID,
      s_axi_wdata(31 downto 0) => s02_couplers_to_auto_us_WDATA(31 downto 0),
      s_axi_wlast => s02_couplers_to_auto_us_WLAST,
      s_axi_wready => s02_couplers_to_auto_us_WREADY,
      s_axi_wstrb(3 downto 0) => s02_couplers_to_auto_us_WSTRB(3 downto 0),
      s_axi_wvalid => s02_couplers_to_auto_us_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_axi_pl_ps_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC;
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC;
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC
  );
end ACL_axi_pl_ps_0;

architecture STRUCTURE of ACL_axi_pl_ps_0 is
  component ACL_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 383 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 95 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 383 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ACL_xbar_0;
  component ACL_s01_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component ACL_s01_mmu_0;
  component ACL_s02_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC
  );
  end component ACL_s02_mmu_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal S01_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S01_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARREADY : STD_LOGIC;
  signal S01_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARVALID : STD_LOGIC;
  signal S01_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_RLAST : STD_LOGIC;
  signal S01_AXI_1_RREADY : STD_LOGIC;
  signal S01_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_RVALID : STD_LOGIC;
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC;
  signal S02_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S02_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S02_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_AWREADY : STD_LOGIC;
  signal S02_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_AWVALID : STD_LOGIC;
  signal S02_AXI_1_BREADY : STD_LOGIC;
  signal S02_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_BVALID : STD_LOGIC;
  signal S02_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_WLAST : STD_LOGIC;
  signal S02_AXI_1_WREADY : STD_LOGIC;
  signal S02_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S02_AXI_1_WVALID : STD_LOGIC;
  signal axi_pl_ps_ACLK_net : STD_LOGIC;
  signal axi_pl_ps_ARESETN_net : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_pl_ps_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pl_ps_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_pl_ps_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pl_ps_to_s00_couplers_ARREADY : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pl_ps_to_s00_couplers_ARVALID : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_pl_ps_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pl_ps_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_pl_ps_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pl_ps_to_s00_couplers_AWREADY : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pl_ps_to_s00_couplers_AWVALID : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_BREADY : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_to_s00_couplers_BVALID : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_pl_ps_to_s00_couplers_RLAST : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_RREADY : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_to_s00_couplers_RVALID : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_pl_ps_to_s00_couplers_WLAST : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_WREADY : STD_LOGIC;
  signal axi_pl_ps_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pl_ps_to_s00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_pl_ps_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_pl_ps_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_pl_ps_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_pl_ps_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_pl_ps_ARLOCK : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_pl_ps_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_pl_ps_ARREADY : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_pl_ps_ARVALID : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_axi_pl_ps_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_pl_ps_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_pl_ps_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_pl_ps_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_axi_pl_ps_AWLOCK : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_pl_ps_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_axi_pl_ps_AWREADY : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_axi_pl_ps_AWVALID : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_pl_ps_BREADY : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_pl_ps_BVALID : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_couplers_to_axi_pl_ps_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_axi_pl_ps_RLAST : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_RREADY : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_axi_pl_ps_RVALID : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal m00_couplers_to_axi_pl_ps_WLAST : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_WREADY : STD_LOGIC;
  signal m00_couplers_to_axi_pl_ps_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m00_couplers_to_axi_pl_ps_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 255 downto 128 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_mmu_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_mmu_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_mmu_M_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_mmu_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_mmu_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_mmu_M_AXI_ARREADY : STD_LOGIC;
  signal s01_mmu_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_mmu_M_AXI_ARVALID : STD_LOGIC;
  signal s01_mmu_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_mmu_M_AXI_RLAST : STD_LOGIC;
  signal s01_mmu_M_AXI_RREADY : STD_LOGIC;
  signal s01_mmu_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_mmu_M_AXI_RVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_mmu_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_mmu_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_mmu_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_mmu_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_mmu_M_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_mmu_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_mmu_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_mmu_M_AXI_AWREADY : STD_LOGIC;
  signal s02_mmu_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_mmu_M_AXI_AWVALID : STD_LOGIC;
  signal s02_mmu_M_AXI_BREADY : STD_LOGIC;
  signal s02_mmu_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_mmu_M_AXI_BVALID : STD_LOGIC;
  signal s02_mmu_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_mmu_M_AXI_WLAST : STD_LOGIC;
  signal s02_mmu_M_AXI_WREADY : STD_LOGIC;
  signal s02_mmu_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_mmu_M_AXI_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_xbar_s_axi_arready_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 383 downto 256 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_xbar_s_axi_rlast_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal NLW_xbar_s_axi_rvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_axi_pl_ps_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_axi_pl_ps_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_axi_pl_ps_ARCACHE(3 downto 0);
  M00_AXI_arid(1 downto 0) <= m00_couplers_to_axi_pl_ps_ARID(1 downto 0);
  M00_AXI_arlen(7 downto 0) <= m00_couplers_to_axi_pl_ps_ARLEN(7 downto 0);
  M00_AXI_arlock <= m00_couplers_to_axi_pl_ps_ARLOCK;
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_axi_pl_ps_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_axi_pl_ps_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_axi_pl_ps_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_axi_pl_ps_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_axi_pl_ps_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_axi_pl_ps_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_axi_pl_ps_AWCACHE(3 downto 0);
  M00_AXI_awid(1 downto 0) <= m00_couplers_to_axi_pl_ps_AWID(1 downto 0);
  M00_AXI_awlen(7 downto 0) <= m00_couplers_to_axi_pl_ps_AWLEN(7 downto 0);
  M00_AXI_awlock <= m00_couplers_to_axi_pl_ps_AWLOCK;
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_axi_pl_ps_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_axi_pl_ps_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_axi_pl_ps_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_axi_pl_ps_AWVALID;
  M00_AXI_bready <= m00_couplers_to_axi_pl_ps_BREADY;
  M00_AXI_rready <= m00_couplers_to_axi_pl_ps_RREADY;
  M00_AXI_wdata(127 downto 0) <= m00_couplers_to_axi_pl_ps_WDATA(127 downto 0);
  M00_AXI_wlast <= m00_couplers_to_axi_pl_ps_WLAST;
  M00_AXI_wstrb(15 downto 0) <= m00_couplers_to_axi_pl_ps_WSTRB(15 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_axi_pl_ps_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= axi_pl_ps_to_s00_couplers_ARREADY;
  S00_AXI_awready <= axi_pl_ps_to_s00_couplers_AWREADY;
  S00_AXI_bresp(1 downto 0) <= axi_pl_ps_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= axi_pl_ps_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= axi_pl_ps_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rlast <= axi_pl_ps_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= axi_pl_ps_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= axi_pl_ps_to_s00_couplers_RVALID;
  S00_AXI_wready <= axi_pl_ps_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_1_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  S01_AXI_1_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  S01_AXI_1_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  S01_AXI_1_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  S01_AXI_1_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  S01_AXI_1_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  S01_AXI_1_ARVALID <= S01_AXI_arvalid;
  S01_AXI_1_RREADY <= S01_AXI_rready;
  S01_AXI_arready <= S01_AXI_1_ARREADY;
  S01_AXI_rdata(31 downto 0) <= S01_AXI_1_RDATA(31 downto 0);
  S01_AXI_rlast <= S01_AXI_1_RLAST;
  S01_AXI_rresp(1 downto 0) <= S01_AXI_1_RRESP(1 downto 0);
  S01_AXI_rvalid <= S01_AXI_1_RVALID;
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1 <= S02_ARESETN;
  S02_AXI_1_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  S02_AXI_1_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  S02_AXI_1_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  S02_AXI_1_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  S02_AXI_1_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  S02_AXI_1_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  S02_AXI_1_AWVALID <= S02_AXI_awvalid;
  S02_AXI_1_BREADY <= S02_AXI_bready;
  S02_AXI_1_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  S02_AXI_1_WLAST <= S02_AXI_wlast;
  S02_AXI_1_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  S02_AXI_1_WVALID <= S02_AXI_wvalid;
  S02_AXI_awready <= S02_AXI_1_AWREADY;
  S02_AXI_bresp(1 downto 0) <= S02_AXI_1_BRESP(1 downto 0);
  S02_AXI_bvalid <= S02_AXI_1_BVALID;
  S02_AXI_wready <= S02_AXI_1_WREADY;
  axi_pl_ps_ACLK_net <= ACLK;
  axi_pl_ps_ARESETN_net <= ARESETN;
  axi_pl_ps_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  axi_pl_ps_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  axi_pl_ps_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  axi_pl_ps_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  axi_pl_ps_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  axi_pl_ps_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  axi_pl_ps_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  axi_pl_ps_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  axi_pl_ps_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  axi_pl_ps_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  axi_pl_ps_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  axi_pl_ps_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  axi_pl_ps_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  axi_pl_ps_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  axi_pl_ps_to_s00_couplers_BREADY <= S00_AXI_bready;
  axi_pl_ps_to_s00_couplers_RREADY <= S00_AXI_rready;
  axi_pl_ps_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  axi_pl_ps_to_s00_couplers_WLAST <= S00_AXI_wlast;
  axi_pl_ps_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  axi_pl_ps_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  m00_couplers_to_axi_pl_ps_ARREADY <= M00_AXI_arready;
  m00_couplers_to_axi_pl_ps_AWREADY <= M00_AXI_awready;
  m00_couplers_to_axi_pl_ps_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_axi_pl_ps_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_axi_pl_ps_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_axi_pl_ps_RDATA(127 downto 0) <= M00_AXI_rdata(127 downto 0);
  m00_couplers_to_axi_pl_ps_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_axi_pl_ps_RLAST <= M00_AXI_rlast;
  m00_couplers_to_axi_pl_ps_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_axi_pl_ps_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_axi_pl_ps_WREADY <= M00_AXI_wready;
m00_couplers: entity work.m00_couplers_imp_5O5PST
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_axi_pl_ps_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_axi_pl_ps_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_axi_pl_ps_ARCACHE(3 downto 0),
      M_AXI_arid(1 downto 0) => m00_couplers_to_axi_pl_ps_ARID(1 downto 0),
      M_AXI_arlen(7 downto 0) => m00_couplers_to_axi_pl_ps_ARLEN(7 downto 0),
      M_AXI_arlock => m00_couplers_to_axi_pl_ps_ARLOCK,
      M_AXI_arprot(2 downto 0) => m00_couplers_to_axi_pl_ps_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_axi_pl_ps_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_axi_pl_ps_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_axi_pl_ps_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_axi_pl_ps_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_axi_pl_ps_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_axi_pl_ps_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_axi_pl_ps_AWCACHE(3 downto 0),
      M_AXI_awid(1 downto 0) => m00_couplers_to_axi_pl_ps_AWID(1 downto 0),
      M_AXI_awlen(7 downto 0) => m00_couplers_to_axi_pl_ps_AWLEN(7 downto 0),
      M_AXI_awlock => m00_couplers_to_axi_pl_ps_AWLOCK,
      M_AXI_awprot(2 downto 0) => m00_couplers_to_axi_pl_ps_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_axi_pl_ps_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_axi_pl_ps_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_axi_pl_ps_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_axi_pl_ps_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_axi_pl_ps_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_axi_pl_ps_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_axi_pl_ps_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_axi_pl_ps_BVALID,
      M_AXI_rdata(127 downto 0) => m00_couplers_to_axi_pl_ps_RDATA(127 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_axi_pl_ps_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_axi_pl_ps_RLAST,
      M_AXI_rready => m00_couplers_to_axi_pl_ps_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_axi_pl_ps_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_axi_pl_ps_RVALID,
      M_AXI_wdata(127 downto 0) => m00_couplers_to_axi_pl_ps_WDATA(127 downto 0),
      M_AXI_wlast => m00_couplers_to_axi_pl_ps_WLAST,
      M_AXI_wready => m00_couplers_to_axi_pl_ps_WREADY,
      M_AXI_wstrb(15 downto 0) => m00_couplers_to_axi_pl_ps_WSTRB(15 downto 0),
      M_AXI_wvalid => m00_couplers_to_axi_pl_ps_WVALID,
      S_ACLK => axi_pl_ps_ACLK_net,
      S_ARESETN => axi_pl_ps_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(5 downto 0) => xbar_to_m00_couplers_BID(5 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(127 downto 0) => xbar_to_m00_couplers_RDATA(127 downto 0),
      S_AXI_rid(5 downto 0) => xbar_to_m00_couplers_RID(5 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(127 downto 0) => xbar_to_m00_couplers_WDATA(127 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(15 downto 0) => xbar_to_m00_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
s00_couplers: entity work.s00_couplers_imp_1GJOPNR
     port map (
      M_ACLK => axi_pl_ps_ACLK_net,
      M_ARESETN => axi_pl_ps_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(127 downto 0) => s00_couplers_to_xbar_RDATA(127 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(127 downto 0) => s00_couplers_to_xbar_WDATA(127 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(15 downto 0) => s00_couplers_to_xbar_WSTRB(15 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => axi_pl_ps_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => axi_pl_ps_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => axi_pl_ps_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => axi_pl_ps_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arprot(2 downto 0) => axi_pl_ps_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arready => axi_pl_ps_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => axi_pl_ps_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => axi_pl_ps_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => axi_pl_ps_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => axi_pl_ps_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => axi_pl_ps_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => axi_pl_ps_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awprot(2 downto 0) => axi_pl_ps_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awready => axi_pl_ps_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => axi_pl_ps_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => axi_pl_ps_to_s00_couplers_AWVALID,
      S_AXI_bready => axi_pl_ps_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => axi_pl_ps_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => axi_pl_ps_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => axi_pl_ps_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => axi_pl_ps_to_s00_couplers_RLAST,
      S_AXI_rready => axi_pl_ps_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => axi_pl_ps_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => axi_pl_ps_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => axi_pl_ps_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => axi_pl_ps_to_s00_couplers_WLAST,
      S_AXI_wready => axi_pl_ps_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => axi_pl_ps_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => axi_pl_ps_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_QWJZOI
     port map (
      M_ACLK => axi_pl_ps_ACLK_net,
      M_ARESETN => axi_pl_ps_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s01_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize(2 downto 0) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_rdata(127 downto 0) => s01_couplers_to_xbar_RDATA(255 downto 128),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(31 downto 0) => s01_mmu_M_AXI_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => s01_mmu_M_AXI_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => s01_mmu_M_AXI_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => s01_mmu_M_AXI_ARLEN(7 downto 0),
      S_AXI_arlock(0) => s01_mmu_M_AXI_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => s01_mmu_M_AXI_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => s01_mmu_M_AXI_ARQOS(3 downto 0),
      S_AXI_arready => s01_mmu_M_AXI_ARREADY,
      S_AXI_arsize(2 downto 0) => s01_mmu_M_AXI_ARSIZE(2 downto 0),
      S_AXI_arvalid => s01_mmu_M_AXI_ARVALID,
      S_AXI_rdata(31 downto 0) => s01_mmu_M_AXI_RDATA(31 downto 0),
      S_AXI_rlast => s01_mmu_M_AXI_RLAST,
      S_AXI_rready => s01_mmu_M_AXI_RREADY,
      S_AXI_rresp(1 downto 0) => s01_mmu_M_AXI_RRESP(1 downto 0),
      S_AXI_rvalid => s01_mmu_M_AXI_RVALID
    );
s01_mmu: component ACL_s01_mmu_0
     port map (
      aclk => S01_ACLK_1,
      aresetn => S01_ARESETN_1,
      m_axi_araddr(31 downto 0) => s01_mmu_M_AXI_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => s01_mmu_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => s01_mmu_M_AXI_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => s01_mmu_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock(0) => s01_mmu_M_AXI_ARLOCK(0),
      m_axi_arprot(2 downto 0) => s01_mmu_M_AXI_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => s01_mmu_M_AXI_ARQOS(3 downto 0),
      m_axi_arready => s01_mmu_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => s01_mmu_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => s01_mmu_M_AXI_ARVALID,
      m_axi_rdata(31 downto 0) => s01_mmu_M_AXI_RDATA(31 downto 0),
      m_axi_rlast => s01_mmu_M_AXI_RLAST,
      m_axi_rready => s01_mmu_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => s01_mmu_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => s01_mmu_M_AXI_RVALID,
      s_axi_araddr(31 downto 0) => S01_AXI_1_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => S01_AXI_1_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => S01_AXI_1_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => S01_AXI_1_ARLEN(7 downto 0),
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => S01_AXI_1_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => S01_AXI_1_ARREADY,
      s_axi_arsize(2 downto 0) => S01_AXI_1_ARSIZE(2 downto 0),
      s_axi_arvalid => S01_AXI_1_ARVALID,
      s_axi_rdata(31 downto 0) => S01_AXI_1_RDATA(31 downto 0),
      s_axi_rlast => S01_AXI_1_RLAST,
      s_axi_rready => S01_AXI_1_RREADY,
      s_axi_rresp(1 downto 0) => S01_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S01_AXI_1_RVALID
    );
s02_couplers: entity work.s02_couplers_imp_1PDWKA4
     port map (
      M_ACLK => axi_pl_ps_ACLK_net,
      M_ARESETN => axi_pl_ps_ARESETN_net,
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s02_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_wdata(127 downto 0) => s02_couplers_to_xbar_WDATA(127 downto 0),
      M_AXI_wlast => s02_couplers_to_xbar_WLAST,
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(15 downto 0) => s02_couplers_to_xbar_WSTRB(15 downto 0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => S02_ACLK_1,
      S_ARESETN => S02_ARESETN_1,
      S_AXI_awaddr(31 downto 0) => s02_mmu_M_AXI_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => s02_mmu_M_AXI_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => s02_mmu_M_AXI_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => s02_mmu_M_AXI_AWLEN(7 downto 0),
      S_AXI_awlock(0) => s02_mmu_M_AXI_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => s02_mmu_M_AXI_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => s02_mmu_M_AXI_AWQOS(3 downto 0),
      S_AXI_awready => s02_mmu_M_AXI_AWREADY,
      S_AXI_awsize(2 downto 0) => s02_mmu_M_AXI_AWSIZE(2 downto 0),
      S_AXI_awvalid => s02_mmu_M_AXI_AWVALID,
      S_AXI_bready => s02_mmu_M_AXI_BREADY,
      S_AXI_bresp(1 downto 0) => s02_mmu_M_AXI_BRESP(1 downto 0),
      S_AXI_bvalid => s02_mmu_M_AXI_BVALID,
      S_AXI_wdata(31 downto 0) => s02_mmu_M_AXI_WDATA(31 downto 0),
      S_AXI_wlast => s02_mmu_M_AXI_WLAST,
      S_AXI_wready => s02_mmu_M_AXI_WREADY,
      S_AXI_wstrb(3 downto 0) => s02_mmu_M_AXI_WSTRB(3 downto 0),
      S_AXI_wvalid => s02_mmu_M_AXI_WVALID
    );
s02_mmu: component ACL_s02_mmu_0
     port map (
      aclk => S02_ACLK_1,
      aresetn => S02_ARESETN_1,
      m_axi_awaddr(31 downto 0) => s02_mmu_M_AXI_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => s02_mmu_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => s02_mmu_M_AXI_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => s02_mmu_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock(0) => s02_mmu_M_AXI_AWLOCK(0),
      m_axi_awprot(2 downto 0) => s02_mmu_M_AXI_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => s02_mmu_M_AXI_AWQOS(3 downto 0),
      m_axi_awready => s02_mmu_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => s02_mmu_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => s02_mmu_M_AXI_AWVALID,
      m_axi_bready => s02_mmu_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => s02_mmu_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => s02_mmu_M_AXI_BVALID,
      m_axi_wdata(31 downto 0) => s02_mmu_M_AXI_WDATA(31 downto 0),
      m_axi_wlast => s02_mmu_M_AXI_WLAST,
      m_axi_wready => s02_mmu_M_AXI_WREADY,
      m_axi_wstrb(3 downto 0) => s02_mmu_M_AXI_WSTRB(3 downto 0),
      m_axi_wvalid => s02_mmu_M_AXI_WVALID,
      s_axi_awaddr(31 downto 0) => S02_AXI_1_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => S02_AXI_1_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => S02_AXI_1_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => S02_AXI_1_AWLEN(7 downto 0),
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => S02_AXI_1_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => S02_AXI_1_AWREADY,
      s_axi_awsize(2 downto 0) => S02_AXI_1_AWSIZE(2 downto 0),
      s_axi_awvalid => S02_AXI_1_AWVALID,
      s_axi_bready => S02_AXI_1_BREADY,
      s_axi_bresp(1 downto 0) => S02_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S02_AXI_1_BVALID,
      s_axi_wdata(31 downto 0) => S02_AXI_1_WDATA(31 downto 0),
      s_axi_wlast => S02_AXI_1_WLAST,
      s_axi_wready => S02_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S02_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S02_AXI_1_WVALID
    );
xbar: component ACL_xbar_0
     port map (
      aclk => axi_pl_ps_ACLK_net,
      aresetn => axi_pl_ps_ARESETN_net,
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => xbar_to_m00_couplers_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_xbar_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => xbar_to_m00_couplers_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_xbar_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(1 downto 0) => xbar_to_m00_couplers_BID(1 downto 0),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(127 downto 0) => xbar_to_m00_couplers_RDATA(127 downto 0),
      m_axi_rid(1 downto 0) => xbar_to_m00_couplers_RID(1 downto 0),
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(127 downto 0) => xbar_to_m00_couplers_WDATA(127 downto 0),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(15 downto 0) => xbar_to_m00_couplers_WSTRB(15 downto 0),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(95 downto 64) => B"00000000000000000000000000000000",
      s_axi_araddr(63 downto 32) => s01_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(5 downto 4) => B"00",
      s_axi_arburst(3 downto 2) => s01_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(11 downto 8) => B"0000",
      s_axi_arcache(7 downto 4) => s01_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(5 downto 0) => B"000000",
      s_axi_arlen(23 downto 16) => B"00000000",
      s_axi_arlen(15 downto 8) => s01_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(2) => '0',
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(8 downto 6) => B"000",
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(11 downto 8) => B"0000",
      s_axi_arqos(7 downto 4) => s01_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(2) => NLW_xbar_s_axi_arready_UNCONNECTED(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(8 downto 6) => B"001",
      s_axi_arsize(5 downto 3) => s01_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(2) => '0',
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63 downto 32) => B"00000000000000000000000000000000",
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3 downto 2) => B"00",
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7 downto 4) => B"0000",
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(5 downto 0) => B"000000",
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15 downto 8) => B"00000000",
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(1) => '0',
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5 downto 3) => B"000",
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7 downto 4) => B"0000",
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => NLW_xbar_s_axi_awready_UNCONNECTED(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5 downto 3) => B"100",
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => '0',
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(5 downto 0) => NLW_xbar_s_axi_bid_UNCONNECTED(5 downto 0),
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => '0',
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => NLW_xbar_s_axi_bresp_UNCONNECTED(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => NLW_xbar_s_axi_bvalid_UNCONNECTED(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(383 downto 256) => NLW_xbar_s_axi_rdata_UNCONNECTED(383 downto 256),
      s_axi_rdata(255 downto 128) => s01_couplers_to_xbar_RDATA(255 downto 128),
      s_axi_rdata(127 downto 0) => s00_couplers_to_xbar_RDATA(127 downto 0),
      s_axi_rid(5 downto 0) => NLW_xbar_s_axi_rid_UNCONNECTED(5 downto 0),
      s_axi_rlast(2) => NLW_xbar_s_axi_rlast_UNCONNECTED(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(2) => '0',
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(5 downto 4) => NLW_xbar_s_axi_rresp_UNCONNECTED(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(2) => NLW_xbar_s_axi_rvalid_UNCONNECTED(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(383 downto 256) => s02_couplers_to_xbar_WDATA(127 downto 0),
      s_axi_wdata(255 downto 128) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wdata(127 downto 0) => s00_couplers_to_xbar_WDATA(127 downto 0),
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => '0',
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => NLW_xbar_s_axi_wready_UNCONNECTED(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(47 downto 32) => s02_couplers_to_xbar_WSTRB(15 downto 0),
      s_axi_wstrb(31 downto 16) => B"1111111111111111",
      s_axi_wstrb(15 downto 0) => s00_couplers_to_xbar_WSTRB(15 downto 0),
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => '0',
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_ps_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arlock : in STD_LOGIC;
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awlock : in STD_LOGIC;
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_wvalid : in STD_LOGIC
  );
end ACL_ps_axi_periph_0;

architecture STRUCTURE of ACL_ps_axi_periph_0 is
  component ACL_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 79 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 79 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 119 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component ACL_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_ps_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_ps_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_ps_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_ps_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_ps_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_ps_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m02_couplers_to_ps_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_ps_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_ps_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m02_couplers_to_ps_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_ps_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_ACLK_net : STD_LOGIC;
  signal ps_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ps_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ps_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_to_s01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_to_s01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_to_s01_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps_axi_periph_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps_axi_periph_to_s01_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_to_s01_couplers_ARREADY : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps_axi_periph_to_s01_couplers_ARVALID : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_to_s01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_to_s01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_to_s01_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps_axi_periph_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps_axi_periph_to_s01_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_to_s01_couplers_AWREADY : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps_axi_periph_to_s01_couplers_AWVALID : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s01_couplers_BREADY : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_to_s01_couplers_BVALID : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ps_axi_periph_to_s01_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s01_couplers_RLAST : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_RREADY : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_to_s01_couplers_RVALID : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ps_axi_periph_to_s01_couplers_WLAST : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_WREADY : STD_LOGIC;
  signal ps_axi_periph_to_s01_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps_axi_periph_to_s01_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 119 downto 80 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(39 downto 0) <= m00_couplers_to_ps_axi_periph_ARADDR(39 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_ps_axi_periph_ARVALID;
  M00_AXI_awaddr(39 downto 0) <= m00_couplers_to_ps_axi_periph_AWADDR(39 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_ps_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_ps_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_ps_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps_axi_periph_WDATA(31 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_ps_axi_periph_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(39 downto 0) <= m01_couplers_to_ps_axi_periph_ARADDR(39 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps_axi_periph_ARVALID;
  M01_AXI_awaddr(39 downto 0) <= m01_couplers_to_ps_axi_periph_AWADDR(39 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps_axi_periph_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(39 downto 0) <= m02_couplers_to_ps_axi_periph_ARADDR(39 downto 0);
  M02_AXI_arvalid(0) <= m02_couplers_to_ps_axi_periph_ARVALID(0);
  M02_AXI_awaddr(39 downto 0) <= m02_couplers_to_ps_axi_periph_AWADDR(39 downto 0);
  M02_AXI_awvalid(0) <= m02_couplers_to_ps_axi_periph_AWVALID(0);
  M02_AXI_bready(0) <= m02_couplers_to_ps_axi_periph_BREADY(0);
  M02_AXI_rready(0) <= m02_couplers_to_ps_axi_periph_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_ps_axi_periph_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_ps_axi_periph_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= m02_couplers_to_ps_axi_periph_WVALID(0);
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(15 downto 0) <= ps_axi_periph_to_s00_couplers_BID(15 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(127 downto 0) <= ps_axi_periph_to_s00_couplers_RDATA(127 downto 0);
  S00_AXI_rid(15 downto 0) <= ps_axi_periph_to_s00_couplers_RID(15 downto 0);
  S00_AXI_rlast <= ps_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps_axi_periph_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= ps_axi_periph_to_s01_couplers_ARREADY;
  S01_AXI_awready <= ps_axi_periph_to_s01_couplers_AWREADY;
  S01_AXI_bid(15 downto 0) <= ps_axi_periph_to_s01_couplers_BID(15 downto 0);
  S01_AXI_bresp(1 downto 0) <= ps_axi_periph_to_s01_couplers_BRESP(1 downto 0);
  S01_AXI_bvalid <= ps_axi_periph_to_s01_couplers_BVALID;
  S01_AXI_rdata(127 downto 0) <= ps_axi_periph_to_s01_couplers_RDATA(127 downto 0);
  S01_AXI_rid(15 downto 0) <= ps_axi_periph_to_s01_couplers_RID(15 downto 0);
  S01_AXI_rlast <= ps_axi_periph_to_s01_couplers_RLAST;
  S01_AXI_rresp(1 downto 0) <= ps_axi_periph_to_s01_couplers_RRESP(1 downto 0);
  S01_AXI_rvalid <= ps_axi_periph_to_s01_couplers_RVALID;
  S01_AXI_wready <= ps_axi_periph_to_s01_couplers_WREADY;
  m00_couplers_to_ps_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_ps_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_ps_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_ps_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_ps_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_ps_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps_axi_periph_ARREADY(0) <= M02_AXI_arready(0);
  m02_couplers_to_ps_axi_periph_AWREADY(0) <= M02_AXI_awready(0);
  m02_couplers_to_ps_axi_periph_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_ps_axi_periph_BVALID(0) <= M02_AXI_bvalid(0);
  m02_couplers_to_ps_axi_periph_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_ps_axi_periph_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_ps_axi_periph_RVALID(0) <= M02_AXI_rvalid(0);
  m02_couplers_to_ps_axi_periph_WREADY(0) <= M02_AXI_wready(0);
  ps_axi_periph_ACLK_net <= ACLK;
  ps_axi_periph_ARESETN_net <= ARESETN;
  ps_axi_periph_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  ps_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps_axi_periph_to_s00_couplers_ARID(15 downto 0) <= S00_AXI_arid(15 downto 0);
  ps_axi_periph_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  ps_axi_periph_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  ps_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps_axi_periph_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  ps_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps_axi_periph_to_s00_couplers_AWID(15 downto 0) <= S00_AXI_awid(15 downto 0);
  ps_axi_periph_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  ps_axi_periph_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  ps_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps_axi_periph_to_s00_couplers_WDATA(127 downto 0) <= S00_AXI_wdata(127 downto 0);
  ps_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps_axi_periph_to_s00_couplers_WSTRB(15 downto 0) <= S00_AXI_wstrb(15 downto 0);
  ps_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  ps_axi_periph_to_s01_couplers_ARADDR(39 downto 0) <= S01_AXI_araddr(39 downto 0);
  ps_axi_periph_to_s01_couplers_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  ps_axi_periph_to_s01_couplers_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  ps_axi_periph_to_s01_couplers_ARID(15 downto 0) <= S01_AXI_arid(15 downto 0);
  ps_axi_periph_to_s01_couplers_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  ps_axi_periph_to_s01_couplers_ARLOCK <= S01_AXI_arlock;
  ps_axi_periph_to_s01_couplers_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  ps_axi_periph_to_s01_couplers_ARQOS(3 downto 0) <= S01_AXI_arqos(3 downto 0);
  ps_axi_periph_to_s01_couplers_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  ps_axi_periph_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  ps_axi_periph_to_s01_couplers_AWADDR(39 downto 0) <= S01_AXI_awaddr(39 downto 0);
  ps_axi_periph_to_s01_couplers_AWBURST(1 downto 0) <= S01_AXI_awburst(1 downto 0);
  ps_axi_periph_to_s01_couplers_AWCACHE(3 downto 0) <= S01_AXI_awcache(3 downto 0);
  ps_axi_periph_to_s01_couplers_AWID(15 downto 0) <= S01_AXI_awid(15 downto 0);
  ps_axi_periph_to_s01_couplers_AWLEN(7 downto 0) <= S01_AXI_awlen(7 downto 0);
  ps_axi_periph_to_s01_couplers_AWLOCK <= S01_AXI_awlock;
  ps_axi_periph_to_s01_couplers_AWPROT(2 downto 0) <= S01_AXI_awprot(2 downto 0);
  ps_axi_periph_to_s01_couplers_AWQOS(3 downto 0) <= S01_AXI_awqos(3 downto 0);
  ps_axi_periph_to_s01_couplers_AWSIZE(2 downto 0) <= S01_AXI_awsize(2 downto 0);
  ps_axi_periph_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  ps_axi_periph_to_s01_couplers_BREADY <= S01_AXI_bready;
  ps_axi_periph_to_s01_couplers_RREADY <= S01_AXI_rready;
  ps_axi_periph_to_s01_couplers_WDATA(127 downto 0) <= S01_AXI_wdata(127 downto 0);
  ps_axi_periph_to_s01_couplers_WLAST <= S01_AXI_wlast;
  ps_axi_periph_to_s01_couplers_WSTRB(15 downto 0) <= S01_AXI_wstrb(15 downto 0);
  ps_axi_periph_to_s01_couplers_WVALID <= S01_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_141RNAV
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(39 downto 0) => m00_couplers_to_ps_axi_periph_ARADDR(39 downto 0),
      M_AXI_arready => m00_couplers_to_ps_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_ps_axi_periph_ARVALID,
      M_AXI_awaddr(39 downto 0) => m00_couplers_to_ps_axi_periph_AWADDR(39 downto 0),
      M_AXI_awready => m00_couplers_to_ps_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_ps_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_ps_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_ps_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_ps_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_ps_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_ps_axi_periph_WREADY,
      M_AXI_wvalid => m00_couplers_to_ps_axi_periph_WVALID,
      S_ACLK => ps_axi_periph_ACLK_net,
      S_ARESETN => ps_axi_periph_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_LKMQ7M
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(39 downto 0) => m01_couplers_to_ps_axi_periph_ARADDR(39 downto 0),
      M_AXI_arready => m01_couplers_to_ps_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps_axi_periph_ARVALID,
      M_AXI_awaddr(39 downto 0) => m01_couplers_to_ps_axi_periph_AWADDR(39 downto 0),
      M_AXI_awready => m01_couplers_to_ps_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps_axi_periph_WVALID,
      S_ACLK => ps_axi_periph_ACLK_net,
      S_ARESETN => ps_axi_periph_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(39 downto 0) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1ULP3I4
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(39 downto 0) => m02_couplers_to_ps_axi_periph_ARADDR(39 downto 0),
      M_AXI_arready(0) => m02_couplers_to_ps_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m02_couplers_to_ps_axi_periph_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m02_couplers_to_ps_axi_periph_AWADDR(39 downto 0),
      M_AXI_awready(0) => m02_couplers_to_ps_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m02_couplers_to_ps_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m02_couplers_to_ps_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m02_couplers_to_ps_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m02_couplers_to_ps_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m02_couplers_to_ps_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m02_couplers_to_ps_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m02_couplers_to_ps_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m02_couplers_to_ps_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m02_couplers_to_ps_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m02_couplers_to_ps_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_ps_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m02_couplers_to_ps_axi_periph_WVALID(0),
      S_ACLK => ps_axi_periph_ACLK_net,
      S_ARESETN => ps_axi_periph_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      S_AXI_arready(0) => xbar_to_m02_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(39 downto 0) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      S_AXI_awready(0) => xbar_to_m02_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready(0) => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m02_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m02_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wready(0) => xbar_to_m02_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid(0) => xbar_to_m02_couplers_WVALID(2)
    );
s00_couplers: entity work.s00_couplers_imp_FW55SD
     port map (
      M_ACLK => ps_axi_periph_ACLK_net,
      M_ARESETN => ps_axi_periph_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(39 downto 0) => ps_axi_periph_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => ps_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => ps_axi_periph_to_s00_couplers_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => ps_axi_periph_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => ps_axi_periph_to_s00_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => ps_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => ps_axi_periph_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => ps_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => ps_axi_periph_to_s00_couplers_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => ps_axi_periph_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => ps_axi_periph_to_s00_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => ps_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(15 downto 0) => ps_axi_periph_to_s00_couplers_BID(15 downto 0),
      S_AXI_bready => ps_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(127 downto 0) => ps_axi_periph_to_s00_couplers_RDATA(127 downto 0),
      S_AXI_rid(15 downto 0) => ps_axi_periph_to_s00_couplers_RID(15 downto 0),
      S_AXI_rlast => ps_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(127 downto 0) => ps_axi_periph_to_s00_couplers_WDATA(127 downto 0),
      S_AXI_wlast => ps_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(15 downto 0) => ps_axi_periph_to_s00_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid => ps_axi_periph_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1RHLYX4
     port map (
      M_ACLK => ps_axi_periph_ACLK_net,
      M_ARESETN => ps_axi_periph_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s01_couplers_to_xbar_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(39 downto 0) => s01_couplers_to_xbar_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s01_couplers_to_xbar_BRESP(3 downto 2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata(31 downto 0) => s01_couplers_to_xbar_RDATA(63 downto 32),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s01_couplers_to_xbar_RRESP(3 downto 2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata(31 downto 0) => s01_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb(3 downto 0) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr(39 downto 0) => ps_axi_periph_to_s01_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => ps_axi_periph_to_s01_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps_axi_periph_to_s01_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => ps_axi_periph_to_s01_couplers_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => ps_axi_periph_to_s01_couplers_ARLEN(7 downto 0),
      S_AXI_arlock => ps_axi_periph_to_s01_couplers_ARLOCK,
      S_AXI_arprot(2 downto 0) => ps_axi_periph_to_s01_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps_axi_periph_to_s01_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps_axi_periph_to_s01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps_axi_periph_to_s01_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps_axi_periph_to_s01_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => ps_axi_periph_to_s01_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => ps_axi_periph_to_s01_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps_axi_periph_to_s01_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => ps_axi_periph_to_s01_couplers_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => ps_axi_periph_to_s01_couplers_AWLEN(7 downto 0),
      S_AXI_awlock => ps_axi_periph_to_s01_couplers_AWLOCK,
      S_AXI_awprot(2 downto 0) => ps_axi_periph_to_s01_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps_axi_periph_to_s01_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps_axi_periph_to_s01_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps_axi_periph_to_s01_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps_axi_periph_to_s01_couplers_AWVALID,
      S_AXI_bid(15 downto 0) => ps_axi_periph_to_s01_couplers_BID(15 downto 0),
      S_AXI_bready => ps_axi_periph_to_s01_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps_axi_periph_to_s01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps_axi_periph_to_s01_couplers_BVALID,
      S_AXI_rdata(127 downto 0) => ps_axi_periph_to_s01_couplers_RDATA(127 downto 0),
      S_AXI_rid(15 downto 0) => ps_axi_periph_to_s01_couplers_RID(15 downto 0),
      S_AXI_rlast => ps_axi_periph_to_s01_couplers_RLAST,
      S_AXI_rready => ps_axi_periph_to_s01_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps_axi_periph_to_s01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps_axi_periph_to_s01_couplers_RVALID,
      S_AXI_wdata(127 downto 0) => ps_axi_periph_to_s01_couplers_WDATA(127 downto 0),
      S_AXI_wlast => ps_axi_periph_to_s01_couplers_WLAST,
      S_AXI_wready => ps_axi_periph_to_s01_couplers_WREADY,
      S_AXI_wstrb(15 downto 0) => ps_axi_periph_to_s01_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid => ps_axi_periph_to_s01_couplers_WVALID
    );
xbar: component ACL_xbar_1
     port map (
      aclk => ps_axi_periph_ACLK_net,
      aresetn => ps_axi_periph_ARESETN_net,
      m_axi_araddr(119 downto 80) => xbar_to_m02_couplers_ARADDR(119 downto 80),
      m_axi_araddr(79 downto 40) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      m_axi_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(8 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(8 downto 0),
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY(0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(119 downto 80) => xbar_to_m02_couplers_AWADDR(119 downto 80),
      m_axi_awaddr(79 downto 40) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      m_axi_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(8 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(8 downto 0),
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY(0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID(0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID(0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY(0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => NLW_xbar_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(79 downto 40) => s01_couplers_to_xbar_ARADDR(39 downto 0),
      s_axi_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      s_axi_arprot(5 downto 3) => s01_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(79 downto 40) => s01_couplers_to_xbar_AWADDR(39 downto 0),
      s_axi_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      s_axi_awprot(5 downto 3) => s01_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(63 downto 32) => s01_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(7 downto 4) => s01_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity other_perph_imp_77TATY is
  port (
    CLK : in STD_LOGIC;
    CLK1 : in STD_LOGIC;
    Dout1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Dout2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Dout3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end other_perph_imp_77TATY;

architecture STRUCTURE of other_perph_imp_77TATY is
  component ACL_reset_invert_led_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC
  );
  end component ACL_reset_invert_led_0;
  component ACL_axi_timer_1_0 is
  port (
    capturetrig0 : in STD_LOGIC;
    capturetrig1 : in STD_LOGIC;
    generateout0 : out STD_LOGIC;
    generateout1 : out STD_LOGIC;
    pwm0 : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    freeze : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component ACL_axi_timer_1_0;
  component ACL_sfp_tx_disable_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ACL_sfp_tx_disable_0;
  signal CLK1_1 : STD_LOGIC;
  signal CLK_1 : STD_LOGIC;
  signal S_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_1_ARREADY : STD_LOGIC;
  signal S_AXI_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_1_AWREADY : STD_LOGIC;
  signal S_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_BVALID : STD_LOGIC;
  signal S_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_RVALID : STD_LOGIC;
  signal S_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_WREADY : STD_LOGIC;
  signal S_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_clk_led_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_timer_1_interrupt : STD_LOGIC;
  signal mgt_tx_clk_led_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_invert_led_Res : STD_LOGIC;
  signal rx_clk_led_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC;
  signal sfp_tx_disable_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_timer_1_generateout0_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_1_generateout1_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_timer_1_pwm0_UNCONNECTED : STD_LOGIC;
begin
  CLK1_1 <= CLK1;
  CLK_1 <= CLK;
  Dout1(0) <= rx_clk_led_Dout(0);
  Dout2(0) <= mgt_tx_clk_led_Dout(0);
  Dout3(0) <= axi_clk_led_Dout(0);
  Res <= reset_invert_led_Res;
  S_AXI_1_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  S_AXI_1_ARVALID(0) <= S_AXI_arvalid(0);
  S_AXI_1_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  S_AXI_1_AWVALID(0) <= S_AXI_awvalid(0);
  S_AXI_1_BREADY(0) <= S_AXI_bready(0);
  S_AXI_1_RREADY(0) <= S_AXI_rready(0);
  S_AXI_1_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  S_AXI_1_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  S_AXI_1_WVALID(0) <= S_AXI_wvalid(0);
  S_AXI_arready(0) <= S_AXI_1_ARREADY;
  S_AXI_awready(0) <= S_AXI_1_AWREADY;
  S_AXI_bresp(1 downto 0) <= S_AXI_1_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= S_AXI_1_BVALID;
  S_AXI_rdata(31 downto 0) <= S_AXI_1_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= S_AXI_1_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= S_AXI_1_RVALID;
  S_AXI_wready(0) <= S_AXI_1_WREADY;
  dout(0) <= sfp_tx_disable_dout(0);
  interrupt <= axi_timer_1_interrupt;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresetn_1 <= s_axi_aresetn;
axi_clk_led: entity work.axi_clk_led_imp_1RJE16F
     port map (
      CLK => s_axi_aclk_1,
      Dout(0) => axi_clk_led_Dout(0)
    );
axi_timer_1: component ACL_axi_timer_1_0
     port map (
      capturetrig0 => '0',
      capturetrig1 => '0',
      freeze => '0',
      generateout0 => NLW_axi_timer_1_generateout0_UNCONNECTED,
      generateout1 => NLW_axi_timer_1_generateout1_UNCONNECTED,
      interrupt => axi_timer_1_interrupt,
      pwm0 => NLW_axi_timer_1_pwm0_UNCONNECTED,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(4 downto 0) => S_AXI_1_ARADDR(4 downto 0),
      s_axi_aresetn => s_axi_aresetn_1,
      s_axi_arready => S_AXI_1_ARREADY,
      s_axi_arvalid => S_AXI_1_ARVALID(0),
      s_axi_awaddr(4 downto 0) => S_AXI_1_AWADDR(4 downto 0),
      s_axi_awready => S_AXI_1_AWREADY,
      s_axi_awvalid => S_AXI_1_AWVALID(0),
      s_axi_bready => S_AXI_1_BREADY(0),
      s_axi_bresp(1 downto 0) => S_AXI_1_BRESP(1 downto 0),
      s_axi_bvalid => S_AXI_1_BVALID,
      s_axi_rdata(31 downto 0) => S_AXI_1_RDATA(31 downto 0),
      s_axi_rready => S_AXI_1_RREADY(0),
      s_axi_rresp(1 downto 0) => S_AXI_1_RRESP(1 downto 0),
      s_axi_rvalid => S_AXI_1_RVALID,
      s_axi_wdata(31 downto 0) => S_AXI_1_WDATA(31 downto 0),
      s_axi_wready => S_AXI_1_WREADY,
      s_axi_wstrb(3 downto 0) => S_AXI_1_WSTRB(3 downto 0),
      s_axi_wvalid => S_AXI_1_WVALID(0)
    );
mgt_tx_clk_led: entity work.mgt_tx_clk_led_imp_L4JKJ9
     port map (
      CLK => CLK1_1,
      Dout(0) => mgt_tx_clk_led_Dout(0)
    );
reset_invert_led: component ACL_reset_invert_led_0
     port map (
      Op1(0) => s_axi_aresetn_1,
      Res => reset_invert_led_Res
    );
rx_clk_led: entity work.rx_clk_led_imp_SMH1UL
     port map (
      CLK => CLK_1,
      Dout(0) => rx_clk_led_Dout(0)
    );
sfp_tx_disable: component ACL_sfp_tx_disable_0
     port map (
      dout(0) => sfp_tx_disable_dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_ps_imp_1RA2FC1 is
  port (
    In0 : in STD_LOGIC;
    In1 : in STD_LOGIC;
    In2 : in STD_LOGIC;
    In3 : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M02_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rvalid : out STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    clk_50 : out STD_LOGIC;
    clk_75 : out STD_LOGIC;
    emio_gpio_o : out STD_LOGIC_VECTOR ( 94 downto 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    perph_aresetn_75 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end zynq_ps_imp_1RA2FC1;

architecture STRUCTURE of zynq_ps_imp_1RA2FC1 is
  component ACL_ps_irq_concat_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component ACL_ps_irq_concat_0;
  component ACL_ps_rst_75_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ACL_ps_rst_75_0;
  component ACL_zusp_ps_0 is
  port (
    maxihpm0_fpd_aclk : in STD_LOGIC;
    maxigp0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_awlock : out STD_LOGIC;
    maxigp0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awvalid : out STD_LOGIC;
    maxigp0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awready : in STD_LOGIC;
    maxigp0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_wlast : out STD_LOGIC;
    maxigp0_wvalid : out STD_LOGIC;
    maxigp0_wready : in STD_LOGIC;
    maxigp0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_bvalid : in STD_LOGIC;
    maxigp0_bready : out STD_LOGIC;
    maxigp0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_arlock : out STD_LOGIC;
    maxigp0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arvalid : out STD_LOGIC;
    maxigp0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_arready : in STD_LOGIC;
    maxigp0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_rlast : in STD_LOGIC;
    maxigp0_rvalid : in STD_LOGIC;
    maxigp0_rready : out STD_LOGIC;
    maxigp0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxihpm1_fpd_aclk : in STD_LOGIC;
    maxigp1_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp1_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp1_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_awlock : out STD_LOGIC;
    maxigp1_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_awvalid : out STD_LOGIC;
    maxigp1_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_awready : in STD_LOGIC;
    maxigp1_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp1_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_wlast : out STD_LOGIC;
    maxigp1_wvalid : out STD_LOGIC;
    maxigp1_wready : in STD_LOGIC;
    maxigp1_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_bvalid : in STD_LOGIC;
    maxigp1_bready : out STD_LOGIC;
    maxigp1_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp1_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp1_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_arlock : out STD_LOGIC;
    maxigp1_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp1_arvalid : out STD_LOGIC;
    maxigp1_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_arready : in STD_LOGIC;
    maxigp1_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp1_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp1_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp1_rlast : in STD_LOGIC;
    maxigp1_rvalid : in STD_LOGIC;
    maxigp1_rready : out STD_LOGIC;
    maxigp1_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp1_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    saxihp0_fpd_aclk : in STD_LOGIC;
    saxigp2_aruser : in STD_LOGIC;
    saxigp2_awuser : in STD_LOGIC;
    saxigp2_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_awlock : in STD_LOGIC;
    saxigp2_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awvalid : in STD_LOGIC;
    saxigp2_awready : out STD_LOGIC;
    saxigp2_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp2_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    saxigp2_wlast : in STD_LOGIC;
    saxigp2_wvalid : in STD_LOGIC;
    saxigp2_wready : out STD_LOGIC;
    saxigp2_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_bvalid : out STD_LOGIC;
    saxigp2_bready : in STD_LOGIC;
    saxigp2_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_arlock : in STD_LOGIC;
    saxigp2_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arvalid : in STD_LOGIC;
    saxigp2_arready : out STD_LOGIC;
    saxigp2_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    saxigp2_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_rlast : out STD_LOGIC;
    saxigp2_rvalid : out STD_LOGIC;
    saxigp2_rready : in STD_LOGIC;
    saxigp2_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    emio_gpio_i : in STD_LOGIC_VECTOR ( 94 downto 0 );
    emio_gpio_o : out STD_LOGIC_VECTOR ( 94 downto 0 );
    emio_gpio_t : out STD_LOGIC_VECTOR ( 94 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC;
    pl_clk1 : out STD_LOGIC
  );
  end component ACL_zusp_ps_0;
  signal ACLK_1 : STD_LOGIC;
  signal ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal In0_1 : STD_LOGIC;
  signal In1_1 : STD_LOGIC;
  signal In2_1 : STD_LOGIC;
  signal In3_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal S00_AXI_2_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S00_AXI_2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_2_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_2_ARLOCK : STD_LOGIC;
  signal S00_AXI_2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_ARREADY : STD_LOGIC;
  signal S00_AXI_2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_ARVALID : STD_LOGIC;
  signal S00_AXI_2_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S00_AXI_2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_2_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S00_AXI_2_AWLOCK : STD_LOGIC;
  signal S00_AXI_2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_2_AWREADY : STD_LOGIC;
  signal S00_AXI_2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_2_AWVALID : STD_LOGIC;
  signal S00_AXI_2_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_2_BREADY : STD_LOGIC;
  signal S00_AXI_2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_BVALID : STD_LOGIC;
  signal S00_AXI_2_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S00_AXI_2_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_2_RLAST : STD_LOGIC;
  signal S00_AXI_2_RREADY : STD_LOGIC;
  signal S00_AXI_2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_2_RVALID : STD_LOGIC;
  signal S00_AXI_2_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal S00_AXI_2_WLAST : STD_LOGIC;
  signal S00_AXI_2_WREADY : STD_LOGIC;
  signal S00_AXI_2_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal S00_AXI_2_WVALID : STD_LOGIC;
  signal S01_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S01_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S01_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARREADY : STD_LOGIC;
  signal S01_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S01_AXI_1_ARVALID : STD_LOGIC;
  signal S01_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S01_AXI_1_RLAST : STD_LOGIC;
  signal S01_AXI_1_RREADY : STD_LOGIC;
  signal S01_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S01_AXI_1_RVALID : STD_LOGIC;
  signal S02_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S02_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S02_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_AWREADY : STD_LOGIC;
  signal S02_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S02_AXI_1_AWVALID : STD_LOGIC;
  signal S02_AXI_1_BREADY : STD_LOGIC;
  signal S02_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S02_AXI_1_BVALID : STD_LOGIC;
  signal S02_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S02_AXI_1_WLAST : STD_LOGIC;
  signal S02_AXI_1_WREADY : STD_LOGIC;
  signal S02_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S02_AXI_1_WVALID : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_pl_ps_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pl_ps_M00_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_pl_ps_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pl_ps_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pl_ps_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pl_ps_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_pl_ps_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pl_ps_M00_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_pl_ps_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pl_ps_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_pl_ps_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_pl_ps_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_pl_ps_M00_AXI_BREADY : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_M00_AXI_BVALID : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_pl_ps_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal axi_pl_ps_M00_AXI_RLAST : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_RREADY : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_pl_ps_M00_AXI_RVALID : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_pl_ps_M00_AXI_WLAST : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_WREADY : STD_LOGIC;
  signal axi_pl_ps_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_pl_ps_M00_AXI_WVALID : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal ps_axi_periph_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_M02_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_M02_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps_axi_periph_M02_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_M02_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_M02_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_M02_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps_axi_periph_M02_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps_axi_periph_M02_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps_axi_periph_M02_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_axi_periph_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_axi_periph_M02_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps_irq_concat_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps_rst_75_peripheral_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_ARLOCK : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_ARREADY : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_ARVALID : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_AWLOCK : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_AWREADY : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_AWVALID : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_BREADY : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_BVALID : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_RLAST : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_RREADY : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_RVALID : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_WLAST : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_WREADY : STD_LOGIC;
  signal zusp_ps_M_AXI_HPM1_FPD_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zusp_ps_M_AXI_HPM1_FPD_WVALID : STD_LOGIC;
  signal zusp_ps_pl_clk1 : STD_LOGIC;
  signal zusp_ps_pl_resetn0 : STD_LOGIC;
  signal NLW_ps_rst_75_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_ps_rst_75_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_zusp_ps_emio_gpio_o_UNCONNECTED : STD_LOGIC_VECTOR ( 94 downto 0 );
  signal NLW_zusp_ps_emio_gpio_t_UNCONNECTED : STD_LOGIC_VECTOR ( 94 downto 0 );
  signal NLW_zusp_ps_maxigp0_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zusp_ps_maxigp0_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zusp_ps_maxigp1_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zusp_ps_maxigp1_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  In0_1 <= In0;
  In1_1 <= In1;
  In2_1 <= In2;
  In3_1 <= In3;
  M00_AXI_araddr(39 downto 0) <= ps_axi_periph_M00_AXI_ARADDR(39 downto 0);
  M00_AXI_arvalid <= ps_axi_periph_M00_AXI_ARVALID;
  M00_AXI_awaddr(39 downto 0) <= ps_axi_periph_M00_AXI_AWADDR(39 downto 0);
  M00_AXI_awvalid <= ps_axi_periph_M00_AXI_AWVALID;
  M00_AXI_bready <= ps_axi_periph_M00_AXI_BREADY;
  M00_AXI_rready <= ps_axi_periph_M00_AXI_RREADY;
  M00_AXI_wdata(31 downto 0) <= ps_axi_periph_M00_AXI_WDATA(31 downto 0);
  M00_AXI_wvalid <= ps_axi_periph_M00_AXI_WVALID;
  M01_AXI_araddr(39 downto 0) <= ps_axi_periph_M01_AXI_ARADDR(39 downto 0);
  M01_AXI_arvalid <= ps_axi_periph_M01_AXI_ARVALID;
  M01_AXI_awaddr(39 downto 0) <= ps_axi_periph_M01_AXI_AWADDR(39 downto 0);
  M01_AXI_awvalid <= ps_axi_periph_M01_AXI_AWVALID;
  M01_AXI_bready <= ps_axi_periph_M01_AXI_BREADY;
  M01_AXI_rready <= ps_axi_periph_M01_AXI_RREADY;
  M01_AXI_wdata(31 downto 0) <= ps_axi_periph_M01_AXI_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= ps_axi_periph_M01_AXI_WSTRB(3 downto 0);
  M01_AXI_wvalid <= ps_axi_periph_M01_AXI_WVALID;
  M02_AXI_araddr(39 downto 0) <= ps_axi_periph_M02_AXI_ARADDR(39 downto 0);
  M02_AXI_arvalid(0) <= ps_axi_periph_M02_AXI_ARVALID(0);
  M02_AXI_awaddr(39 downto 0) <= ps_axi_periph_M02_AXI_AWADDR(39 downto 0);
  M02_AXI_awvalid(0) <= ps_axi_periph_M02_AXI_AWVALID(0);
  M02_AXI_bready(0) <= ps_axi_periph_M02_AXI_BREADY(0);
  M02_AXI_rready(0) <= ps_axi_periph_M02_AXI_RREADY(0);
  M02_AXI_wdata(31 downto 0) <= ps_axi_periph_M02_AXI_WDATA(31 downto 0);
  M02_AXI_wstrb(3 downto 0) <= ps_axi_periph_M02_AXI_WSTRB(3 downto 0);
  M02_AXI_wvalid(0) <= ps_axi_periph_M02_AXI_WVALID(0);
  S00_AXI_1_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  S00_AXI_1_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  S00_AXI_1_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  S00_AXI_1_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  S00_AXI_1_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  S00_AXI_1_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  S00_AXI_1_ARVALID <= S00_AXI_arvalid;
  S00_AXI_1_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  S00_AXI_1_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  S00_AXI_1_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  S00_AXI_1_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  S00_AXI_1_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  S00_AXI_1_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  S00_AXI_1_AWVALID <= S00_AXI_awvalid;
  S00_AXI_1_BREADY <= S00_AXI_bready;
  S00_AXI_1_RREADY <= S00_AXI_rready;
  S00_AXI_1_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  S00_AXI_1_WLAST <= S00_AXI_wlast;
  S00_AXI_1_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  S00_AXI_1_WVALID <= S00_AXI_wvalid;
  S00_AXI_arready <= S00_AXI_1_ARREADY;
  S00_AXI_awready <= S00_AXI_1_AWREADY;
  S00_AXI_bresp(1 downto 0) <= S00_AXI_1_BRESP(1 downto 0);
  S00_AXI_bvalid <= S00_AXI_1_BVALID;
  S00_AXI_rdata(31 downto 0) <= S00_AXI_1_RDATA(31 downto 0);
  S00_AXI_rlast <= S00_AXI_1_RLAST;
  S00_AXI_rresp(1 downto 0) <= S00_AXI_1_RRESP(1 downto 0);
  S00_AXI_rvalid <= S00_AXI_1_RVALID;
  S00_AXI_wready <= S00_AXI_1_WREADY;
  S01_AXI_1_ARADDR(31 downto 0) <= S01_AXI_araddr(31 downto 0);
  S01_AXI_1_ARBURST(1 downto 0) <= S01_AXI_arburst(1 downto 0);
  S01_AXI_1_ARCACHE(3 downto 0) <= S01_AXI_arcache(3 downto 0);
  S01_AXI_1_ARLEN(7 downto 0) <= S01_AXI_arlen(7 downto 0);
  S01_AXI_1_ARPROT(2 downto 0) <= S01_AXI_arprot(2 downto 0);
  S01_AXI_1_ARSIZE(2 downto 0) <= S01_AXI_arsize(2 downto 0);
  S01_AXI_1_ARVALID <= S01_AXI_arvalid;
  S01_AXI_1_RREADY <= S01_AXI_rready;
  S01_AXI_arready <= S01_AXI_1_ARREADY;
  S01_AXI_rdata(31 downto 0) <= S01_AXI_1_RDATA(31 downto 0);
  S01_AXI_rlast <= S01_AXI_1_RLAST;
  S01_AXI_rresp(1 downto 0) <= S01_AXI_1_RRESP(1 downto 0);
  S01_AXI_rvalid <= S01_AXI_1_RVALID;
  S02_AXI_1_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  S02_AXI_1_AWBURST(1 downto 0) <= S02_AXI_awburst(1 downto 0);
  S02_AXI_1_AWCACHE(3 downto 0) <= S02_AXI_awcache(3 downto 0);
  S02_AXI_1_AWLEN(7 downto 0) <= S02_AXI_awlen(7 downto 0);
  S02_AXI_1_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  S02_AXI_1_AWSIZE(2 downto 0) <= S02_AXI_awsize(2 downto 0);
  S02_AXI_1_AWVALID <= S02_AXI_awvalid;
  S02_AXI_1_BREADY <= S02_AXI_bready;
  S02_AXI_1_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  S02_AXI_1_WLAST <= S02_AXI_wlast;
  S02_AXI_1_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  S02_AXI_1_WVALID <= S02_AXI_wvalid;
  S02_AXI_awready <= S02_AXI_1_AWREADY;
  S02_AXI_bresp(1 downto 0) <= S02_AXI_1_BRESP(1 downto 0);
  S02_AXI_bvalid <= S02_AXI_1_BVALID;
  S02_AXI_wready <= S02_AXI_1_WREADY;
  clk_50 <= zusp_ps_pl_clk1;
  clk_75 <= ACLK_1;
  peripheral_reset(0) <= ps_rst_75_peripheral_reset(0);
  perph_aresetn_75(0) <= M00_ARESETN_1(0);
  ps_axi_periph_M00_AXI_ARREADY <= M00_AXI_arready;
  ps_axi_periph_M00_AXI_AWREADY <= M00_AXI_awready;
  ps_axi_periph_M00_AXI_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  ps_axi_periph_M00_AXI_BVALID <= M00_AXI_bvalid;
  ps_axi_periph_M00_AXI_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  ps_axi_periph_M00_AXI_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  ps_axi_periph_M00_AXI_RVALID <= M00_AXI_rvalid;
  ps_axi_periph_M00_AXI_WREADY <= M00_AXI_wready;
  ps_axi_periph_M01_AXI_ARREADY <= M01_AXI_arready;
  ps_axi_periph_M01_AXI_AWREADY <= M01_AXI_awready;
  ps_axi_periph_M01_AXI_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  ps_axi_periph_M01_AXI_BVALID <= M01_AXI_bvalid;
  ps_axi_periph_M01_AXI_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  ps_axi_periph_M01_AXI_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  ps_axi_periph_M01_AXI_RVALID <= M01_AXI_rvalid;
  ps_axi_periph_M01_AXI_WREADY <= M01_AXI_wready;
  ps_axi_periph_M02_AXI_ARREADY(0) <= M02_AXI_arready(0);
  ps_axi_periph_M02_AXI_AWREADY(0) <= M02_AXI_awready(0);
  ps_axi_periph_M02_AXI_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  ps_axi_periph_M02_AXI_BVALID(0) <= M02_AXI_bvalid(0);
  ps_axi_periph_M02_AXI_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  ps_axi_periph_M02_AXI_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  ps_axi_periph_M02_AXI_RVALID(0) <= M02_AXI_rvalid(0);
  ps_axi_periph_M02_AXI_WREADY(0) <= M02_AXI_wready(0);
axi_pl_ps: entity work.ACL_axi_pl_ps_0
     port map (
      ACLK => ACLK_1,
      ARESETN => ARESETN_1(0),
      M00_ACLK => ACLK_1,
      M00_ARESETN => M00_ARESETN_1(0),
      M00_AXI_araddr(31 downto 0) => axi_pl_ps_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_pl_ps_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_pl_ps_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(1 downto 0) => axi_pl_ps_M00_AXI_ARID(1 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_pl_ps_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock => axi_pl_ps_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_pl_ps_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_pl_ps_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_pl_ps_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_pl_ps_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_pl_ps_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => axi_pl_ps_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_pl_ps_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_pl_ps_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(1 downto 0) => axi_pl_ps_M00_AXI_AWID(1 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_pl_ps_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock => axi_pl_ps_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_pl_ps_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_pl_ps_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_pl_ps_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_pl_ps_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_pl_ps_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => axi_pl_ps_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => axi_pl_ps_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_pl_ps_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_pl_ps_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => axi_pl_ps_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rid(5 downto 0) => axi_pl_ps_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => axi_pl_ps_M00_AXI_RLAST,
      M00_AXI_rready => axi_pl_ps_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_pl_ps_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_pl_ps_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => axi_pl_ps_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast => axi_pl_ps_M00_AXI_WLAST,
      M00_AXI_wready => axi_pl_ps_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => axi_pl_ps_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid => axi_pl_ps_M00_AXI_WVALID,
      S00_ACLK => ACLK_1,
      S00_ARESETN => M00_ARESETN_1(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_1_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      S00_AXI_arready => S00_AXI_1_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_1_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_1_AWLEN(7 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awready => S00_AXI_1_AWREADY,
      S00_AXI_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      S00_AXI_awvalid => S00_AXI_1_AWVALID,
      S00_AXI_bready => S00_AXI_1_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_1_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      S00_AXI_rlast => S00_AXI_1_RLAST,
      S00_AXI_rready => S00_AXI_1_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_1_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      S00_AXI_wlast => S00_AXI_1_WLAST,
      S00_AXI_wready => S00_AXI_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_1_WVALID,
      S01_ACLK => ACLK_1,
      S01_ARESETN => M00_ARESETN_1(0),
      S01_AXI_araddr(31 downto 0) => S01_AXI_1_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => S01_AXI_1_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => S01_AXI_1_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => S01_AXI_1_ARLEN(7 downto 0),
      S01_AXI_arprot(2 downto 0) => S01_AXI_1_ARPROT(2 downto 0),
      S01_AXI_arready => S01_AXI_1_ARREADY,
      S01_AXI_arsize(2 downto 0) => S01_AXI_1_ARSIZE(2 downto 0),
      S01_AXI_arvalid => S01_AXI_1_ARVALID,
      S01_AXI_rdata(31 downto 0) => S01_AXI_1_RDATA(31 downto 0),
      S01_AXI_rlast => S01_AXI_1_RLAST,
      S01_AXI_rready => S01_AXI_1_RREADY,
      S01_AXI_rresp(1 downto 0) => S01_AXI_1_RRESP(1 downto 0),
      S01_AXI_rvalid => S01_AXI_1_RVALID,
      S02_ACLK => ACLK_1,
      S02_ARESETN => M00_ARESETN_1(0),
      S02_AXI_awaddr(31 downto 0) => S02_AXI_1_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => S02_AXI_1_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => S02_AXI_1_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => S02_AXI_1_AWLEN(7 downto 0),
      S02_AXI_awprot(2 downto 0) => S02_AXI_1_AWPROT(2 downto 0),
      S02_AXI_awready => S02_AXI_1_AWREADY,
      S02_AXI_awsize(2 downto 0) => S02_AXI_1_AWSIZE(2 downto 0),
      S02_AXI_awvalid => S02_AXI_1_AWVALID,
      S02_AXI_bready => S02_AXI_1_BREADY,
      S02_AXI_bresp(1 downto 0) => S02_AXI_1_BRESP(1 downto 0),
      S02_AXI_bvalid => S02_AXI_1_BVALID,
      S02_AXI_wdata(31 downto 0) => S02_AXI_1_WDATA(31 downto 0),
      S02_AXI_wlast => S02_AXI_1_WLAST,
      S02_AXI_wready => S02_AXI_1_WREADY,
      S02_AXI_wstrb(3 downto 0) => S02_AXI_1_WSTRB(3 downto 0),
      S02_AXI_wvalid => S02_AXI_1_WVALID
    );
ps_axi_periph: entity work.ACL_ps_axi_periph_0
     port map (
      ACLK => ACLK_1,
      ARESETN => ARESETN_1(0),
      M00_ACLK => ACLK_1,
      M00_ARESETN => M00_ARESETN_1(0),
      M00_AXI_araddr(39 downto 0) => ps_axi_periph_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arready => ps_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(39 downto 0) => ps_axi_periph_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awready => ps_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps_axi_periph_M00_AXI_WREADY,
      M00_AXI_wvalid => ps_axi_periph_M00_AXI_WVALID,
      M01_ACLK => ACLK_1,
      M01_ARESETN => M00_ARESETN_1(0),
      M01_AXI_araddr(39 downto 0) => ps_axi_periph_M01_AXI_ARADDR(39 downto 0),
      M01_AXI_arready => ps_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(39 downto 0) => ps_axi_periph_M01_AXI_AWADDR(39 downto 0),
      M01_AXI_awready => ps_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps_axi_periph_M01_AXI_WVALID,
      M02_ACLK => ACLK_1,
      M02_ARESETN => M00_ARESETN_1(0),
      M02_AXI_araddr(39 downto 0) => ps_axi_periph_M02_AXI_ARADDR(39 downto 0),
      M02_AXI_arready(0) => ps_axi_periph_M02_AXI_ARREADY(0),
      M02_AXI_arvalid(0) => ps_axi_periph_M02_AXI_ARVALID(0),
      M02_AXI_awaddr(39 downto 0) => ps_axi_periph_M02_AXI_AWADDR(39 downto 0),
      M02_AXI_awready(0) => ps_axi_periph_M02_AXI_AWREADY(0),
      M02_AXI_awvalid(0) => ps_axi_periph_M02_AXI_AWVALID(0),
      M02_AXI_bready(0) => ps_axi_periph_M02_AXI_BREADY(0),
      M02_AXI_bresp(1 downto 0) => ps_axi_periph_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => ps_axi_periph_M02_AXI_BVALID(0),
      M02_AXI_rdata(31 downto 0) => ps_axi_periph_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready(0) => ps_axi_periph_M02_AXI_RREADY(0),
      M02_AXI_rresp(1 downto 0) => ps_axi_periph_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => ps_axi_periph_M02_AXI_RVALID(0),
      M02_AXI_wdata(31 downto 0) => ps_axi_periph_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready(0) => ps_axi_periph_M02_AXI_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => ps_axi_periph_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => ps_axi_periph_M02_AXI_WVALID(0),
      S00_ACLK => ACLK_1,
      S00_ARESETN => M00_ARESETN_1(0),
      S00_AXI_araddr(39 downto 0) => S00_AXI_2_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_2_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_2_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => S00_AXI_2_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_2_ARLEN(7 downto 0),
      S00_AXI_arlock => S00_AXI_2_ARLOCK,
      S00_AXI_arprot(2 downto 0) => S00_AXI_2_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_2_ARQOS(3 downto 0),
      S00_AXI_arready => S00_AXI_2_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_2_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_2_ARVALID,
      S00_AXI_awaddr(39 downto 0) => S00_AXI_2_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_2_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_2_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => S00_AXI_2_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_2_AWLEN(7 downto 0),
      S00_AXI_awlock => S00_AXI_2_AWLOCK,
      S00_AXI_awprot(2 downto 0) => S00_AXI_2_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_2_AWQOS(3 downto 0),
      S00_AXI_awready => S00_AXI_2_AWREADY,
      S00_AXI_awsize(2 downto 0) => S00_AXI_2_AWSIZE(2 downto 0),
      S00_AXI_awvalid => S00_AXI_2_AWVALID,
      S00_AXI_bid(15 downto 0) => S00_AXI_2_BID(15 downto 0),
      S00_AXI_bready => S00_AXI_2_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_2_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_2_BVALID,
      S00_AXI_rdata(127 downto 0) => S00_AXI_2_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => S00_AXI_2_RID(15 downto 0),
      S00_AXI_rlast => S00_AXI_2_RLAST,
      S00_AXI_rready => S00_AXI_2_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_2_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_2_RVALID,
      S00_AXI_wdata(127 downto 0) => S00_AXI_2_WDATA(127 downto 0),
      S00_AXI_wlast => S00_AXI_2_WLAST,
      S00_AXI_wready => S00_AXI_2_WREADY,
      S00_AXI_wstrb(15 downto 0) => S00_AXI_2_WSTRB(15 downto 0),
      S00_AXI_wvalid => S00_AXI_2_WVALID,
      S01_ACLK => ACLK_1,
      S01_ARESETN => M00_ARESETN_1(0),
      S01_AXI_araddr(39 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARADDR(39 downto 0),
      S01_AXI_arburst(1 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARCACHE(3 downto 0),
      S01_AXI_arid(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARID(15 downto 0),
      S01_AXI_arlen(7 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARLEN(7 downto 0),
      S01_AXI_arlock => zusp_ps_M_AXI_HPM1_FPD_ARLOCK,
      S01_AXI_arprot(2 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARQOS(3 downto 0),
      S01_AXI_arready => zusp_ps_M_AXI_HPM1_FPD_ARREADY,
      S01_AXI_arsize(2 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARSIZE(2 downto 0),
      S01_AXI_arvalid => zusp_ps_M_AXI_HPM1_FPD_ARVALID,
      S01_AXI_awaddr(39 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWADDR(39 downto 0),
      S01_AXI_awburst(1 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWCACHE(3 downto 0),
      S01_AXI_awid(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWID(15 downto 0),
      S01_AXI_awlen(7 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWLEN(7 downto 0),
      S01_AXI_awlock => zusp_ps_M_AXI_HPM1_FPD_AWLOCK,
      S01_AXI_awprot(2 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWQOS(3 downto 0),
      S01_AXI_awready => zusp_ps_M_AXI_HPM1_FPD_AWREADY,
      S01_AXI_awsize(2 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWSIZE(2 downto 0),
      S01_AXI_awvalid => zusp_ps_M_AXI_HPM1_FPD_AWVALID,
      S01_AXI_bid(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_BID(15 downto 0),
      S01_AXI_bready => zusp_ps_M_AXI_HPM1_FPD_BREADY,
      S01_AXI_bresp(1 downto 0) => zusp_ps_M_AXI_HPM1_FPD_BRESP(1 downto 0),
      S01_AXI_bvalid => zusp_ps_M_AXI_HPM1_FPD_BVALID,
      S01_AXI_rdata(127 downto 0) => zusp_ps_M_AXI_HPM1_FPD_RDATA(127 downto 0),
      S01_AXI_rid(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_RID(15 downto 0),
      S01_AXI_rlast => zusp_ps_M_AXI_HPM1_FPD_RLAST,
      S01_AXI_rready => zusp_ps_M_AXI_HPM1_FPD_RREADY,
      S01_AXI_rresp(1 downto 0) => zusp_ps_M_AXI_HPM1_FPD_RRESP(1 downto 0),
      S01_AXI_rvalid => zusp_ps_M_AXI_HPM1_FPD_RVALID,
      S01_AXI_wdata(127 downto 0) => zusp_ps_M_AXI_HPM1_FPD_WDATA(127 downto 0),
      S01_AXI_wlast => zusp_ps_M_AXI_HPM1_FPD_WLAST,
      S01_AXI_wready => zusp_ps_M_AXI_HPM1_FPD_WREADY,
      S01_AXI_wstrb(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_WSTRB(15 downto 0),
      S01_AXI_wvalid => zusp_ps_M_AXI_HPM1_FPD_WVALID
    );
ps_irq_concat: component ACL_ps_irq_concat_0
     port map (
      In0(0) => In0_1,
      In1(0) => In1_1,
      In2(0) => In2_1,
      In3(0) => In3_1,
      dout(3 downto 0) => ps_irq_concat_dout(3 downto 0)
    );
ps_rst_75: component ACL_ps_rst_75_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_ps_rst_75_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zusp_ps_pl_resetn0,
      interconnect_aresetn(0) => ARESETN_1(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_ps_rst_75_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => M00_ARESETN_1(0),
      peripheral_reset(0) => ps_rst_75_peripheral_reset(0),
      slowest_sync_clk => ACLK_1
    );
zusp_ps: component ACL_zusp_ps_0
     port map (
      emio_gpio_i(94 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      emio_gpio_o(94 downto 0) => NLW_zusp_ps_emio_gpio_o_UNCONNECTED(94 downto 0),
      emio_gpio_t(94 downto 0) => NLW_zusp_ps_emio_gpio_t_UNCONNECTED(94 downto 0),
      maxigp0_araddr(39 downto 0) => S00_AXI_2_ARADDR(39 downto 0),
      maxigp0_arburst(1 downto 0) => S00_AXI_2_ARBURST(1 downto 0),
      maxigp0_arcache(3 downto 0) => S00_AXI_2_ARCACHE(3 downto 0),
      maxigp0_arid(15 downto 0) => S00_AXI_2_ARID(15 downto 0),
      maxigp0_arlen(7 downto 0) => S00_AXI_2_ARLEN(7 downto 0),
      maxigp0_arlock => S00_AXI_2_ARLOCK,
      maxigp0_arprot(2 downto 0) => S00_AXI_2_ARPROT(2 downto 0),
      maxigp0_arqos(3 downto 0) => S00_AXI_2_ARQOS(3 downto 0),
      maxigp0_arready => S00_AXI_2_ARREADY,
      maxigp0_arsize(2 downto 0) => S00_AXI_2_ARSIZE(2 downto 0),
      maxigp0_aruser(15 downto 0) => NLW_zusp_ps_maxigp0_aruser_UNCONNECTED(15 downto 0),
      maxigp0_arvalid => S00_AXI_2_ARVALID,
      maxigp0_awaddr(39 downto 0) => S00_AXI_2_AWADDR(39 downto 0),
      maxigp0_awburst(1 downto 0) => S00_AXI_2_AWBURST(1 downto 0),
      maxigp0_awcache(3 downto 0) => S00_AXI_2_AWCACHE(3 downto 0),
      maxigp0_awid(15 downto 0) => S00_AXI_2_AWID(15 downto 0),
      maxigp0_awlen(7 downto 0) => S00_AXI_2_AWLEN(7 downto 0),
      maxigp0_awlock => S00_AXI_2_AWLOCK,
      maxigp0_awprot(2 downto 0) => S00_AXI_2_AWPROT(2 downto 0),
      maxigp0_awqos(3 downto 0) => S00_AXI_2_AWQOS(3 downto 0),
      maxigp0_awready => S00_AXI_2_AWREADY,
      maxigp0_awsize(2 downto 0) => S00_AXI_2_AWSIZE(2 downto 0),
      maxigp0_awuser(15 downto 0) => NLW_zusp_ps_maxigp0_awuser_UNCONNECTED(15 downto 0),
      maxigp0_awvalid => S00_AXI_2_AWVALID,
      maxigp0_bid(15 downto 0) => S00_AXI_2_BID(15 downto 0),
      maxigp0_bready => S00_AXI_2_BREADY,
      maxigp0_bresp(1 downto 0) => S00_AXI_2_BRESP(1 downto 0),
      maxigp0_bvalid => S00_AXI_2_BVALID,
      maxigp0_rdata(127 downto 0) => S00_AXI_2_RDATA(127 downto 0),
      maxigp0_rid(15 downto 0) => S00_AXI_2_RID(15 downto 0),
      maxigp0_rlast => S00_AXI_2_RLAST,
      maxigp0_rready => S00_AXI_2_RREADY,
      maxigp0_rresp(1 downto 0) => S00_AXI_2_RRESP(1 downto 0),
      maxigp0_rvalid => S00_AXI_2_RVALID,
      maxigp0_wdata(127 downto 0) => S00_AXI_2_WDATA(127 downto 0),
      maxigp0_wlast => S00_AXI_2_WLAST,
      maxigp0_wready => S00_AXI_2_WREADY,
      maxigp0_wstrb(15 downto 0) => S00_AXI_2_WSTRB(15 downto 0),
      maxigp0_wvalid => S00_AXI_2_WVALID,
      maxigp1_araddr(39 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARADDR(39 downto 0),
      maxigp1_arburst(1 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARBURST(1 downto 0),
      maxigp1_arcache(3 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARCACHE(3 downto 0),
      maxigp1_arid(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARID(15 downto 0),
      maxigp1_arlen(7 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARLEN(7 downto 0),
      maxigp1_arlock => zusp_ps_M_AXI_HPM1_FPD_ARLOCK,
      maxigp1_arprot(2 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARPROT(2 downto 0),
      maxigp1_arqos(3 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARQOS(3 downto 0),
      maxigp1_arready => zusp_ps_M_AXI_HPM1_FPD_ARREADY,
      maxigp1_arsize(2 downto 0) => zusp_ps_M_AXI_HPM1_FPD_ARSIZE(2 downto 0),
      maxigp1_aruser(15 downto 0) => NLW_zusp_ps_maxigp1_aruser_UNCONNECTED(15 downto 0),
      maxigp1_arvalid => zusp_ps_M_AXI_HPM1_FPD_ARVALID,
      maxigp1_awaddr(39 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWADDR(39 downto 0),
      maxigp1_awburst(1 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWBURST(1 downto 0),
      maxigp1_awcache(3 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWCACHE(3 downto 0),
      maxigp1_awid(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWID(15 downto 0),
      maxigp1_awlen(7 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWLEN(7 downto 0),
      maxigp1_awlock => zusp_ps_M_AXI_HPM1_FPD_AWLOCK,
      maxigp1_awprot(2 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWPROT(2 downto 0),
      maxigp1_awqos(3 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWQOS(3 downto 0),
      maxigp1_awready => zusp_ps_M_AXI_HPM1_FPD_AWREADY,
      maxigp1_awsize(2 downto 0) => zusp_ps_M_AXI_HPM1_FPD_AWSIZE(2 downto 0),
      maxigp1_awuser(15 downto 0) => NLW_zusp_ps_maxigp1_awuser_UNCONNECTED(15 downto 0),
      maxigp1_awvalid => zusp_ps_M_AXI_HPM1_FPD_AWVALID,
      maxigp1_bid(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_BID(15 downto 0),
      maxigp1_bready => zusp_ps_M_AXI_HPM1_FPD_BREADY,
      maxigp1_bresp(1 downto 0) => zusp_ps_M_AXI_HPM1_FPD_BRESP(1 downto 0),
      maxigp1_bvalid => zusp_ps_M_AXI_HPM1_FPD_BVALID,
      maxigp1_rdata(127 downto 0) => zusp_ps_M_AXI_HPM1_FPD_RDATA(127 downto 0),
      maxigp1_rid(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_RID(15 downto 0),
      maxigp1_rlast => zusp_ps_M_AXI_HPM1_FPD_RLAST,
      maxigp1_rready => zusp_ps_M_AXI_HPM1_FPD_RREADY,
      maxigp1_rresp(1 downto 0) => zusp_ps_M_AXI_HPM1_FPD_RRESP(1 downto 0),
      maxigp1_rvalid => zusp_ps_M_AXI_HPM1_FPD_RVALID,
      maxigp1_wdata(127 downto 0) => zusp_ps_M_AXI_HPM1_FPD_WDATA(127 downto 0),
      maxigp1_wlast => zusp_ps_M_AXI_HPM1_FPD_WLAST,
      maxigp1_wready => zusp_ps_M_AXI_HPM1_FPD_WREADY,
      maxigp1_wstrb(15 downto 0) => zusp_ps_M_AXI_HPM1_FPD_WSTRB(15 downto 0),
      maxigp1_wvalid => zusp_ps_M_AXI_HPM1_FPD_WVALID,
      maxihpm0_fpd_aclk => ACLK_1,
      maxihpm1_fpd_aclk => ACLK_1,
      pl_clk0 => ACLK_1,
      pl_clk1 => zusp_ps_pl_clk1,
      pl_ps_irq0(3 downto 0) => ps_irq_concat_dout(3 downto 0),
      pl_resetn0 => zusp_ps_pl_resetn0,
      saxigp2_araddr(48 downto 32) => B"00000000000000000",
      saxigp2_araddr(31 downto 0) => axi_pl_ps_M00_AXI_ARADDR(31 downto 0),
      saxigp2_arburst(1 downto 0) => axi_pl_ps_M00_AXI_ARBURST(1 downto 0),
      saxigp2_arcache(3 downto 0) => axi_pl_ps_M00_AXI_ARCACHE(3 downto 0),
      saxigp2_arid(5 downto 2) => B"0000",
      saxigp2_arid(1 downto 0) => axi_pl_ps_M00_AXI_ARID(1 downto 0),
      saxigp2_arlen(7 downto 0) => axi_pl_ps_M00_AXI_ARLEN(7 downto 0),
      saxigp2_arlock => axi_pl_ps_M00_AXI_ARLOCK,
      saxigp2_arprot(2 downto 0) => axi_pl_ps_M00_AXI_ARPROT(2 downto 0),
      saxigp2_arqos(3 downto 0) => axi_pl_ps_M00_AXI_ARQOS(3 downto 0),
      saxigp2_arready => axi_pl_ps_M00_AXI_ARREADY,
      saxigp2_arsize(2 downto 0) => axi_pl_ps_M00_AXI_ARSIZE(2 downto 0),
      saxigp2_aruser => '0',
      saxigp2_arvalid => axi_pl_ps_M00_AXI_ARVALID,
      saxigp2_awaddr(48 downto 32) => B"00000000000000000",
      saxigp2_awaddr(31 downto 0) => axi_pl_ps_M00_AXI_AWADDR(31 downto 0),
      saxigp2_awburst(1 downto 0) => axi_pl_ps_M00_AXI_AWBURST(1 downto 0),
      saxigp2_awcache(3 downto 0) => axi_pl_ps_M00_AXI_AWCACHE(3 downto 0),
      saxigp2_awid(5 downto 2) => B"0000",
      saxigp2_awid(1 downto 0) => axi_pl_ps_M00_AXI_AWID(1 downto 0),
      saxigp2_awlen(7 downto 0) => axi_pl_ps_M00_AXI_AWLEN(7 downto 0),
      saxigp2_awlock => axi_pl_ps_M00_AXI_AWLOCK,
      saxigp2_awprot(2 downto 0) => axi_pl_ps_M00_AXI_AWPROT(2 downto 0),
      saxigp2_awqos(3 downto 0) => axi_pl_ps_M00_AXI_AWQOS(3 downto 0),
      saxigp2_awready => axi_pl_ps_M00_AXI_AWREADY,
      saxigp2_awsize(2 downto 0) => axi_pl_ps_M00_AXI_AWSIZE(2 downto 0),
      saxigp2_awuser => '0',
      saxigp2_awvalid => axi_pl_ps_M00_AXI_AWVALID,
      saxigp2_bid(5 downto 0) => axi_pl_ps_M00_AXI_BID(5 downto 0),
      saxigp2_bready => axi_pl_ps_M00_AXI_BREADY,
      saxigp2_bresp(1 downto 0) => axi_pl_ps_M00_AXI_BRESP(1 downto 0),
      saxigp2_bvalid => axi_pl_ps_M00_AXI_BVALID,
      saxigp2_rdata(127 downto 0) => axi_pl_ps_M00_AXI_RDATA(127 downto 0),
      saxigp2_rid(5 downto 0) => axi_pl_ps_M00_AXI_RID(5 downto 0),
      saxigp2_rlast => axi_pl_ps_M00_AXI_RLAST,
      saxigp2_rready => axi_pl_ps_M00_AXI_RREADY,
      saxigp2_rresp(1 downto 0) => axi_pl_ps_M00_AXI_RRESP(1 downto 0),
      saxigp2_rvalid => axi_pl_ps_M00_AXI_RVALID,
      saxigp2_wdata(127 downto 0) => axi_pl_ps_M00_AXI_WDATA(127 downto 0),
      saxigp2_wlast => axi_pl_ps_M00_AXI_WLAST,
      saxigp2_wready => axi_pl_ps_M00_AXI_WREADY,
      saxigp2_wstrb(15 downto 0) => axi_pl_ps_M00_AXI_WSTRB(15 downto 0),
      saxigp2_wvalid => axi_pl_ps_M00_AXI_WVALID,
      saxihp0_fpd_aclk => ACLK_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL is
  port (
    axi_lite_clk_led : out STD_LOGIC_VECTOR ( 0 to 0 );
    axil_reset_led : out STD_LOGIC;
    mgt_clk_clk_n : in STD_LOGIC;
    mgt_clk_clk_p : in STD_LOGIC;
    mgt_clk_led : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_clk_led : out STD_LOGIC_VECTOR ( 0 to 0 );
    sfp_tx_dis : out STD_LOGIC_VECTOR ( 0 to 0 );
    sgmii_rxn : in STD_LOGIC;
    sgmii_rxp : in STD_LOGIC;
    sgmii_txn : out STD_LOGIC;
    sgmii_txp : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ACL : entity is "ACL,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ACL,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=42,numReposBlks=26,numNonXlnxBlks=0,numHierBlks=16,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ACL : entity is "ACL.hwdef";
end ACL;

architecture STRUCTURE of ACL is
  component ACL_axi_eth_0_0 is
  port (
    s_axi_lite_resetn : in STD_LOGIC;
    s_axi_lite_clk : in STD_LOGIC;
    mac_irq : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axi_txd_arstn : in STD_LOGIC;
    axi_txc_arstn : in STD_LOGIC;
    axi_rxd_arstn : in STD_LOGIC;
    axi_rxs_arstn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    signal_detect : in STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    gtpowergood : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ref_clk : in STD_LOGIC;
    gtref_clk_out : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axis_txc_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txc_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txc_tlast : in STD_LOGIC;
    s_axis_txc_tready : out STD_LOGIC;
    s_axis_txc_tvalid : in STD_LOGIC;
    s_axis_txd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txd_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txd_tlast : in STD_LOGIC;
    s_axis_txd_tready : out STD_LOGIC;
    s_axis_txd_tvalid : in STD_LOGIC;
    m_axis_rxd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxd_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxd_tlast : out STD_LOGIC;
    m_axis_rxd_tready : in STD_LOGIC;
    m_axis_rxd_tvalid : out STD_LOGIC;
    m_axis_rxs_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxs_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxs_tlast : out STD_LOGIC;
    m_axis_rxs_tready : in STD_LOGIC;
    m_axis_rxs_tvalid : out STD_LOGIC;
    sgmii_rxn : in STD_LOGIC;
    sgmii_rxp : in STD_LOGIC;
    sgmii_txn : out STD_LOGIC;
    sgmii_txp : out STD_LOGIC;
    mdio_mdc : out STD_LOGIC;
    mdio_mdio_i : in STD_LOGIC;
    mdio_mdio_o : out STD_LOGIC;
    mdio_mdio_t : out STD_LOGIC;
    mgt_clk_clk_n : in STD_LOGIC;
    mgt_clk_clk_p : in STD_LOGIC
  );
  end component ACL_axi_eth_0_0;
  component ACL_axi_eth_0_dma_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_sg_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_awvalid : out STD_LOGIC;
    m_axi_sg_awready : in STD_LOGIC;
    m_axi_sg_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_wlast : out STD_LOGIC;
    m_axi_sg_wvalid : out STD_LOGIC;
    m_axi_sg_wready : in STD_LOGIC;
    m_axi_sg_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_bvalid : in STD_LOGIC;
    m_axi_sg_bready : out STD_LOGIC;
    m_axi_sg_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_sg_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_sg_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_sg_arvalid : out STD_LOGIC;
    m_axi_sg_arready : in STD_LOGIC;
    m_axi_sg_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_sg_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_sg_rlast : in STD_LOGIC;
    m_axi_sg_rvalid : in STD_LOGIC;
    m_axi_sg_rready : out STD_LOGIC;
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_cntrl_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_cntrl_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_cntrl_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_cntrl_tvalid : out STD_LOGIC;
    m_axis_mm2s_cntrl_tready : in STD_LOGIC;
    m_axis_mm2s_cntrl_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    s2mm_sts_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_sts_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_sts_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_sts_tvalid : in STD_LOGIC;
    s_axis_s2mm_sts_tready : out STD_LOGIC;
    s_axis_s2mm_sts_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component ACL_axi_eth_0_dma_0;
  component ACL_ACL_RTL_top_v1_0_0_0 is
  port (
    s_axi_rxd_aclk : in STD_LOGIC;
    s_axi_rxd_aresetn : in STD_LOGIC;
    s_axi_rxd_tready : out STD_LOGIC;
    s_axi_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rxd_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rxd_tlast : in STD_LOGIC;
    s_axi_rxd_tvalid : in STD_LOGIC;
    s_axi_rxs_aclk : in STD_LOGIC;
    s_axi_rxs_aresetn : in STD_LOGIC;
    s_axi_rxs_tready : out STD_LOGIC;
    s_axi_rxs_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rxs_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rxs_tlast : in STD_LOGIC;
    s_axi_rxs_tvalid : in STD_LOGIC;
    m_axi_rxd_aclk : in STD_LOGIC;
    m_axi_rxd_aresetn : in STD_LOGIC;
    m_axi_rxd_tvalid : out STD_LOGIC;
    m_axi_rxd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rxd_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rxd_tlast : out STD_LOGIC;
    m_axi_rxd_tready : in STD_LOGIC;
    m_axi_rxs_aclk : in STD_LOGIC;
    m_axi_rxs_aresetn : in STD_LOGIC;
    m_axi_rxs_tvalid : out STD_LOGIC;
    m_axi_rxs_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rxs_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rxs_tlast : out STD_LOGIC;
    m_axi_rxs_tready : in STD_LOGIC
  );
  end component ACL_ACL_RTL_top_v1_0_0_0;
  signal ACL_RTL_top_v1_0_0_m_axi_rxd_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ACL_RTL_top_v1_0_0_m_axi_rxd_TLAST : STD_LOGIC;
  signal ACL_RTL_top_v1_0_0_m_axi_rxd_TREADY : STD_LOGIC;
  signal ACL_RTL_top_v1_0_0_m_axi_rxd_TVALID : STD_LOGIC;
  signal ACL_RTL_top_v1_0_0_m_axi_rxs_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ACL_RTL_top_v1_0_0_m_axi_rxs_TLAST : STD_LOGIC;
  signal ACL_RTL_top_v1_0_0_m_axi_rxs_TREADY : STD_LOGIC;
  signal ACL_RTL_top_v1_0_0_m_axi_rxs_TVALID : STD_LOGIC;
  signal S_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal S_AXI_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S_AXI_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXI_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_eth_0_dma_M_AXIS_CNTRL_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXIS_CNTRL_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_eth_0_dma_M_AXIS_CNTRL_TLAST : STD_LOGIC;
  signal axi_eth_0_dma_M_AXIS_CNTRL_TREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXIS_CNTRL_TVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_eth_0_dma_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_eth_0_dma_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_eth_0_dma_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_eth_0_dma_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_eth_0_dma_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_eth_0_dma_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_eth_0_dma_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_eth_0_dma_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_eth_0_dma_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_eth_0_dma_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_eth_0_dma_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_eth_0_dma_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_eth_0_dma_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_eth_0_dma_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_eth_0_dma_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_ARREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_ARVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_AWREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_AWVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_BREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_BVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_RLAST : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_RREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_RVALID : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_WLAST : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_WREADY : STD_LOGIC;
  signal axi_eth_0_dma_M_AXI_SG_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_eth_0_dma_M_AXI_SG_WVALID : STD_LOGIC;
  signal axi_eth_0_dma_mm2s_cntrl_reset_out_n : STD_LOGIC;
  signal axi_eth_0_dma_mm2s_introut : STD_LOGIC;
  signal axi_eth_0_dma_mm2s_prmry_reset_out_n : STD_LOGIC;
  signal axi_eth_0_dma_s2mm_introut : STD_LOGIC;
  signal axi_eth_0_dma_s2mm_prmry_reset_out_n : STD_LOGIC;
  signal axi_eth_0_dma_s2mm_sts_reset_out_n : STD_LOGIC;
  signal axi_eth_0_interrupt : STD_LOGIC;
  signal axi_eth_0_m_axis_rxd_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_m_axis_rxd_TLAST : STD_LOGIC;
  signal axi_eth_0_m_axis_rxd_TREADY : STD_LOGIC;
  signal axi_eth_0_m_axis_rxd_TVALID : STD_LOGIC;
  signal axi_eth_0_m_axis_rxs_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_eth_0_m_axis_rxs_TLAST : STD_LOGIC;
  signal axi_eth_0_m_axis_rxs_TREADY : STD_LOGIC;
  signal axi_eth_0_m_axis_rxs_TVALID : STD_LOGIC;
  signal axi_eth_0_rxuserclk2_out : STD_LOGIC;
  signal axi_eth_0_sgmii_RXN : STD_LOGIC;
  signal axi_eth_0_sgmii_RXP : STD_LOGIC;
  signal axi_eth_0_sgmii_TXN : STD_LOGIC;
  signal axi_eth_0_sgmii_TXP : STD_LOGIC;
  signal axi_eth_0_userclk2_out : STD_LOGIC;
  signal mgt_clk_1_CLK_N : STD_LOGIC;
  signal mgt_clk_1_CLK_P : STD_LOGIC;
  signal other_perph_Dout1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal other_perph_Dout2 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal other_perph_Dout3 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal other_perph_Res : STD_LOGIC;
  signal other_perph_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal other_perph_interrupt : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresetn_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal zynq_ps_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ps_M00_AXI_ARREADY : STD_LOGIC;
  signal zynq_ps_M00_AXI_ARVALID : STD_LOGIC;
  signal zynq_ps_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ps_M00_AXI_AWREADY : STD_LOGIC;
  signal zynq_ps_M00_AXI_AWVALID : STD_LOGIC;
  signal zynq_ps_M00_AXI_BREADY : STD_LOGIC;
  signal zynq_ps_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ps_M00_AXI_BVALID : STD_LOGIC;
  signal zynq_ps_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ps_M00_AXI_RREADY : STD_LOGIC;
  signal zynq_ps_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ps_M00_AXI_RVALID : STD_LOGIC;
  signal zynq_ps_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ps_M00_AXI_WREADY : STD_LOGIC;
  signal zynq_ps_M00_AXI_WVALID : STD_LOGIC;
  signal zynq_ps_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ps_M01_AXI_ARREADY : STD_LOGIC;
  signal zynq_ps_M01_AXI_ARVALID : STD_LOGIC;
  signal zynq_ps_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ps_M01_AXI_AWREADY : STD_LOGIC;
  signal zynq_ps_M01_AXI_AWVALID : STD_LOGIC;
  signal zynq_ps_M01_AXI_BREADY : STD_LOGIC;
  signal zynq_ps_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ps_M01_AXI_BVALID : STD_LOGIC;
  signal zynq_ps_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ps_M01_AXI_RREADY : STD_LOGIC;
  signal zynq_ps_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ps_M01_AXI_RVALID : STD_LOGIC;
  signal zynq_ps_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal zynq_ps_M01_AXI_WREADY : STD_LOGIC;
  signal zynq_ps_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ps_M01_AXI_WVALID : STD_LOGIC;
  signal zynq_ps_clk_50 : STD_LOGIC;
  signal NLW_ACL_RTL_top_v1_0_0_m_axi_rxd_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ACL_RTL_top_v1_0_0_m_axi_rxs_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_eth_0_gtpowergood_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_gtref_clk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_mac_irq_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_mdio_mdc_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_mdio_mdio_o_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_mdio_mdio_t_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_mmcm_locked_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_pma_reset_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_rxuserclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_userclk_out_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_eth_0_m_axis_rxd_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_eth_0_m_axis_rxs_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_eth_0_phy_rst_n_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_zynq_ps_emio_gpio_o_UNCONNECTED : STD_LOGIC_VECTOR ( 94 downto 0 );
  signal NLW_zynq_ps_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of mgt_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_N";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of mgt_clk_clk_n : signal is "XIL_INTERFACENAME mgt_clk, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of mgt_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_P";
  attribute X_INTERFACE_INFO of sgmii_rxn : signal is "xilinx.com:interface:sgmii:1.0 sgmii RXN";
  attribute X_INTERFACE_INFO of sgmii_rxp : signal is "xilinx.com:interface:sgmii:1.0 sgmii RXP";
  attribute X_INTERFACE_INFO of sgmii_txn : signal is "xilinx.com:interface:sgmii:1.0 sgmii TXN";
  attribute X_INTERFACE_INFO of sgmii_txp : signal is "xilinx.com:interface:sgmii:1.0 sgmii TXP";
begin
  axi_eth_0_sgmii_RXN <= sgmii_rxn;
  axi_eth_0_sgmii_RXP <= sgmii_rxp;
  axi_lite_clk_led(0) <= other_perph_Dout3(0);
  axil_reset_led <= other_perph_Res;
  mgt_clk_1_CLK_N <= mgt_clk_clk_n;
  mgt_clk_1_CLK_P <= mgt_clk_clk_p;
  mgt_clk_led(0) <= other_perph_Dout2(0);
  rx_clk_led(0) <= other_perph_Dout1(0);
  sfp_tx_dis(0) <= other_perph_dout(0);
  sgmii_txn <= axi_eth_0_sgmii_TXN;
  sgmii_txp <= axi_eth_0_sgmii_TXP;
ACL_RTL_top_v1_0_0: component ACL_ACL_RTL_top_v1_0_0_0
     port map (
      m_axi_rxd_aclk => s_axi_aclk_1,
      m_axi_rxd_aresetn => s_axi_aresetn_1(0),
      m_axi_rxd_tdata(31 downto 0) => ACL_RTL_top_v1_0_0_m_axi_rxd_TDATA(31 downto 0),
      m_axi_rxd_tlast => ACL_RTL_top_v1_0_0_m_axi_rxd_TLAST,
      m_axi_rxd_tready => ACL_RTL_top_v1_0_0_m_axi_rxd_TREADY,
      m_axi_rxd_tstrb(3 downto 0) => NLW_ACL_RTL_top_v1_0_0_m_axi_rxd_tstrb_UNCONNECTED(3 downto 0),
      m_axi_rxd_tvalid => ACL_RTL_top_v1_0_0_m_axi_rxd_TVALID,
      m_axi_rxs_aclk => s_axi_aclk_1,
      m_axi_rxs_aresetn => s_axi_aresetn_1(0),
      m_axi_rxs_tdata(31 downto 0) => ACL_RTL_top_v1_0_0_m_axi_rxs_TDATA(31 downto 0),
      m_axi_rxs_tlast => ACL_RTL_top_v1_0_0_m_axi_rxs_TLAST,
      m_axi_rxs_tready => ACL_RTL_top_v1_0_0_m_axi_rxs_TREADY,
      m_axi_rxs_tstrb(3 downto 0) => NLW_ACL_RTL_top_v1_0_0_m_axi_rxs_tstrb_UNCONNECTED(3 downto 0),
      m_axi_rxs_tvalid => ACL_RTL_top_v1_0_0_m_axi_rxs_TVALID,
      s_axi_rxd_aclk => s_axi_aclk_1,
      s_axi_rxd_aresetn => s_axi_aresetn_1(0),
      s_axi_rxd_tdata(31 downto 0) => axi_eth_0_m_axis_rxd_TDATA(31 downto 0),
      s_axi_rxd_tlast => axi_eth_0_m_axis_rxd_TLAST,
      s_axi_rxd_tready => axi_eth_0_m_axis_rxd_TREADY,
      s_axi_rxd_tstrb(3 downto 0) => B"1111",
      s_axi_rxd_tvalid => axi_eth_0_m_axis_rxd_TVALID,
      s_axi_rxs_aclk => s_axi_aclk_1,
      s_axi_rxs_aresetn => s_axi_aresetn_1(0),
      s_axi_rxs_tdata(31 downto 0) => axi_eth_0_m_axis_rxs_TDATA(31 downto 0),
      s_axi_rxs_tlast => axi_eth_0_m_axis_rxs_TLAST,
      s_axi_rxs_tready => axi_eth_0_m_axis_rxs_TREADY,
      s_axi_rxs_tstrb(3 downto 0) => B"1111",
      s_axi_rxs_tvalid => axi_eth_0_m_axis_rxs_TVALID
    );
axi_eth_0: component ACL_axi_eth_0_0
     port map (
      axi_rxd_arstn => axi_eth_0_dma_s2mm_prmry_reset_out_n,
      axi_rxs_arstn => axi_eth_0_dma_s2mm_sts_reset_out_n,
      axi_txc_arstn => axi_eth_0_dma_mm2s_cntrl_reset_out_n,
      axi_txd_arstn => axi_eth_0_dma_mm2s_prmry_reset_out_n,
      axis_clk => s_axi_aclk_1,
      gtpowergood => NLW_axi_eth_0_gtpowergood_UNCONNECTED,
      gtref_clk_out => NLW_axi_eth_0_gtref_clk_out_UNCONNECTED,
      interrupt => axi_eth_0_interrupt,
      m_axis_rxd_tdata(31 downto 0) => axi_eth_0_m_axis_rxd_TDATA(31 downto 0),
      m_axis_rxd_tkeep(3 downto 0) => NLW_axi_eth_0_m_axis_rxd_tkeep_UNCONNECTED(3 downto 0),
      m_axis_rxd_tlast => axi_eth_0_m_axis_rxd_TLAST,
      m_axis_rxd_tready => axi_eth_0_m_axis_rxd_TREADY,
      m_axis_rxd_tvalid => axi_eth_0_m_axis_rxd_TVALID,
      m_axis_rxs_tdata(31 downto 0) => axi_eth_0_m_axis_rxs_TDATA(31 downto 0),
      m_axis_rxs_tkeep(3 downto 0) => NLW_axi_eth_0_m_axis_rxs_tkeep_UNCONNECTED(3 downto 0),
      m_axis_rxs_tlast => axi_eth_0_m_axis_rxs_TLAST,
      m_axis_rxs_tready => axi_eth_0_m_axis_rxs_TREADY,
      m_axis_rxs_tvalid => axi_eth_0_m_axis_rxs_TVALID,
      mac_irq => NLW_axi_eth_0_mac_irq_UNCONNECTED,
      mdio_mdc => NLW_axi_eth_0_mdio_mdc_UNCONNECTED,
      mdio_mdio_i => '1',
      mdio_mdio_o => NLW_axi_eth_0_mdio_mdio_o_UNCONNECTED,
      mdio_mdio_t => NLW_axi_eth_0_mdio_mdio_t_UNCONNECTED,
      mgt_clk_clk_n => mgt_clk_1_CLK_N,
      mgt_clk_clk_p => mgt_clk_1_CLK_P,
      mmcm_locked_out => NLW_axi_eth_0_mmcm_locked_out_UNCONNECTED,
      phy_rst_n(0) => NLW_axi_eth_0_phy_rst_n_UNCONNECTED(0),
      pma_reset_out => NLW_axi_eth_0_pma_reset_out_UNCONNECTED,
      ref_clk => zynq_ps_clk_50,
      rxuserclk2_out => axi_eth_0_rxuserclk2_out,
      rxuserclk_out => NLW_axi_eth_0_rxuserclk_out_UNCONNECTED,
      s_axi_araddr(17 downto 0) => zynq_ps_M01_AXI_ARADDR(17 downto 0),
      s_axi_arready => zynq_ps_M01_AXI_ARREADY,
      s_axi_arvalid => zynq_ps_M01_AXI_ARVALID,
      s_axi_awaddr(17 downto 0) => zynq_ps_M01_AXI_AWADDR(17 downto 0),
      s_axi_awready => zynq_ps_M01_AXI_AWREADY,
      s_axi_awvalid => zynq_ps_M01_AXI_AWVALID,
      s_axi_bready => zynq_ps_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => zynq_ps_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => zynq_ps_M01_AXI_BVALID,
      s_axi_lite_clk => s_axi_aclk_1,
      s_axi_lite_resetn => s_axi_aresetn_1(0),
      s_axi_rdata(31 downto 0) => zynq_ps_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => zynq_ps_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => zynq_ps_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => zynq_ps_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => zynq_ps_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => zynq_ps_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => zynq_ps_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => zynq_ps_M01_AXI_WVALID,
      s_axis_txc_tdata(31 downto 0) => axi_eth_0_dma_M_AXIS_CNTRL_TDATA(31 downto 0),
      s_axis_txc_tkeep(3 downto 0) => axi_eth_0_dma_M_AXIS_CNTRL_TKEEP(3 downto 0),
      s_axis_txc_tlast => axi_eth_0_dma_M_AXIS_CNTRL_TLAST,
      s_axis_txc_tready => axi_eth_0_dma_M_AXIS_CNTRL_TREADY,
      s_axis_txc_tvalid => axi_eth_0_dma_M_AXIS_CNTRL_TVALID,
      s_axis_txd_tdata(31 downto 0) => axi_eth_0_dma_M_AXIS_MM2S_TDATA(31 downto 0),
      s_axis_txd_tkeep(3 downto 0) => axi_eth_0_dma_M_AXIS_MM2S_TKEEP(3 downto 0),
      s_axis_txd_tlast => axi_eth_0_dma_M_AXIS_MM2S_TLAST,
      s_axis_txd_tready => axi_eth_0_dma_M_AXIS_MM2S_TREADY,
      s_axis_txd_tvalid => axi_eth_0_dma_M_AXIS_MM2S_TVALID,
      sgmii_rxn => axi_eth_0_sgmii_RXN,
      sgmii_rxp => axi_eth_0_sgmii_RXP,
      sgmii_txn => axi_eth_0_sgmii_TXN,
      sgmii_txp => axi_eth_0_sgmii_TXP,
      signal_detect => '1',
      userclk2_out => axi_eth_0_userclk2_out,
      userclk_out => NLW_axi_eth_0_userclk_out_UNCONNECTED
    );
axi_eth_0_dma: component ACL_axi_eth_0_dma_0
     port map (
      axi_resetn => s_axi_aresetn_1(0),
      m_axi_mm2s_aclk => s_axi_aclk_1,
      m_axi_mm2s_araddr(31 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_eth_0_dma_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_eth_0_dma_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_eth_0_dma_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_eth_0_dma_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_eth_0_dma_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_eth_0_dma_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_eth_0_dma_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => s_axi_aclk_1,
      m_axi_s2mm_awaddr(31 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_eth_0_dma_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_eth_0_dma_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_eth_0_dma_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_eth_0_dma_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_eth_0_dma_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_eth_0_dma_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_eth_0_dma_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_eth_0_dma_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_eth_0_dma_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_eth_0_dma_M_AXI_S2MM_WVALID,
      m_axi_sg_aclk => s_axi_aclk_1,
      m_axi_sg_araddr(31 downto 0) => axi_eth_0_dma_M_AXI_SG_ARADDR(31 downto 0),
      m_axi_sg_arburst(1 downto 0) => axi_eth_0_dma_M_AXI_SG_ARBURST(1 downto 0),
      m_axi_sg_arcache(3 downto 0) => axi_eth_0_dma_M_AXI_SG_ARCACHE(3 downto 0),
      m_axi_sg_arlen(7 downto 0) => axi_eth_0_dma_M_AXI_SG_ARLEN(7 downto 0),
      m_axi_sg_arprot(2 downto 0) => axi_eth_0_dma_M_AXI_SG_ARPROT(2 downto 0),
      m_axi_sg_arready => axi_eth_0_dma_M_AXI_SG_ARREADY,
      m_axi_sg_arsize(2 downto 0) => axi_eth_0_dma_M_AXI_SG_ARSIZE(2 downto 0),
      m_axi_sg_arvalid => axi_eth_0_dma_M_AXI_SG_ARVALID,
      m_axi_sg_awaddr(31 downto 0) => axi_eth_0_dma_M_AXI_SG_AWADDR(31 downto 0),
      m_axi_sg_awburst(1 downto 0) => axi_eth_0_dma_M_AXI_SG_AWBURST(1 downto 0),
      m_axi_sg_awcache(3 downto 0) => axi_eth_0_dma_M_AXI_SG_AWCACHE(3 downto 0),
      m_axi_sg_awlen(7 downto 0) => axi_eth_0_dma_M_AXI_SG_AWLEN(7 downto 0),
      m_axi_sg_awprot(2 downto 0) => axi_eth_0_dma_M_AXI_SG_AWPROT(2 downto 0),
      m_axi_sg_awready => axi_eth_0_dma_M_AXI_SG_AWREADY,
      m_axi_sg_awsize(2 downto 0) => axi_eth_0_dma_M_AXI_SG_AWSIZE(2 downto 0),
      m_axi_sg_awvalid => axi_eth_0_dma_M_AXI_SG_AWVALID,
      m_axi_sg_bready => axi_eth_0_dma_M_AXI_SG_BREADY,
      m_axi_sg_bresp(1 downto 0) => axi_eth_0_dma_M_AXI_SG_BRESP(1 downto 0),
      m_axi_sg_bvalid => axi_eth_0_dma_M_AXI_SG_BVALID,
      m_axi_sg_rdata(31 downto 0) => axi_eth_0_dma_M_AXI_SG_RDATA(31 downto 0),
      m_axi_sg_rlast => axi_eth_0_dma_M_AXI_SG_RLAST,
      m_axi_sg_rready => axi_eth_0_dma_M_AXI_SG_RREADY,
      m_axi_sg_rresp(1 downto 0) => axi_eth_0_dma_M_AXI_SG_RRESP(1 downto 0),
      m_axi_sg_rvalid => axi_eth_0_dma_M_AXI_SG_RVALID,
      m_axi_sg_wdata(31 downto 0) => axi_eth_0_dma_M_AXI_SG_WDATA(31 downto 0),
      m_axi_sg_wlast => axi_eth_0_dma_M_AXI_SG_WLAST,
      m_axi_sg_wready => axi_eth_0_dma_M_AXI_SG_WREADY,
      m_axi_sg_wstrb(3 downto 0) => axi_eth_0_dma_M_AXI_SG_WSTRB(3 downto 0),
      m_axi_sg_wvalid => axi_eth_0_dma_M_AXI_SG_WVALID,
      m_axis_mm2s_cntrl_tdata(31 downto 0) => axi_eth_0_dma_M_AXIS_CNTRL_TDATA(31 downto 0),
      m_axis_mm2s_cntrl_tkeep(3 downto 0) => axi_eth_0_dma_M_AXIS_CNTRL_TKEEP(3 downto 0),
      m_axis_mm2s_cntrl_tlast => axi_eth_0_dma_M_AXIS_CNTRL_TLAST,
      m_axis_mm2s_cntrl_tready => axi_eth_0_dma_M_AXIS_CNTRL_TREADY,
      m_axis_mm2s_cntrl_tvalid => axi_eth_0_dma_M_AXIS_CNTRL_TVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_eth_0_dma_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => axi_eth_0_dma_M_AXIS_MM2S_TKEEP(3 downto 0),
      m_axis_mm2s_tlast => axi_eth_0_dma_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_eth_0_dma_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_eth_0_dma_M_AXIS_MM2S_TVALID,
      mm2s_cntrl_reset_out_n => axi_eth_0_dma_mm2s_cntrl_reset_out_n,
      mm2s_introut => axi_eth_0_dma_mm2s_introut,
      mm2s_prmry_reset_out_n => axi_eth_0_dma_mm2s_prmry_reset_out_n,
      s2mm_introut => axi_eth_0_dma_s2mm_introut,
      s2mm_prmry_reset_out_n => axi_eth_0_dma_s2mm_prmry_reset_out_n,
      s2mm_sts_reset_out_n => axi_eth_0_dma_s2mm_sts_reset_out_n,
      s_axi_lite_aclk => s_axi_aclk_1,
      s_axi_lite_araddr(9 downto 0) => zynq_ps_M00_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => zynq_ps_M00_AXI_ARREADY,
      s_axi_lite_arvalid => zynq_ps_M00_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => zynq_ps_M00_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => zynq_ps_M00_AXI_AWREADY,
      s_axi_lite_awvalid => zynq_ps_M00_AXI_AWVALID,
      s_axi_lite_bready => zynq_ps_M00_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => zynq_ps_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => zynq_ps_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => zynq_ps_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => zynq_ps_M00_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => zynq_ps_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => zynq_ps_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => zynq_ps_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => zynq_ps_M00_AXI_WREADY,
      s_axi_lite_wvalid => zynq_ps_M00_AXI_WVALID,
      s_axis_s2mm_sts_tdata(31 downto 0) => ACL_RTL_top_v1_0_0_m_axi_rxs_TDATA(31 downto 0),
      s_axis_s2mm_sts_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_sts_tlast => ACL_RTL_top_v1_0_0_m_axi_rxs_TLAST,
      s_axis_s2mm_sts_tready => ACL_RTL_top_v1_0_0_m_axi_rxs_TREADY,
      s_axis_s2mm_sts_tvalid => ACL_RTL_top_v1_0_0_m_axi_rxs_TVALID,
      s_axis_s2mm_tdata(31 downto 0) => ACL_RTL_top_v1_0_0_m_axi_rxd_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_tlast => ACL_RTL_top_v1_0_0_m_axi_rxd_TLAST,
      s_axis_s2mm_tready => ACL_RTL_top_v1_0_0_m_axi_rxd_TREADY,
      s_axis_s2mm_tvalid => ACL_RTL_top_v1_0_0_m_axi_rxd_TVALID
    );
other_perph: entity work.other_perph_imp_77TATY
     port map (
      CLK => axi_eth_0_rxuserclk2_out,
      CLK1 => axi_eth_0_userclk2_out,
      Dout1(0) => other_perph_Dout1(0),
      Dout2(0) => other_perph_Dout2(0),
      Dout3(0) => other_perph_Dout3(0),
      Res => other_perph_Res,
      S_AXI_araddr(39 downto 0) => S_AXI_1_ARADDR(39 downto 0),
      S_AXI_arready(0) => S_AXI_1_ARREADY(0),
      S_AXI_arvalid(0) => S_AXI_1_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => S_AXI_1_AWADDR(39 downto 0),
      S_AXI_awready(0) => S_AXI_1_AWREADY(0),
      S_AXI_awvalid(0) => S_AXI_1_AWVALID(0),
      S_AXI_bready(0) => S_AXI_1_BREADY(0),
      S_AXI_bresp(1 downto 0) => S_AXI_1_BRESP(1 downto 0),
      S_AXI_bvalid(0) => S_AXI_1_BVALID(0),
      S_AXI_rdata(31 downto 0) => S_AXI_1_RDATA(31 downto 0),
      S_AXI_rready(0) => S_AXI_1_RREADY(0),
      S_AXI_rresp(1 downto 0) => S_AXI_1_RRESP(1 downto 0),
      S_AXI_rvalid(0) => S_AXI_1_RVALID(0),
      S_AXI_wdata(31 downto 0) => S_AXI_1_WDATA(31 downto 0),
      S_AXI_wready(0) => S_AXI_1_WREADY(0),
      S_AXI_wstrb(3 downto 0) => S_AXI_1_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => S_AXI_1_WVALID(0),
      dout(0) => other_perph_dout(0),
      interrupt => other_perph_interrupt,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_aresetn => s_axi_aresetn_1(0)
    );
zynq_ps: entity work.zynq_ps_imp_1RA2FC1
     port map (
      In0 => axi_eth_0_dma_mm2s_introut,
      In1 => axi_eth_0_dma_s2mm_introut,
      In2 => axi_eth_0_interrupt,
      In3 => other_perph_interrupt,
      M00_AXI_araddr(39 downto 0) => zynq_ps_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arready => zynq_ps_M00_AXI_ARREADY,
      M00_AXI_arvalid => zynq_ps_M00_AXI_ARVALID,
      M00_AXI_awaddr(39 downto 0) => zynq_ps_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awready => zynq_ps_M00_AXI_AWREADY,
      M00_AXI_awvalid => zynq_ps_M00_AXI_AWVALID,
      M00_AXI_bready => zynq_ps_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => zynq_ps_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => zynq_ps_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => zynq_ps_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => zynq_ps_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => zynq_ps_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => zynq_ps_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => zynq_ps_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => zynq_ps_M00_AXI_WREADY,
      M00_AXI_wvalid => zynq_ps_M00_AXI_WVALID,
      M01_AXI_araddr(39 downto 0) => zynq_ps_M01_AXI_ARADDR(39 downto 0),
      M01_AXI_arready => zynq_ps_M01_AXI_ARREADY,
      M01_AXI_arvalid => zynq_ps_M01_AXI_ARVALID,
      M01_AXI_awaddr(39 downto 0) => zynq_ps_M01_AXI_AWADDR(39 downto 0),
      M01_AXI_awready => zynq_ps_M01_AXI_AWREADY,
      M01_AXI_awvalid => zynq_ps_M01_AXI_AWVALID,
      M01_AXI_bready => zynq_ps_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => zynq_ps_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => zynq_ps_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => zynq_ps_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => zynq_ps_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => zynq_ps_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => zynq_ps_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => zynq_ps_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => zynq_ps_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => zynq_ps_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => zynq_ps_M01_AXI_WVALID,
      M02_AXI_araddr(39 downto 0) => S_AXI_1_ARADDR(39 downto 0),
      M02_AXI_arready(0) => S_AXI_1_ARREADY(0),
      M02_AXI_arvalid(0) => S_AXI_1_ARVALID(0),
      M02_AXI_awaddr(39 downto 0) => S_AXI_1_AWADDR(39 downto 0),
      M02_AXI_awready(0) => S_AXI_1_AWREADY(0),
      M02_AXI_awvalid(0) => S_AXI_1_AWVALID(0),
      M02_AXI_bready(0) => S_AXI_1_BREADY(0),
      M02_AXI_bresp(1 downto 0) => S_AXI_1_BRESP(1 downto 0),
      M02_AXI_bvalid(0) => S_AXI_1_BVALID(0),
      M02_AXI_rdata(31 downto 0) => S_AXI_1_RDATA(31 downto 0),
      M02_AXI_rready(0) => S_AXI_1_RREADY(0),
      M02_AXI_rresp(1 downto 0) => S_AXI_1_RRESP(1 downto 0),
      M02_AXI_rvalid(0) => S_AXI_1_RVALID(0),
      M02_AXI_wdata(31 downto 0) => S_AXI_1_WDATA(31 downto 0),
      M02_AXI_wready(0) => S_AXI_1_WREADY(0),
      M02_AXI_wstrb(3 downto 0) => S_AXI_1_WSTRB(3 downto 0),
      M02_AXI_wvalid(0) => S_AXI_1_WVALID(0),
      S00_AXI_araddr(31 downto 0) => axi_eth_0_dma_M_AXI_SG_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_eth_0_dma_M_AXI_SG_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_eth_0_dma_M_AXI_SG_ARCACHE(3 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_eth_0_dma_M_AXI_SG_ARLEN(7 downto 0),
      S00_AXI_arprot(2 downto 0) => axi_eth_0_dma_M_AXI_SG_ARPROT(2 downto 0),
      S00_AXI_arready => axi_eth_0_dma_M_AXI_SG_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_eth_0_dma_M_AXI_SG_ARSIZE(2 downto 0),
      S00_AXI_arvalid => axi_eth_0_dma_M_AXI_SG_ARVALID,
      S00_AXI_awaddr(31 downto 0) => axi_eth_0_dma_M_AXI_SG_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_eth_0_dma_M_AXI_SG_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_eth_0_dma_M_AXI_SG_AWCACHE(3 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_eth_0_dma_M_AXI_SG_AWLEN(7 downto 0),
      S00_AXI_awprot(2 downto 0) => axi_eth_0_dma_M_AXI_SG_AWPROT(2 downto 0),
      S00_AXI_awready => axi_eth_0_dma_M_AXI_SG_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_eth_0_dma_M_AXI_SG_AWSIZE(2 downto 0),
      S00_AXI_awvalid => axi_eth_0_dma_M_AXI_SG_AWVALID,
      S00_AXI_bready => axi_eth_0_dma_M_AXI_SG_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_eth_0_dma_M_AXI_SG_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_eth_0_dma_M_AXI_SG_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_eth_0_dma_M_AXI_SG_RDATA(31 downto 0),
      S00_AXI_rlast => axi_eth_0_dma_M_AXI_SG_RLAST,
      S00_AXI_rready => axi_eth_0_dma_M_AXI_SG_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_eth_0_dma_M_AXI_SG_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_eth_0_dma_M_AXI_SG_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_eth_0_dma_M_AXI_SG_WDATA(31 downto 0),
      S00_AXI_wlast => axi_eth_0_dma_M_AXI_SG_WLAST,
      S00_AXI_wready => axi_eth_0_dma_M_AXI_SG_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_eth_0_dma_M_AXI_SG_WSTRB(3 downto 0),
      S00_AXI_wvalid => axi_eth_0_dma_M_AXI_SG_WVALID,
      S01_AXI_araddr(31 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARLEN(7 downto 0),
      S01_AXI_arprot(2 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARPROT(2 downto 0),
      S01_AXI_arready => axi_eth_0_dma_M_AXI_MM2S_ARREADY,
      S01_AXI_arsize(2 downto 0) => axi_eth_0_dma_M_AXI_MM2S_ARSIZE(2 downto 0),
      S01_AXI_arvalid => axi_eth_0_dma_M_AXI_MM2S_ARVALID,
      S01_AXI_rdata(31 downto 0) => axi_eth_0_dma_M_AXI_MM2S_RDATA(31 downto 0),
      S01_AXI_rlast => axi_eth_0_dma_M_AXI_MM2S_RLAST,
      S01_AXI_rready => axi_eth_0_dma_M_AXI_MM2S_RREADY,
      S01_AXI_rresp(1 downto 0) => axi_eth_0_dma_M_AXI_MM2S_RRESP(1 downto 0),
      S01_AXI_rvalid => axi_eth_0_dma_M_AXI_MM2S_RVALID,
      S02_AXI_awaddr(31 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWLEN(7 downto 0),
      S02_AXI_awprot(2 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWPROT(2 downto 0),
      S02_AXI_awready => axi_eth_0_dma_M_AXI_S2MM_AWREADY,
      S02_AXI_awsize(2 downto 0) => axi_eth_0_dma_M_AXI_S2MM_AWSIZE(2 downto 0),
      S02_AXI_awvalid => axi_eth_0_dma_M_AXI_S2MM_AWVALID,
      S02_AXI_bready => axi_eth_0_dma_M_AXI_S2MM_BREADY,
      S02_AXI_bresp(1 downto 0) => axi_eth_0_dma_M_AXI_S2MM_BRESP(1 downto 0),
      S02_AXI_bvalid => axi_eth_0_dma_M_AXI_S2MM_BVALID,
      S02_AXI_wdata(31 downto 0) => axi_eth_0_dma_M_AXI_S2MM_WDATA(31 downto 0),
      S02_AXI_wlast => axi_eth_0_dma_M_AXI_S2MM_WLAST,
      S02_AXI_wready => axi_eth_0_dma_M_AXI_S2MM_WREADY,
      S02_AXI_wstrb(3 downto 0) => axi_eth_0_dma_M_AXI_S2MM_WSTRB(3 downto 0),
      S02_AXI_wvalid => axi_eth_0_dma_M_AXI_S2MM_WVALID,
      clk_50 => zynq_ps_clk_50,
      clk_75 => s_axi_aclk_1,
      emio_gpio_o(94 downto 0) => NLW_zynq_ps_emio_gpio_o_UNCONNECTED(94 downto 0),
      peripheral_reset(0) => NLW_zynq_ps_peripheral_reset_UNCONNECTED(0),
      perph_aresetn_75(0) => s_axi_aresetn_1(0)
    );
end STRUCTURE;
