// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 16 16:27:01 2025
// Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_ACL_RTL_top_v1_0_0_0/ACL_ACL_RTL_top_v1_0_0_0_stub.v
// Design      : ACL_ACL_RTL_top_v1_0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ACL_RTL_top_v1_0,Vivado 2023.2" *)
module ACL_ACL_RTL_top_v1_0_0_0(s_axi_rxd_aclk, s_axi_rxd_aresetn, 
  s_axi_rxd_tready, s_axi_rxd_tdata, s_axi_rxd_tstrb, s_axi_rxd_tlast, s_axi_rxd_tvalid, 
  s_axi_rxs_aclk, s_axi_rxs_aresetn, s_axi_rxs_tready, s_axi_rxs_tdata, s_axi_rxs_tstrb, 
  s_axi_rxs_tlast, s_axi_rxs_tvalid, m_axi_rxd_aclk, m_axi_rxd_aresetn, m_axi_rxd_tvalid, 
  m_axi_rxd_tdata, m_axi_rxd_tstrb, m_axi_rxd_tlast, m_axi_rxd_tready, m_axi_rxs_aclk, 
  m_axi_rxs_aresetn, m_axi_rxs_tvalid, m_axi_rxs_tdata, m_axi_rxs_tstrb, m_axi_rxs_tlast, 
  m_axi_rxs_tready)
/* synthesis syn_black_box black_box_pad_pin="s_axi_rxd_aclk,s_axi_rxd_aresetn,s_axi_rxd_tready,s_axi_rxd_tdata[31:0],s_axi_rxd_tstrb[3:0],s_axi_rxd_tlast,s_axi_rxd_tvalid,s_axi_rxs_aresetn,s_axi_rxs_tready,s_axi_rxs_tdata[31:0],s_axi_rxs_tstrb[3:0],s_axi_rxs_tlast,s_axi_rxs_tvalid,m_axi_rxd_aresetn,m_axi_rxd_tvalid,m_axi_rxd_tdata[31:0],m_axi_rxd_tstrb[3:0],m_axi_rxd_tlast,m_axi_rxd_tready,m_axi_rxs_aresetn,m_axi_rxs_tvalid,m_axi_rxs_tdata[31:0],m_axi_rxs_tstrb[3:0],m_axi_rxs_tlast,m_axi_rxs_tready" */
/* synthesis syn_force_seq_prim="s_axi_rxs_aclk" */
/* synthesis syn_force_seq_prim="m_axi_rxd_aclk" */
/* synthesis syn_force_seq_prim="m_axi_rxs_aclk" */;
  input s_axi_rxd_aclk;
  input s_axi_rxd_aresetn;
  output s_axi_rxd_tready;
  input [31:0]s_axi_rxd_tdata;
  input [3:0]s_axi_rxd_tstrb;
  input s_axi_rxd_tlast;
  input s_axi_rxd_tvalid;
  input s_axi_rxs_aclk /* synthesis syn_isclock = 1 */;
  input s_axi_rxs_aresetn;
  output s_axi_rxs_tready;
  input [31:0]s_axi_rxs_tdata;
  input [3:0]s_axi_rxs_tstrb;
  input s_axi_rxs_tlast;
  input s_axi_rxs_tvalid;
  input m_axi_rxd_aclk /* synthesis syn_isclock = 1 */;
  input m_axi_rxd_aresetn;
  output m_axi_rxd_tvalid;
  output [31:0]m_axi_rxd_tdata;
  output [3:0]m_axi_rxd_tstrb;
  output m_axi_rxd_tlast;
  input m_axi_rxd_tready;
  input m_axi_rxs_aclk /* synthesis syn_isclock = 1 */;
  input m_axi_rxs_aresetn;
  output m_axi_rxs_tvalid;
  output [31:0]m_axi_rxs_tdata;
  output [3:0]m_axi_rxs_tstrb;
  output m_axi_rxs_tlast;
  input m_axi_rxs_tready;
endmodule
