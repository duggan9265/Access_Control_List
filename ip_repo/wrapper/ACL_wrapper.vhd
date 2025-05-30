--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
--Date        : Wed Apr 16 15:03:53 2025
--Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
--Command     : generate_target ACL_wrapper.bd
--Design      : ACL_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_wrapper is
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
end ACL_wrapper;

architecture STRUCTURE of ACL_wrapper is
  component ACL is
  port (
    mgt_clk_clk_n : in STD_LOGIC;
    mgt_clk_clk_p : in STD_LOGIC;
    sgmii_rxn : in STD_LOGIC;
    sgmii_rxp : in STD_LOGIC;
    sgmii_txn : out STD_LOGIC;
    sgmii_txp : out STD_LOGIC;
    axi_lite_clk_led : out STD_LOGIC_VECTOR ( 0 to 0 );
    axil_reset_led : out STD_LOGIC;
    mgt_clk_led : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_clk_led : out STD_LOGIC_VECTOR ( 0 to 0 );
    sfp_tx_dis : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ACL;
begin
ACL_i: component ACL
     port map (
      axi_lite_clk_led(0) => axi_lite_clk_led(0),
      axil_reset_led => axil_reset_led,
      mgt_clk_clk_n => mgt_clk_clk_n,
      mgt_clk_clk_p => mgt_clk_clk_p,
      mgt_clk_led(0) => mgt_clk_led(0),
      rx_clk_led(0) => rx_clk_led(0),
      sfp_tx_dis(0) => sfp_tx_dis(0),
      sgmii_rxn => sgmii_rxn,
      sgmii_rxp => sgmii_rxp,
      sgmii_txn => sgmii_txn,
      sgmii_txp => sgmii_txp
    );
end STRUCTURE;
