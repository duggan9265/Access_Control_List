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

-- IP VLNV: xilinx.com:module_ref:ACL_RTL_top_v1_0:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ACL_ACL_RTL_top_v1_0_0_0 IS
  PORT (
    rule_ethertype_reg : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    rule_protocol_reg : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rule_src_addr_reg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rule_dest_addr_reg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rxd_aclk : IN STD_LOGIC;
    s_axi_rxd_aresetn : IN STD_LOGIC;
    s_axi_rxd_tready : OUT STD_LOGIC;
    s_axi_rxd_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rxd_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_rxd_tlast : IN STD_LOGIC;
    s_axi_rxd_tvalid : IN STD_LOGIC;
    s_axi_rxs_aclk : IN STD_LOGIC;
    s_axi_rxs_aresetn : IN STD_LOGIC;
    s_axi_rxs_tready : OUT STD_LOGIC;
    s_axi_rxs_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_rxs_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_rxs_tlast : IN STD_LOGIC;
    s_axi_rxs_tvalid : IN STD_LOGIC;
    m_axi_rxd_aclk : IN STD_LOGIC;
    m_axi_rxd_aresetn : IN STD_LOGIC;
    m_axi_rxd_tvalid : OUT STD_LOGIC;
    m_axi_rxd_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rxd_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rxd_tlast : OUT STD_LOGIC;
    m_axi_rxd_tready : IN STD_LOGIC;
    m_axi_rxs_aclk : IN STD_LOGIC;
    m_axi_rxs_aresetn : IN STD_LOGIC;
    m_axi_rxs_tvalid : OUT STD_LOGIC;
    m_axi_rxs_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_rxs_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_rxs_tlast : OUT STD_LOGIC;
    m_axi_rxs_tready : IN STD_LOGIC
  );
END ACL_ACL_RTL_top_v1_0_0_0;

ARCHITECTURE ACL_ACL_RTL_top_v1_0_0_0_arch OF ACL_ACL_RTL_top_v1_0_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF ACL_ACL_RTL_top_v1_0_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ACL_RTL_top_v1_0 IS
    GENERIC (
      C_s_axi_rxd_TDATA_WIDTH : INTEGER;
      C_s_axi_rxs_TDATA_WIDTH : INTEGER;
      C_m_axi_rxd_TDATA_WIDTH : INTEGER;
      C_m_axi_rxd_START_COUNT : INTEGER;
      C_m_axi_rxs_TDATA_WIDTH : INTEGER;
      C_m_axi_rxs_START_COUNT : INTEGER
    );
    PORT (
      rule_ethertype_reg : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      rule_protocol_reg : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      rule_src_addr_reg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      rule_dest_addr_reg : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rxd_aclk : IN STD_LOGIC;
      s_axi_rxd_aresetn : IN STD_LOGIC;
      s_axi_rxd_tready : OUT STD_LOGIC;
      s_axi_rxd_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rxd_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_rxd_tlast : IN STD_LOGIC;
      s_axi_rxd_tvalid : IN STD_LOGIC;
      s_axi_rxs_aclk : IN STD_LOGIC;
      s_axi_rxs_aresetn : IN STD_LOGIC;
      s_axi_rxs_tready : OUT STD_LOGIC;
      s_axi_rxs_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rxs_tstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_rxs_tlast : IN STD_LOGIC;
      s_axi_rxs_tvalid : IN STD_LOGIC;
      m_axi_rxd_aclk : IN STD_LOGIC;
      m_axi_rxd_aresetn : IN STD_LOGIC;
      m_axi_rxd_tvalid : OUT STD_LOGIC;
      m_axi_rxd_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rxd_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rxd_tlast : OUT STD_LOGIC;
      m_axi_rxd_tready : IN STD_LOGIC;
      m_axi_rxs_aclk : IN STD_LOGIC;
      m_axi_rxs_aresetn : IN STD_LOGIC;
      m_axi_rxs_tvalid : OUT STD_LOGIC;
      m_axi_rxs_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_rxs_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_rxs_tlast : OUT STD_LOGIC;
      m_axi_rxs_tready : IN STD_LOGIC
    );
  END COMPONENT ACL_RTL_top_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_rxd_aclk: SIGNAL IS "XIL_INTERFACENAME m_axi_rxd_aclk, ASSOCIATED_BUSIF m_axi_rxd, ASSOCIATED_RESET m_axi_rxd_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxd_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 m_axi_rxd_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_rxd_aresetn: SIGNAL IS "XIL_INTERFACENAME m_axi_rxd_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxd_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 m_axi_rxd_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxd_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxd TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxd_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxd TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxd_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxd TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxd_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxd TSTRB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_rxd_tvalid: SIGNAL IS "XIL_INTERFACENAME m_axi_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxd_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxd TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_rxs_aclk: SIGNAL IS "XIL_INTERFACENAME m_axi_rxs_aclk, ASSOCIATED_BUSIF m_axi_rxs, ASSOCIATED_RESET m_axi_rxs_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxs_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 m_axi_rxs_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_rxs_aresetn: SIGNAL IS "XIL_INTERFACENAME m_axi_rxs_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxs_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 m_axi_rxs_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxs_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxs TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxs_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxs TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxs_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxs TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxs_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxs TSTRB";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_rxs_tvalid: SIGNAL IS "XIL_INTERFACENAME m_axi_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_rxs_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axi_rxs TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_rxd_aclk: SIGNAL IS "XIL_INTERFACENAME s_axi_rxd_aclk, ASSOCIATED_BUSIF s_axi_rxd, ASSOCIATED_RESET s_axi_rxd_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxd_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_rxd_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_rxd_aresetn: SIGNAL IS "XIL_INTERFACENAME s_axi_rxd_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxd_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axi_rxd_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxd_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxd TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxd_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxd TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_rxd_tready: SIGNAL IS "XIL_INTERFACENAME s_axi_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxd_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxd TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxd_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxd TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxd_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxd TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_rxs_aclk: SIGNAL IS "XIL_INTERFACENAME s_axi_rxs_aclk, ASSOCIATED_BUSIF s_axi_rxs, ASSOCIATED_RESET s_axi_rxs_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxs_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_rxs_aclk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_rxs_aresetn: SIGNAL IS "XIL_INTERFACENAME s_axi_rxs_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxs_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s_axi_rxs_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxs_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxs TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxs_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxs TLAST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_rxs_tready: SIGNAL IS "XIL_INTERFACENAME s_axi_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxs_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxs TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxs_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxs TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_rxs_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axi_rxs TVALID";
BEGIN
  U0 : ACL_RTL_top_v1_0
    GENERIC MAP (
      C_s_axi_rxd_TDATA_WIDTH => 32,
      C_s_axi_rxs_TDATA_WIDTH => 32,
      C_m_axi_rxd_TDATA_WIDTH => 32,
      C_m_axi_rxd_START_COUNT => 32,
      C_m_axi_rxs_TDATA_WIDTH => 32,
      C_m_axi_rxs_START_COUNT => 32
    )
    PORT MAP (
      rule_ethertype_reg => rule_ethertype_reg,
      rule_protocol_reg => rule_protocol_reg,
      rule_src_addr_reg => rule_src_addr_reg,
      rule_dest_addr_reg => rule_dest_addr_reg,
      s_axi_rxd_aclk => s_axi_rxd_aclk,
      s_axi_rxd_aresetn => s_axi_rxd_aresetn,
      s_axi_rxd_tready => s_axi_rxd_tready,
      s_axi_rxd_tdata => s_axi_rxd_tdata,
      s_axi_rxd_tstrb => s_axi_rxd_tstrb,
      s_axi_rxd_tlast => s_axi_rxd_tlast,
      s_axi_rxd_tvalid => s_axi_rxd_tvalid,
      s_axi_rxs_aclk => s_axi_rxs_aclk,
      s_axi_rxs_aresetn => s_axi_rxs_aresetn,
      s_axi_rxs_tready => s_axi_rxs_tready,
      s_axi_rxs_tdata => s_axi_rxs_tdata,
      s_axi_rxs_tstrb => s_axi_rxs_tstrb,
      s_axi_rxs_tlast => s_axi_rxs_tlast,
      s_axi_rxs_tvalid => s_axi_rxs_tvalid,
      m_axi_rxd_aclk => m_axi_rxd_aclk,
      m_axi_rxd_aresetn => m_axi_rxd_aresetn,
      m_axi_rxd_tvalid => m_axi_rxd_tvalid,
      m_axi_rxd_tdata => m_axi_rxd_tdata,
      m_axi_rxd_tstrb => m_axi_rxd_tstrb,
      m_axi_rxd_tlast => m_axi_rxd_tlast,
      m_axi_rxd_tready => m_axi_rxd_tready,
      m_axi_rxs_aclk => m_axi_rxs_aclk,
      m_axi_rxs_aresetn => m_axi_rxs_aresetn,
      m_axi_rxs_tvalid => m_axi_rxs_tvalid,
      m_axi_rxs_tdata => m_axi_rxs_tdata,
      m_axi_rxs_tstrb => m_axi_rxs_tstrb,
      m_axi_rxs_tlast => m_axi_rxs_tlast,
      m_axi_rxs_tready => m_axi_rxs_tready
    );
END ACL_ACL_RTL_top_v1_0_0_0_arch;
