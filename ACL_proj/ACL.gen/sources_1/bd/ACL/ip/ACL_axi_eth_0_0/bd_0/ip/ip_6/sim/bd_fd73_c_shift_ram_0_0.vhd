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

-- IP VLNV: xilinx.com:ip:c_shift_ram:12.0
-- IP Revision: 15

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY c_shift_ram_v12_0_15;
USE c_shift_ram_v12_0_15.c_shift_ram_v12_0_15;

ENTITY bd_fd73_c_shift_ram_0_0 IS
  PORT (
    D : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    CLK : IN STD_LOGIC;
    CE : IN STD_LOGIC;
    SCLR : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END bd_fd73_c_shift_ram_0_0;

ARCHITECTURE bd_fd73_c_shift_ram_0_0_arch OF bd_fd73_c_shift_ram_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_fd73_c_shift_ram_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT c_shift_ram_v12_0_15 IS
    GENERIC (
      C_XDEVICEFAMILY : STRING;
      C_VERBOSITY : INTEGER;
      C_WIDTH : INTEGER;
      C_DEPTH : INTEGER;
      C_ADDR_WIDTH : INTEGER;
      C_SHIFT_TYPE : INTEGER;
      C_OPT_GOAL : INTEGER;
      C_AINIT_VAL : STRING;
      C_SINIT_VAL : STRING;
      C_DEFAULT_DATA : STRING;
      C_HAS_A : INTEGER;
      C_HAS_CE : INTEGER;
      C_REG_LAST_BIT : INTEGER;
      C_SYNC_PRIORITY : INTEGER;
      C_SYNC_ENABLE : INTEGER;
      C_HAS_SCLR : INTEGER;
      C_HAS_SSET : INTEGER;
      C_HAS_SINIT : INTEGER;
      C_MEM_INIT_FILE : STRING;
      C_ELABORATION_DIR : STRING;
      C_READ_MIF : INTEGER;
      C_PARSER_TYPE : INTEGER
    );
    PORT (
      A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      D : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      CLK : IN STD_LOGIC;
      CE : IN STD_LOGIC;
      SCLR : IN STD_LOGIC;
      SSET : IN STD_LOGIC;
      SINIT : IN STD_LOGIC;
      Q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT c_shift_ram_v12_0_15;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF CE: SIGNAL IS "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH";
  ATTRIBUTE X_INTERFACE_INFO OF CE: SIGNAL IS "xilinx.com:signal:clockenable:1.0 ce_intf CE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF CLK: SIGNAL IS "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 clk_intf CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF D: SIGNAL IS "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef";
  ATTRIBUTE X_INTERFACE_INFO OF D: SIGNAL IS "xilinx.com:signal:data:1.0 d_intf DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Q: SIGNAL IS "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}";
  ATTRIBUTE X_INTERFACE_INFO OF Q: SIGNAL IS "xilinx.com:signal:data:1.0 q_intf DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF SCLR: SIGNAL IS "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF SCLR: SIGNAL IS "xilinx.com:signal:reset:1.0 sclr_intf RST";
BEGIN
  U0 : c_shift_ram_v12_0_15
    GENERIC MAP (
      C_XDEVICEFAMILY => "zynquplus",
      C_VERBOSITY => 0,
      C_WIDTH => 1,
      C_DEPTH => 1,
      C_ADDR_WIDTH => 4,
      C_SHIFT_TYPE => 0,
      C_OPT_GOAL => 0,
      C_AINIT_VAL => "0",
      C_SINIT_VAL => "0",
      C_DEFAULT_DATA => "0",
      C_HAS_A => 0,
      C_HAS_CE => 1,
      C_REG_LAST_BIT => 1,
      C_SYNC_PRIORITY => 1,
      C_SYNC_ENABLE => 0,
      C_HAS_SCLR => 1,
      C_HAS_SSET => 0,
      C_HAS_SINIT => 0,
      C_MEM_INIT_FILE => "no_coe_file_loaded",
      C_ELABORATION_DIR => "./",
      C_READ_MIF => 0,
      C_PARSER_TYPE => 0
    )
    PORT MAP (
      A => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      D => D,
      CLK => CLK,
      CE => CE,
      SCLR => SCLR,
      SSET => '0',
      SINIT => '0',
      Q => Q
    );
END bd_fd73_c_shift_ram_0_0_arch;
