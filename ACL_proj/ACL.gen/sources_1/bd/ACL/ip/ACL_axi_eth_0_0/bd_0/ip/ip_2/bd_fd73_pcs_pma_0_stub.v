// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 16 15:28:54 2025
// Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_axi_eth_0_0/bd_0/ip/ip_2/bd_fd73_pcs_pma_0_stub.v
// Design      : bd_fd73_pcs_pma_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "gig_ethernet_pcs_pma_v16_2_15,Vivado 2023.2" *)
module bd_fd73_pcs_pma_0(gtrefclk_p, gtrefclk_n, gtrefclk_out, txp, txn, 
  rxp, rxn, resetdone, userclk_out, userclk2_out, rxuserclk_out, rxuserclk2_out, pma_reset_out, 
  mmcm_locked_out, independent_clock_bufg, sgmii_clk_r, sgmii_clk_f, sgmii_clk_en, gmii_txd, 
  gmii_tx_en, gmii_tx_er, gmii_rxd, gmii_rx_dv, gmii_rx_er, gmii_isolate, ext_mdc, ext_mdio_i, 
  ext_mdio_o, ext_mdio_t, mdio_t_in, mdc, mdio_i, mdio_o, mdio_t, phyaddr, configuration_vector, 
  configuration_valid, an_interrupt, an_adv_config_vector, an_adv_config_val, 
  an_restart_config, speed_is_10_100, speed_is_100, status_vector, reset, gtpowergood, 
  signal_detect)
/* synthesis syn_black_box black_box_pad_pin="gtrefclk_p,gtrefclk_n,gtrefclk_out,txp,txn,rxp,rxn,resetdone,pma_reset_out,mmcm_locked_out,sgmii_clk_r,sgmii_clk_f,sgmii_clk_en,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,ext_mdc,ext_mdio_i,ext_mdio_o,ext_mdio_t,mdio_t_in,mdc,mdio_i,mdio_o,mdio_t,phyaddr[4:0],configuration_vector[4:0],configuration_valid,an_interrupt,an_adv_config_vector[15:0],an_adv_config_val,an_restart_config,speed_is_10_100,speed_is_100,status_vector[15:0],reset,gtpowergood,signal_detect" */
/* synthesis syn_force_seq_prim="userclk_out" */
/* synthesis syn_force_seq_prim="userclk2_out" */
/* synthesis syn_force_seq_prim="rxuserclk_out" */
/* synthesis syn_force_seq_prim="rxuserclk2_out" */
/* synthesis syn_force_seq_prim="independent_clock_bufg" */;
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out /* synthesis syn_isclock = 1 */;
  output userclk2_out /* synthesis syn_isclock = 1 */;
  output rxuserclk_out /* synthesis syn_isclock = 1 */;
  output rxuserclk2_out /* synthesis syn_isclock = 1 */;
  output pma_reset_out;
  output mmcm_locked_out;
  input independent_clock_bufg /* synthesis syn_isclock = 1 */;
  output sgmii_clk_r;
  output sgmii_clk_f;
  output sgmii_clk_en;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output ext_mdc;
  input ext_mdio_i;
  output ext_mdio_o;
  output ext_mdio_t;
  input mdio_t_in;
  input mdc;
  input mdio_i;
  output mdio_o;
  output mdio_t;
  input [4:0]phyaddr;
  input [4:0]configuration_vector;
  input configuration_valid;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_adv_config_val;
  input an_restart_config;
  input speed_is_10_100;
  input speed_is_100;
  output [15:0]status_vector;
  input reset;
  output gtpowergood;
  input signal_detect;
endmodule
