-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:axi_ethernet:7.2
-- IP Revision: 14

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ACL_axi_eth_0_0 IS
  PORT (
    s_axi_lite_resetn : IN STD_LOGIC;
    s_axi_lite_clk : IN STD_LOGIC;
    mac_irq : OUT STD_LOGIC;
    axis_clk : IN STD_LOGIC;
    axi_txd_arstn : IN STD_LOGIC;
    axi_txc_arstn : IN STD_LOGIC;
    axi_rxd_arstn : IN STD_LOGIC;
    axi_rxs_arstn : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    signal_detect : IN STD_LOGIC;
    mmcm_locked_out : OUT STD_LOGIC;
    rxuserclk_out : OUT STD_LOGIC;
    rxuserclk2_out : OUT STD_LOGIC;
    userclk_out : OUT STD_LOGIC;
    userclk2_out : OUT STD_LOGIC;
    pma_reset_out : OUT STD_LOGIC;
    gtpowergood : OUT STD_LOGIC;
    phy_rst_n : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    ref_clk : IN STD_LOGIC;
    gtref_clk_out : OUT STD_LOGIC;
    s_axi_araddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    s_axi_arready : OUT STD_LOGIC;
    s_axi_arvalid : IN STD_LOGIC;
    s_axi_awaddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    s_axi_awready : OUT STD_LOGIC;
    s_axi_awvalid : IN STD_LOGIC;
    s_axi_bready : IN STD_LOGIC;
    s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_bvalid : OUT STD_LOGIC;
    s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rready : IN STD_LOGIC;
    s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_rvalid : OUT STD_LOGIC;
    s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_wready : OUT STD_LOGIC;
    s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_wvalid : IN STD_LOGIC;
    s_axis_txc_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_txc_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_txc_tlast : IN STD_LOGIC;
    s_axis_txc_tready : OUT STD_LOGIC;
    s_axis_txc_tvalid : IN STD_LOGIC;
    s_axis_txd_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_txd_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axis_txd_tlast : IN STD_LOGIC;
    s_axis_txd_tready : OUT STD_LOGIC;
    s_axis_txd_tvalid : IN STD_LOGIC;
    m_axis_rxd_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_rxd_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_rxd_tlast : OUT STD_LOGIC;
    m_axis_rxd_tready : IN STD_LOGIC;
    m_axis_rxd_tvalid : OUT STD_LOGIC;
    m_axis_rxs_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_rxs_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axis_rxs_tlast : OUT STD_LOGIC;
    m_axis_rxs_tready : IN STD_LOGIC;
    m_axis_rxs_tvalid : OUT STD_LOGIC;
    sgmii_rxn : IN STD_LOGIC;
    sgmii_rxp : IN STD_LOGIC;
    sgmii_txn : OUT STD_LOGIC;
    sgmii_txp : OUT STD_LOGIC;
    mdio_mdc : OUT STD_LOGIC;
    mdio_mdio_i : IN STD_LOGIC;
    mdio_mdio_o : OUT STD_LOGIC;
    mdio_mdio_t : OUT STD_LOGIC;
    mgt_clk_clk_n : IN STD_LOGIC;
    mgt_clk_clk_p : IN STD_LOGIC
  );
END ACL_axi_eth_0_0;

ARCHITECTURE ACL_axi_eth_0_0_arch OF ACL_axi_eth_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF ACL_axi_eth_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_fd73 IS
    PORT (
      s_axi_lite_resetn : IN STD_LOGIC;
      s_axi_lite_clk : IN STD_LOGIC;
      mac_irq : OUT STD_LOGIC;
      axis_clk : IN STD_LOGIC;
      axi_txd_arstn : IN STD_LOGIC;
      axi_txc_arstn : IN STD_LOGIC;
      axi_rxd_arstn : IN STD_LOGIC;
      axi_rxs_arstn : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      signal_detect : IN STD_LOGIC;
      mmcm_locked_out : OUT STD_LOGIC;
      rxuserclk_out : OUT STD_LOGIC;
      rxuserclk2_out : OUT STD_LOGIC;
      userclk_out : OUT STD_LOGIC;
      userclk2_out : OUT STD_LOGIC;
      pma_reset_out : OUT STD_LOGIC;
      gtpowergood : OUT STD_LOGIC;
      phy_rst_n : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      ref_clk : IN STD_LOGIC;
      gtref_clk_out : OUT STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      s_axi_arready : OUT STD_LOGIC;
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      s_axi_awready : OUT STD_LOGIC;
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rready : IN STD_LOGIC;
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wready : OUT STD_LOGIC;
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axis_txc_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_txc_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axis_txc_tlast : IN STD_LOGIC;
      s_axis_txc_tready : OUT STD_LOGIC;
      s_axis_txc_tvalid : IN STD_LOGIC;
      s_axis_txd_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_txd_tkeep : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axis_txd_tlast : IN STD_LOGIC;
      s_axis_txd_tready : OUT STD_LOGIC;
      s_axis_txd_tvalid : IN STD_LOGIC;
      m_axis_rxd_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_rxd_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_rxd_tlast : OUT STD_LOGIC;
      m_axis_rxd_tready : IN STD_LOGIC;
      m_axis_rxd_tvalid : OUT STD_LOGIC;
      m_axis_rxs_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_rxs_tkeep : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axis_rxs_tlast : OUT STD_LOGIC;
      m_axis_rxs_tready : IN STD_LOGIC;
      m_axis_rxs_tvalid : OUT STD_LOGIC;
      sgmii_rxn : IN STD_LOGIC;
      sgmii_rxp : IN STD_LOGIC;
      sgmii_txn : OUT STD_LOGIC;
      sgmii_txp : OUT STD_LOGIC;
      mdio_mdc : OUT STD_LOGIC;
      mdio_mdio_i : IN STD_LOGIC;
      mdio_mdio_o : OUT STD_LOGIC;
      mdio_mdio_t : OUT STD_LOGIC;
      mgt_clk_clk_n : IN STD_LOGIC;
      mgt_clk_clk_p : IN STD_LOGIC
    );
  END COMPONENT bd_fd73;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF ACL_axi_eth_0_0_arch: ARCHITECTURE IS "bd_fd73,Vivado 2023.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF ACL_axi_eth_0_0_arch : ARCHITECTURE IS "ACL_axi_eth_0_0,bd_fd73,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF ACL_axi_eth_0_0_arch: ARCHITECTURE IS "ACL_axi_eth_0_0,bd_fd73,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_ethernet,x_ipVersion=7.2,x_ipCoreRevision=14,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,Component_Name=ACL_axi_eth_0_0,USE_BOARD_FLOW=false,ETHERNET_BOARD_INTERFACE=Custom,speed_1_2p5=1G,PHY_TYPE=SGMII,processor_mode=true,PHYRST_BOARD_INTERFACE=Custom,PHYRST_BOARD_INTERFACE_DUMMY_PORT=Custom,DIFFCLK_BOARD_INTERFACE=Custom,MDIO_BOARD_INTERFACE=Custom,ENABLE_LVDS=false,Enable_1588=false,ENABLE_AVB=fal" & 
"se,Enable_1588_1step=false,Timer_Format=0,TIMER_CLK_PERIOD=4000,PHYADDR=2,gt_type=GTH,Include_IO=true,SupportLevel=1,GTinEx=false,TransceiverControl=false,EnableAsyncSGMII=false,ClockSelection=Sync,tx_in_upper_nibble=true,txlane0_placement=DIFF_PAIR_0,rxlane0_placement=DIFF_PAIR_0,txlane1_placement=DIFF_PAIR_1,rxlane1_placement=DIFF_PAIR_1,InstantiateBitslice0=false,rxnibblebitslice0used=false,RXMEM=32k,TXMEM=32k,TXCSUM=Full,RXCSUM=Full,TXVLAN_TRAN=false,RXVLAN_TRAN=false,TXVLAN_TAG=false,RXVLAN" & 
"_TAG=false,TXVLAN_STRP=false,RXVLAN_STRP=false,MCAST_EXTEND=false,Frame_Filter=true,Number_of_Table_Entries=4,Statistics_Counters=true,Statistics_Reset=true,Statistics_Width=64bit,Enable_Pfc=false,drpclkrate=50.0,gtrefclkrate=156.25,lvdsclkrate=125,axiliteclkrate=100.0,axisclkrate=100.0,gtrefclksrc=clk0,gtlocation=X1Y13,SIMULATION_MODE=false,VERSAL_GT_BOARD_FLOW=0,x_ipLicense=tri_mode_eth_mac@2015.04(design_linking),x_ipLicense=eth_avb_endpoint@2015.04(design_linking)}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_rxd_arstn: SIGNAL IS "XIL_INTERFACENAME RST.axi_rxd_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_rxd_arstn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.axi_rxd_arstn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_rxs_arstn: SIGNAL IS "XIL_INTERFACENAME RST.axi_rxs_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_rxs_arstn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.axi_rxs_arstn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_txc_arstn: SIGNAL IS "XIL_INTERFACENAME RST.axi_txc_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_txc_arstn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.axi_txc_arstn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axi_txd_arstn: SIGNAL IS "XIL_INTERFACENAME RST.axi_txd_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axi_txd_arstn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.axi_txd_arstn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF axis_clk: SIGNAL IS "XIL_INTERFACENAME CLK.axis_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF m_axis_rxd:m_axis_rxs:s_axis_txc:s_axis_txd, ASSOCIATED_RESET axi_rxd_arstn:axi_rxs_arstn:axi_txc_arstn:axi_txd_arstn, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF axis_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.axis_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF gtref_clk_out: SIGNAL IS "XIL_INTERFACENAME CLK.gtref_clk_out, FREQ_HZ 156250000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_gtrefclk_out, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF gtref_clk_out: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.gtref_clk_out CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME INTR.interrupt, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR.interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_rxd_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxd_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxd TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_rxs_tdata: SIGNAL IS "XIL_INTERFACENAME m_axis_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_rxs_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis_rxs TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF mac_irq: SIGNAL IS "XIL_INTERFACENAME INTR.mac_irq, SENSITIVITY EDGE_RISING, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF mac_irq: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR.mac_irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF mdio_mdc: SIGNAL IS "XIL_INTERFACENAME mdio, CAN_DEBUG false, BOARD.ASSOCIATED_PARAM MDIO_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_mdc: SIGNAL IS "xilinx.com:interface:mdio:1.0 mdio MDC";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_mdio_i: SIGNAL IS "xilinx.com:interface:mdio:1.0 mdio MDIO_I";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_mdio_o: SIGNAL IS "xilinx.com:interface:mdio:1.0 mdio MDIO_O";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_mdio_t: SIGNAL IS "xilinx.com:interface:mdio:1.0 mdio MDIO_T";
  ATTRIBUTE X_INTERFACE_PARAMETER OF mgt_clk_clk_n: SIGNAL IS "XIL_INTERFACENAME mgt_clk, CAN_DEBUG false, FREQ_HZ 100000000, TYPE ETH_MGT_CLK, BOARD.ASSOCIATED_PARAM DIFFCLK_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF mgt_clk_clk_n: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_N";
  ATTRIBUTE X_INTERFACE_INFO OF mgt_clk_clk_p: SIGNAL IS "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_P";
  ATTRIBUTE X_INTERFACE_PARAMETER OF phy_rst_n: SIGNAL IS "XIL_INTERFACENAME RST.phy_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0, BOARD.ASSOCIATED_PARAM PHYRST_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF phy_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.phy_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF pma_reset_out: SIGNAL IS "XIL_INTERFACENAME RST.pma_reset_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF pma_reset_out: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.pma_reset_out RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ref_clk: SIGNAL IS "XIL_INTERFACENAME CLK.ref_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 1000000, PHASE 0.0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ref_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.ref_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rxuserclk2_out: SIGNAL IS "XIL_INTERFACENAME CLK.rxuserclk2_out, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_rxuserclk2_out, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rxuserclk2_out: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.rxuserclk2_out CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rxuserclk_out: SIGNAL IS "XIL_INTERFACENAME CLK.rxuserclk_out, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_rxuserclk_out, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rxuserclk_out: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.rxuserclk_out CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_araddr: SIGNAL IS "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_B" & 
"ITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_clk: SIGNAL IS "XIL_INTERFACENAME CLK.s_axi_lite_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_lite_resetn, INSERT_VIP 0, ASSOCIATED_CLKEN CE";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.s_axi_lite_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_lite_resetn: SIGNAL IS "XIL_INTERFACENAME RST.s_axi_lite_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_lite_resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.s_axi_lite_resetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_txc_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_txc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txc_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txc TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_txd_tdata: SIGNAL IS "XIL_INTERFACENAME s_axis_txd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_txd_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis_txd TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF sgmii_rxn: SIGNAL IS "XIL_INTERFACENAME sgmii, BOARD.ASSOCIATED_PARAM ETHERNET_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF sgmii_rxn: SIGNAL IS "xilinx.com:interface:sgmii:1.0 sgmii RXN";
  ATTRIBUTE X_INTERFACE_INFO OF sgmii_rxp: SIGNAL IS "xilinx.com:interface:sgmii:1.0 sgmii RXP";
  ATTRIBUTE X_INTERFACE_INFO OF sgmii_txn: SIGNAL IS "xilinx.com:interface:sgmii:1.0 sgmii TXN";
  ATTRIBUTE X_INTERFACE_INFO OF sgmii_txp: SIGNAL IS "xilinx.com:interface:sgmii:1.0 sgmii TXP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF userclk2_out: SIGNAL IS "XIL_INTERFACENAME CLK.userclk2_out, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_userclk2_out, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF userclk2_out: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.userclk2_out CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF userclk_out: SIGNAL IS "XIL_INTERFACENAME CLK.userclk_out, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_userclk_out, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF userclk_out: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.userclk_out CLK";
BEGIN
  U0 : bd_fd73
    PORT MAP (
      s_axi_lite_resetn => s_axi_lite_resetn,
      s_axi_lite_clk => s_axi_lite_clk,
      mac_irq => mac_irq,
      axis_clk => axis_clk,
      axi_txd_arstn => axi_txd_arstn,
      axi_txc_arstn => axi_txc_arstn,
      axi_rxd_arstn => axi_rxd_arstn,
      axi_rxs_arstn => axi_rxs_arstn,
      interrupt => interrupt,
      signal_detect => signal_detect,
      mmcm_locked_out => mmcm_locked_out,
      rxuserclk_out => rxuserclk_out,
      rxuserclk2_out => rxuserclk2_out,
      userclk_out => userclk_out,
      userclk2_out => userclk2_out,
      pma_reset_out => pma_reset_out,
      gtpowergood => gtpowergood,
      phy_rst_n => phy_rst_n,
      ref_clk => ref_clk,
      gtref_clk_out => gtref_clk_out,
      s_axi_araddr => s_axi_araddr,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr => s_axi_awaddr,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp => s_axi_bresp,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata => s_axi_rdata,
      s_axi_rready => s_axi_rready,
      s_axi_rresp => s_axi_rresp,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata => s_axi_wdata,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb => s_axi_wstrb,
      s_axi_wvalid => s_axi_wvalid,
      s_axis_txc_tdata => s_axis_txc_tdata,
      s_axis_txc_tkeep => s_axis_txc_tkeep,
      s_axis_txc_tlast => s_axis_txc_tlast,
      s_axis_txc_tready => s_axis_txc_tready,
      s_axis_txc_tvalid => s_axis_txc_tvalid,
      s_axis_txd_tdata => s_axis_txd_tdata,
      s_axis_txd_tkeep => s_axis_txd_tkeep,
      s_axis_txd_tlast => s_axis_txd_tlast,
      s_axis_txd_tready => s_axis_txd_tready,
      s_axis_txd_tvalid => s_axis_txd_tvalid,
      m_axis_rxd_tdata => m_axis_rxd_tdata,
      m_axis_rxd_tkeep => m_axis_rxd_tkeep,
      m_axis_rxd_tlast => m_axis_rxd_tlast,
      m_axis_rxd_tready => m_axis_rxd_tready,
      m_axis_rxd_tvalid => m_axis_rxd_tvalid,
      m_axis_rxs_tdata => m_axis_rxs_tdata,
      m_axis_rxs_tkeep => m_axis_rxs_tkeep,
      m_axis_rxs_tlast => m_axis_rxs_tlast,
      m_axis_rxs_tready => m_axis_rxs_tready,
      m_axis_rxs_tvalid => m_axis_rxs_tvalid,
      sgmii_rxn => sgmii_rxn,
      sgmii_rxp => sgmii_rxp,
      sgmii_txn => sgmii_txn,
      sgmii_txp => sgmii_txp,
      mdio_mdc => mdio_mdc,
      mdio_mdio_i => mdio_mdio_i,
      mdio_mdio_o => mdio_mdio_o,
      mdio_mdio_t => mdio_mdio_t,
      mgt_clk_clk_n => mgt_clk_clk_n,
      mgt_clk_clk_p => mgt_clk_clk_p
    );
END ACL_axi_eth_0_0_arch;
