//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Apr 16 15:02:57 2025
//Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
//Command     : generate_target ACL_wrapper.bd
//Design      : ACL_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ACL_wrapper
   (axi_lite_clk_led,
    axil_reset_led,
    mgt_clk_clk_n,
    mgt_clk_clk_p,
    mgt_clk_led,
    rx_clk_led,
    sfp_tx_dis,
    sgmii_rxn,
    sgmii_rxp,
    sgmii_txn,
    sgmii_txp);
  output [0:0]axi_lite_clk_led;
  output axil_reset_led;
  input mgt_clk_clk_n;
  input mgt_clk_clk_p;
  output [0:0]mgt_clk_led;
  output [0:0]rx_clk_led;
  output [0:0]sfp_tx_dis;
  input sgmii_rxn;
  input sgmii_rxp;
  output sgmii_txn;
  output sgmii_txp;

  wire [0:0]axi_lite_clk_led;
  wire axil_reset_led;
  wire mgt_clk_clk_n;
  wire mgt_clk_clk_p;
  wire [0:0]mgt_clk_led;
  wire [0:0]rx_clk_led;
  wire [0:0]sfp_tx_dis;
  wire sgmii_rxn;
  wire sgmii_rxp;
  wire sgmii_txn;
  wire sgmii_txp;

  ACL ACL_i
       (.axi_lite_clk_led(axi_lite_clk_led),
        .axil_reset_led(axil_reset_led),
        .mgt_clk_clk_n(mgt_clk_clk_n),
        .mgt_clk_clk_p(mgt_clk_clk_p),
        .mgt_clk_led(mgt_clk_led),
        .rx_clk_led(rx_clk_led),
        .sfp_tx_dis(sfp_tx_dis),
        .sgmii_rxn(sgmii_rxn),
        .sgmii_rxp(sgmii_rxp),
        .sgmii_txn(sgmii_txn),
        .sgmii_txp(sgmii_txp));
endmodule
