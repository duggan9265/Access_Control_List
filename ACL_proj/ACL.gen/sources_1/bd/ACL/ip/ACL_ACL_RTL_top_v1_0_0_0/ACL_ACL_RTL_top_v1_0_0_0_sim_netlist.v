// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu May 15 18:00:30 2025
// Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_ACL_RTL_top_v1_0_0_0/ACL_ACL_RTL_top_v1_0_0_0_sim_netlist.v
// Design      : ACL_ACL_RTL_top_v1_0_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ACL_ACL_RTL_top_v1_0_0_0,ACL_RTL_top_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "ACL_RTL_top_v1_0,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module ACL_ACL_RTL_top_v1_0_0_0
   (rule_ethertype_reg,
    rule_protocol_reg,
    rule_src_addr_reg,
    rule_dest_addr_reg,
    s_axi_rxd_aclk,
    s_axi_rxd_aresetn,
    s_axi_rxd_tready,
    s_axi_rxd_tdata,
    s_axi_rxd_tstrb,
    s_axi_rxd_tlast,
    s_axi_rxd_tvalid,
    s_axi_rxs_aclk,
    s_axi_rxs_aresetn,
    s_axi_rxs_tready,
    s_axi_rxs_tdata,
    s_axi_rxs_tstrb,
    s_axi_rxs_tlast,
    s_axi_rxs_tvalid,
    m_axi_rxd_aclk,
    m_axi_rxd_aresetn,
    m_axi_rxd_tvalid,
    m_axi_rxd_tdata,
    m_axi_rxd_tstrb,
    m_axi_rxd_tlast,
    m_axi_rxd_tready,
    m_axi_rxs_aclk,
    m_axi_rxs_aresetn,
    m_axi_rxs_tvalid,
    m_axi_rxs_tdata,
    m_axi_rxs_tstrb,
    m_axi_rxs_tlast,
    m_axi_rxs_tready);
  input [15:0]rule_ethertype_reg;
  input [7:0]rule_protocol_reg;
  input [31:0]rule_src_addr_reg;
  input [31:0]rule_dest_addr_reg;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_rxd_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_rxd_aclk, ASSOCIATED_BUSIF s_axi_rxd, ASSOCIATED_RESET s_axi_rxd_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0" *) input s_axi_rxd_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_rxd_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_rxd_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_rxd_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxd TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axi_rxd_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxd TDATA" *) input [31:0]s_axi_rxd_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxd TSTRB" *) input [3:0]s_axi_rxd_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxd TLAST" *) input s_axi_rxd_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxd TVALID" *) input s_axi_rxd_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_rxs_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_rxs_aclk, ASSOCIATED_BUSIF s_axi_rxs, ASSOCIATED_RESET s_axi_rxs_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0" *) input s_axi_rxs_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_rxs_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_rxs_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_rxs_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxs TREADY" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axi_rxs_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxs TDATA" *) input [31:0]s_axi_rxs_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxs TSTRB" *) input [3:0]s_axi_rxs_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxs TLAST" *) input s_axi_rxs_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axi_rxs TVALID" *) input s_axi_rxs_tvalid;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_axi_rxd_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_rxd_aclk, ASSOCIATED_BUSIF m_axi_rxd, ASSOCIATED_RESET m_axi_rxd_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0" *) input m_axi_rxd_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_axi_rxd_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_rxd_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axi_rxd_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxd TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axi_rxd_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxd TDATA" *) output [31:0]m_axi_rxd_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxd TSTRB" *) output [3:0]m_axi_rxd_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxd TLAST" *) output m_axi_rxd_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxd TREADY" *) input m_axi_rxd_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 m_axi_rxs_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_rxs_aclk, ASSOCIATED_BUSIF m_axi_rxs, ASSOCIATED_RESET m_axi_rxs_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0" *) input m_axi_rxs_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 m_axi_rxs_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_rxs_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m_axi_rxs_aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxs TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axi_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axi_rxs_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxs TDATA" *) output [31:0]m_axi_rxs_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxs TSTRB" *) output [3:0]m_axi_rxs_tstrb;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxs TLAST" *) output m_axi_rxs_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axi_rxs TREADY" *) input m_axi_rxs_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire m_axi_rxd_aclk;
  wire m_axi_rxd_aresetn;
  wire [3:0]\^m_axi_rxd_tdata ;
  wire m_axi_rxd_tlast;
  wire m_axi_rxd_tready;
  wire m_axi_rxd_tvalid;
  wire m_axi_rxs_aclk;
  wire m_axi_rxs_aresetn;
  wire [3:0]\^m_axi_rxs_tdata ;
  wire m_axi_rxs_tlast;
  wire m_axi_rxs_tready;
  wire m_axi_rxs_tvalid;
  wire s_axi_rxd_aclk;
  wire s_axi_rxd_aresetn;
  wire s_axi_rxd_tlast;
  wire s_axi_rxd_tready;
  wire s_axi_rxd_tvalid;
  wire s_axi_rxs_aclk;
  wire s_axi_rxs_aresetn;
  wire s_axi_rxs_tlast;
  wire s_axi_rxs_tready;
  wire s_axi_rxs_tvalid;

  assign m_axi_rxd_tdata[31] = \<const0> ;
  assign m_axi_rxd_tdata[30] = \<const0> ;
  assign m_axi_rxd_tdata[29] = \<const0> ;
  assign m_axi_rxd_tdata[28] = \<const0> ;
  assign m_axi_rxd_tdata[27] = \<const0> ;
  assign m_axi_rxd_tdata[26] = \<const0> ;
  assign m_axi_rxd_tdata[25] = \<const0> ;
  assign m_axi_rxd_tdata[24] = \<const0> ;
  assign m_axi_rxd_tdata[23] = \<const0> ;
  assign m_axi_rxd_tdata[22] = \<const0> ;
  assign m_axi_rxd_tdata[21] = \<const0> ;
  assign m_axi_rxd_tdata[20] = \<const0> ;
  assign m_axi_rxd_tdata[19] = \<const0> ;
  assign m_axi_rxd_tdata[18] = \<const0> ;
  assign m_axi_rxd_tdata[17] = \<const0> ;
  assign m_axi_rxd_tdata[16] = \<const0> ;
  assign m_axi_rxd_tdata[15] = \<const0> ;
  assign m_axi_rxd_tdata[14] = \<const0> ;
  assign m_axi_rxd_tdata[13] = \<const0> ;
  assign m_axi_rxd_tdata[12] = \<const0> ;
  assign m_axi_rxd_tdata[11] = \<const0> ;
  assign m_axi_rxd_tdata[10] = \<const0> ;
  assign m_axi_rxd_tdata[9] = \<const0> ;
  assign m_axi_rxd_tdata[8] = \<const0> ;
  assign m_axi_rxd_tdata[7] = \<const0> ;
  assign m_axi_rxd_tdata[6] = \<const0> ;
  assign m_axi_rxd_tdata[5] = \<const0> ;
  assign m_axi_rxd_tdata[4] = \<const0> ;
  assign m_axi_rxd_tdata[3:0] = \^m_axi_rxd_tdata [3:0];
  assign m_axi_rxd_tstrb[3] = \<const1> ;
  assign m_axi_rxd_tstrb[2] = \<const1> ;
  assign m_axi_rxd_tstrb[1] = \<const1> ;
  assign m_axi_rxd_tstrb[0] = \<const1> ;
  assign m_axi_rxs_tdata[31] = \<const0> ;
  assign m_axi_rxs_tdata[30] = \<const0> ;
  assign m_axi_rxs_tdata[29] = \<const0> ;
  assign m_axi_rxs_tdata[28] = \<const0> ;
  assign m_axi_rxs_tdata[27] = \<const0> ;
  assign m_axi_rxs_tdata[26] = \<const0> ;
  assign m_axi_rxs_tdata[25] = \<const0> ;
  assign m_axi_rxs_tdata[24] = \<const0> ;
  assign m_axi_rxs_tdata[23] = \<const0> ;
  assign m_axi_rxs_tdata[22] = \<const0> ;
  assign m_axi_rxs_tdata[21] = \<const0> ;
  assign m_axi_rxs_tdata[20] = \<const0> ;
  assign m_axi_rxs_tdata[19] = \<const0> ;
  assign m_axi_rxs_tdata[18] = \<const0> ;
  assign m_axi_rxs_tdata[17] = \<const0> ;
  assign m_axi_rxs_tdata[16] = \<const0> ;
  assign m_axi_rxs_tdata[15] = \<const0> ;
  assign m_axi_rxs_tdata[14] = \<const0> ;
  assign m_axi_rxs_tdata[13] = \<const0> ;
  assign m_axi_rxs_tdata[12] = \<const0> ;
  assign m_axi_rxs_tdata[11] = \<const0> ;
  assign m_axi_rxs_tdata[10] = \<const0> ;
  assign m_axi_rxs_tdata[9] = \<const0> ;
  assign m_axi_rxs_tdata[8] = \<const0> ;
  assign m_axi_rxs_tdata[7] = \<const0> ;
  assign m_axi_rxs_tdata[6] = \<const0> ;
  assign m_axi_rxs_tdata[5] = \<const0> ;
  assign m_axi_rxs_tdata[4] = \<const0> ;
  assign m_axi_rxs_tdata[3:0] = \^m_axi_rxs_tdata [3:0];
  assign m_axi_rxs_tstrb[3] = \<const1> ;
  assign m_axi_rxs_tstrb[2] = \<const1> ;
  assign m_axi_rxs_tstrb[1] = \<const1> ;
  assign m_axi_rxs_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0 U0
       (.m_axi_rxd_aclk(m_axi_rxd_aclk),
        .m_axi_rxd_aresetn(m_axi_rxd_aresetn),
        .m_axi_rxd_tdata(\^m_axi_rxd_tdata ),
        .m_axi_rxd_tlast(m_axi_rxd_tlast),
        .m_axi_rxd_tready(m_axi_rxd_tready),
        .m_axi_rxd_tvalid(m_axi_rxd_tvalid),
        .m_axi_rxs_aclk(m_axi_rxs_aclk),
        .m_axi_rxs_aresetn(m_axi_rxs_aresetn),
        .m_axi_rxs_tdata(\^m_axi_rxs_tdata ),
        .m_axi_rxs_tlast(m_axi_rxs_tlast),
        .m_axi_rxs_tready(m_axi_rxs_tready),
        .m_axi_rxs_tvalid(m_axi_rxs_tvalid),
        .s_axi_rxd_aclk(s_axi_rxd_aclk),
        .s_axi_rxd_aresetn(s_axi_rxd_aresetn),
        .s_axi_rxd_tlast(s_axi_rxd_tlast),
        .s_axi_rxd_tready(s_axi_rxd_tready),
        .s_axi_rxd_tvalid(s_axi_rxd_tvalid),
        .s_axi_rxs_aclk(s_axi_rxs_aclk),
        .s_axi_rxs_aresetn(s_axi_rxs_aresetn),
        .s_axi_rxs_tlast(s_axi_rxs_tlast),
        .s_axi_rxs_tready(s_axi_rxs_tready),
        .s_axi_rxs_tvalid(s_axi_rxs_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "ACL_RTL_top_v1_0" *) 
module ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0
   (s_axi_rxd_tready,
    s_axi_rxs_tready,
    m_axi_rxd_tvalid,
    m_axi_rxd_tdata,
    m_axi_rxd_tlast,
    m_axi_rxs_tvalid,
    m_axi_rxs_tdata,
    m_axi_rxs_tlast,
    m_axi_rxd_aclk,
    m_axi_rxs_aclk,
    s_axi_rxd_aclk,
    s_axi_rxs_aclk,
    s_axi_rxd_tvalid,
    s_axi_rxs_tvalid,
    m_axi_rxd_tready,
    m_axi_rxd_aresetn,
    m_axi_rxs_tready,
    m_axi_rxs_aresetn,
    s_axi_rxd_aresetn,
    s_axi_rxs_aresetn,
    s_axi_rxd_tlast,
    s_axi_rxs_tlast);
  output s_axi_rxd_tready;
  output s_axi_rxs_tready;
  output m_axi_rxd_tvalid;
  output [3:0]m_axi_rxd_tdata;
  output m_axi_rxd_tlast;
  output m_axi_rxs_tvalid;
  output [3:0]m_axi_rxs_tdata;
  output m_axi_rxs_tlast;
  input m_axi_rxd_aclk;
  input m_axi_rxs_aclk;
  input s_axi_rxd_aclk;
  input s_axi_rxs_aclk;
  input s_axi_rxd_tvalid;
  input s_axi_rxs_tvalid;
  input m_axi_rxd_tready;
  input m_axi_rxd_aresetn;
  input m_axi_rxs_tready;
  input m_axi_rxs_aresetn;
  input s_axi_rxd_aresetn;
  input s_axi_rxs_aresetn;
  input s_axi_rxd_tlast;
  input s_axi_rxs_tlast;

  wire m_axi_rxd_aclk;
  wire m_axi_rxd_aresetn;
  wire [3:0]m_axi_rxd_tdata;
  wire m_axi_rxd_tlast;
  wire m_axi_rxd_tready;
  wire m_axi_rxd_tvalid;
  wire m_axi_rxs_aclk;
  wire m_axi_rxs_aresetn;
  wire [3:0]m_axi_rxs_tdata;
  wire m_axi_rxs_tlast;
  wire m_axi_rxs_tready;
  wire m_axi_rxs_tvalid;
  wire s_axi_rxd_aclk;
  wire s_axi_rxd_aresetn;
  wire s_axi_rxd_tlast;
  wire s_axi_rxd_tready;
  wire s_axi_rxd_tvalid;
  wire s_axi_rxs_aclk;
  wire s_axi_rxs_aresetn;
  wire s_axi_rxs_tlast;
  wire s_axi_rxs_tready;
  wire s_axi_rxs_tvalid;

  ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxd ACL_RTL_top_v1_0_m_axi_rxd_inst
       (.m_axi_rxd_aclk(m_axi_rxd_aclk),
        .m_axi_rxd_aresetn(m_axi_rxd_aresetn),
        .m_axi_rxd_tdata(m_axi_rxd_tdata),
        .m_axi_rxd_tlast(m_axi_rxd_tlast),
        .m_axi_rxd_tready(m_axi_rxd_tready),
        .m_axi_rxd_tvalid(m_axi_rxd_tvalid));
  ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxs ACL_RTL_top_v1_0_m_axi_rxs_inst
       (.m_axi_rxs_aclk(m_axi_rxs_aclk),
        .m_axi_rxs_aresetn(m_axi_rxs_aresetn),
        .m_axi_rxs_tdata(m_axi_rxs_tdata),
        .m_axi_rxs_tlast(m_axi_rxs_tlast),
        .m_axi_rxs_tready(m_axi_rxs_tready),
        .m_axi_rxs_tvalid(m_axi_rxs_tvalid));
  ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_s_axi_rxd ACL_RTL_top_v1_0_s_axi_rxd_inst
       (.s_axi_rxd_aclk(s_axi_rxd_aclk),
        .s_axi_rxd_aresetn(s_axi_rxd_aresetn),
        .s_axi_rxd_tlast(s_axi_rxd_tlast),
        .s_axi_rxd_tready(s_axi_rxd_tready),
        .s_axi_rxd_tvalid(s_axi_rxd_tvalid));
  ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_s_axi_rxs ACL_RTL_top_v1_0_s_axi_rxs_inst
       (.s_axi_rxs_aclk(s_axi_rxs_aclk),
        .s_axi_rxs_aresetn(s_axi_rxs_aresetn),
        .s_axi_rxs_tlast(s_axi_rxs_tlast),
        .s_axi_rxs_tready(s_axi_rxs_tready),
        .s_axi_rxs_tvalid(s_axi_rxs_tvalid));
endmodule

(* ORIG_REF_NAME = "ACL_RTL_top_v1_0_m_axi_rxd" *) 
module ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxd
   (m_axi_rxd_tvalid,
    m_axi_rxd_tlast,
    m_axi_rxd_tdata,
    m_axi_rxd_aclk,
    m_axi_rxd_tready,
    m_axi_rxd_aresetn);
  output m_axi_rxd_tvalid;
  output m_axi_rxd_tlast;
  output [3:0]m_axi_rxd_tdata;
  input m_axi_rxd_aclk;
  input m_axi_rxd_tready;
  input m_axi_rxd_aresetn;

  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire axis_tlast__0;
  wire axis_tvalid_delay_i_1_n_0;
  wire axis_tvalid_delay_i_2_n_0;
  wire count;
  wire \count[2]_i_1_n_0 ;
  wire [4:0]count_reg;
  wire m_axi_rxd_aclk;
  wire m_axi_rxd_aresetn;
  wire [3:0]m_axi_rxd_tdata;
  wire m_axi_rxd_tlast;
  wire m_axi_rxd_tready;
  wire m_axi_rxd_tvalid;
  wire [1:0]mst_exec_state;
  wire [1:0]mst_exec_state__0;
  wire [4:0]plusOp;
  wire [2:0]read_pointer;
  wire \stream_data_out[0]_i_1_n_0 ;
  wire \stream_data_out[1]_i_1_n_0 ;
  wire \stream_data_out[2]_i_1_n_0 ;
  wire \stream_data_out[3]_i_2_n_0 ;
  wire tx_en;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I2(mst_exec_state[0]),
        .O(mst_exec_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(mst_exec_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[4]),
        .I4(count_reg[2]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "init_counter:01,send_stream:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m_axi_rxd_aclk),
        .CE(1'b1),
        .D(mst_exec_state__0[0]),
        .Q(mst_exec_state[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  (* FSM_ENCODED_STATES = "init_counter:01,send_stream:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m_axi_rxd_aclk),
        .CE(1'b1),
        .D(mst_exec_state__0[1]),
        .Q(mst_exec_state[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    axis_tlast
       (.I0(read_pointer[1]),
        .I1(read_pointer[2]),
        .I2(read_pointer[0]),
        .O(axis_tlast__0));
  FDRE axis_tlast_delay_reg
       (.C(m_axi_rxd_aclk),
        .CE(1'b1),
        .D(axis_tlast__0),
        .Q(m_axi_rxd_tlast),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tvalid_delay_i_1
       (.I0(m_axi_rxd_aresetn),
        .O(axis_tvalid_delay_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axis_tvalid_delay_i_2
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .O(axis_tvalid_delay_i_2_n_0));
  FDRE axis_tvalid_delay_reg
       (.C(m_axi_rxd_aclk),
        .CE(1'b1),
        .D(axis_tvalid_delay_i_2_n_0),
        .Q(m_axi_rxd_tvalid),
        .R(axis_tvalid_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(plusOp[3]));
  LUT3 #(
    .INIT(8'h04)) 
    \count[4]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(plusOp[4]));
  FDRE \count_reg[0] 
       (.C(m_axi_rxd_aclk),
        .CE(count),
        .D(plusOp[0]),
        .Q(count_reg[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \count_reg[1] 
       (.C(m_axi_rxd_aclk),
        .CE(count),
        .D(plusOp[1]),
        .Q(count_reg[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \count_reg[2] 
       (.C(m_axi_rxd_aclk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \count_reg[3] 
       (.C(m_axi_rxd_aclk),
        .CE(count),
        .D(plusOp[3]),
        .Q(count_reg[3]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \count_reg[4] 
       (.C(m_axi_rxd_aclk),
        .CE(count),
        .D(plusOp[4]),
        .Q(count_reg[4]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[0] 
       (.C(m_axi_rxd_aclk),
        .CE(tx_en),
        .D(\stream_data_out[0]_i_1_n_0 ),
        .Q(read_pointer[0]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[1] 
       (.C(m_axi_rxd_aclk),
        .CE(tx_en),
        .D(\stream_data_out[1]_i_1_n_0 ),
        .Q(read_pointer[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[2] 
       (.C(m_axi_rxd_aclk),
        .CE(tx_en),
        .D(\stream_data_out[2]_i_1_n_0 ),
        .Q(read_pointer[2]),
        .R(axis_tvalid_delay_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[0]_i_1 
       (.I0(read_pointer[0]),
        .O(\stream_data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \stream_data_out[1]_i_1 
       (.I0(read_pointer[0]),
        .I1(read_pointer[1]),
        .O(\stream_data_out[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \stream_data_out[2]_i_1 
       (.I0(read_pointer[0]),
        .I1(read_pointer[1]),
        .I2(read_pointer[2]),
        .O(\stream_data_out[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \stream_data_out[3]_i_1 
       (.I0(m_axi_rxd_tready),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(tx_en));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \stream_data_out[3]_i_2 
       (.I0(read_pointer[2]),
        .I1(read_pointer[0]),
        .I2(read_pointer[1]),
        .O(\stream_data_out[3]_i_2_n_0 ));
  FDSE \stream_data_out_reg[0] 
       (.C(m_axi_rxd_aclk),
        .CE(tx_en),
        .D(\stream_data_out[0]_i_1_n_0 ),
        .Q(m_axi_rxd_tdata[0]),
        .S(axis_tvalid_delay_i_1_n_0));
  FDRE \stream_data_out_reg[1] 
       (.C(m_axi_rxd_aclk),
        .CE(tx_en),
        .D(\stream_data_out[1]_i_1_n_0 ),
        .Q(m_axi_rxd_tdata[1]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \stream_data_out_reg[2] 
       (.C(m_axi_rxd_aclk),
        .CE(tx_en),
        .D(\stream_data_out[2]_i_1_n_0 ),
        .Q(m_axi_rxd_tdata[2]),
        .R(axis_tvalid_delay_i_1_n_0));
  FDRE \stream_data_out_reg[3] 
       (.C(m_axi_rxd_aclk),
        .CE(tx_en),
        .D(\stream_data_out[3]_i_2_n_0 ),
        .Q(m_axi_rxd_tdata[3]),
        .R(axis_tvalid_delay_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "ACL_RTL_top_v1_0_m_axi_rxs" *) 
module ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxs
   (m_axi_rxs_tvalid,
    m_axi_rxs_tlast,
    m_axi_rxs_tdata,
    m_axi_rxs_aclk,
    m_axi_rxs_tready,
    m_axi_rxs_aresetn);
  output m_axi_rxs_tvalid;
  output m_axi_rxs_tlast;
  output [3:0]m_axi_rxs_tdata;
  input m_axi_rxs_aclk;
  input m_axi_rxs_tready;
  input m_axi_rxs_aresetn;

  wire \FSM_sequential_mst_exec_state[1]_i_2__0_n_0 ;
  wire axis_tlast_n_0;
  wire axis_tvalid_delay_i_1__0_n_0;
  wire axis_tvalid_delay_i_2__0_n_0;
  wire count;
  wire \count[2]_i_1__0_n_0 ;
  wire [4:0]count_reg;
  wire m_axi_rxs_aclk;
  wire m_axi_rxs_aresetn;
  wire [3:0]m_axi_rxs_tdata;
  wire m_axi_rxs_tlast;
  wire m_axi_rxs_tready;
  wire m_axi_rxs_tvalid;
  wire [1:0]mst_exec_state;
  wire [1:0]mst_exec_state__0;
  wire [4:0]plusOp__0;
  wire \read_pointer_reg_n_0_[0] ;
  wire \read_pointer_reg_n_0_[1] ;
  wire \read_pointer_reg_n_0_[2] ;
  wire \stream_data_out[0]_i_1_n_0 ;
  wire \stream_data_out[1]_i_1__0_n_0 ;
  wire \stream_data_out[2]_i_1__0_n_0 ;
  wire \stream_data_out[3]_i_2_n_0 ;
  wire tx_en;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \FSM_sequential_mst_exec_state[0]_i_1__0 
       (.I0(mst_exec_state[1]),
        .I1(\FSM_sequential_mst_exec_state[1]_i_2__0_n_0 ),
        .I2(mst_exec_state[0]),
        .O(mst_exec_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_mst_exec_state[1]_i_1__0 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2__0_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(mst_exec_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_mst_exec_state[1]_i_2__0 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[4]),
        .I4(count_reg[2]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "init_counter:01,send_stream:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m_axi_rxs_aclk),
        .CE(1'b1),
        .D(mst_exec_state__0[0]),
        .Q(mst_exec_state[0]),
        .R(axis_tvalid_delay_i_1__0_n_0));
  (* FSM_ENCODED_STATES = "init_counter:01,send_stream:10,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m_axi_rxs_aclk),
        .CE(1'b1),
        .D(mst_exec_state__0[1]),
        .Q(mst_exec_state[1]),
        .R(axis_tvalid_delay_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    axis_tlast
       (.I0(\read_pointer_reg_n_0_[1] ),
        .I1(\read_pointer_reg_n_0_[2] ),
        .I2(\read_pointer_reg_n_0_[0] ),
        .O(axis_tlast_n_0));
  FDRE axis_tlast_delay_reg
       (.C(m_axi_rxs_aclk),
        .CE(1'b1),
        .D(axis_tlast_n_0),
        .Q(m_axi_rxs_tlast),
        .R(axis_tvalid_delay_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tvalid_delay_i_1__0
       (.I0(m_axi_rxs_aresetn),
        .O(axis_tvalid_delay_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axis_tvalid_delay_i_2__0
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .O(axis_tvalid_delay_i_2__0_n_0));
  FDRE axis_tvalid_delay_reg
       (.C(m_axi_rxs_aclk),
        .CE(1'b1),
        .D(axis_tvalid_delay_i_2__0_n_0),
        .Q(m_axi_rxs_tvalid),
        .R(axis_tvalid_delay_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(plusOp__0[3]));
  LUT3 #(
    .INIT(8'h04)) 
    \count[4]_i_1__0 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2__0_n_0 ),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2__0 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(plusOp__0[4]));
  FDRE \count_reg[0] 
       (.C(m_axi_rxs_aclk),
        .CE(count),
        .D(plusOp__0[0]),
        .Q(count_reg[0]),
        .R(axis_tvalid_delay_i_1__0_n_0));
  FDRE \count_reg[1] 
       (.C(m_axi_rxs_aclk),
        .CE(count),
        .D(plusOp__0[1]),
        .Q(count_reg[1]),
        .R(axis_tvalid_delay_i_1__0_n_0));
  FDRE \count_reg[2] 
       (.C(m_axi_rxs_aclk),
        .CE(count),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(count_reg[2]),
        .R(axis_tvalid_delay_i_1__0_n_0));
  FDRE \count_reg[3] 
       (.C(m_axi_rxs_aclk),
        .CE(count),
        .D(plusOp__0[3]),
        .Q(count_reg[3]),
        .R(axis_tvalid_delay_i_1__0_n_0));
  FDRE \count_reg[4] 
       (.C(m_axi_rxs_aclk),
        .CE(count),
        .D(plusOp__0[4]),
        .Q(count_reg[4]),
        .R(axis_tvalid_delay_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[0] 
       (.C(m_axi_rxs_aclk),
        .CE(tx_en),
        .D(\stream_data_out[0]_i_1_n_0 ),
        .Q(\read_pointer_reg_n_0_[0] ),
        .R(axis_tvalid_delay_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[1] 
       (.C(m_axi_rxs_aclk),
        .CE(tx_en),
        .D(\stream_data_out[1]_i_1__0_n_0 ),
        .Q(\read_pointer_reg_n_0_[1] ),
        .R(axis_tvalid_delay_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \read_pointer_reg[2] 
       (.C(m_axi_rxs_aclk),
        .CE(tx_en),
        .D(\stream_data_out[2]_i_1__0_n_0 ),
        .Q(\read_pointer_reg_n_0_[2] ),
        .R(axis_tvalid_delay_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[0]_i_1 
       (.I0(\read_pointer_reg_n_0_[0] ),
        .O(\stream_data_out[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \stream_data_out[1]_i_1__0 
       (.I0(\read_pointer_reg_n_0_[0] ),
        .I1(\read_pointer_reg_n_0_[1] ),
        .O(\stream_data_out[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \stream_data_out[2]_i_1__0 
       (.I0(\read_pointer_reg_n_0_[0] ),
        .I1(\read_pointer_reg_n_0_[1] ),
        .I2(\read_pointer_reg_n_0_[2] ),
        .O(\stream_data_out[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \stream_data_out[3]_i_1__0 
       (.I0(m_axi_rxs_tready),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(tx_en));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \stream_data_out[3]_i_2 
       (.I0(\read_pointer_reg_n_0_[2] ),
        .I1(\read_pointer_reg_n_0_[0] ),
        .I2(\read_pointer_reg_n_0_[1] ),
        .O(\stream_data_out[3]_i_2_n_0 ));
  FDSE \stream_data_out_reg[0] 
       (.C(m_axi_rxs_aclk),
        .CE(tx_en),
        .D(\stream_data_out[0]_i_1_n_0 ),
        .Q(m_axi_rxs_tdata[0]),
        .S(axis_tvalid_delay_i_1__0_n_0));
  FDRE \stream_data_out_reg[1] 
       (.C(m_axi_rxs_aclk),
        .CE(tx_en),
        .D(\stream_data_out[1]_i_1__0_n_0 ),
        .Q(m_axi_rxs_tdata[1]),
        .R(axis_tvalid_delay_i_1__0_n_0));
  FDRE \stream_data_out_reg[2] 
       (.C(m_axi_rxs_aclk),
        .CE(tx_en),
        .D(\stream_data_out[2]_i_1__0_n_0 ),
        .Q(m_axi_rxs_tdata[2]),
        .R(axis_tvalid_delay_i_1__0_n_0));
  FDRE \stream_data_out_reg[3] 
       (.C(m_axi_rxs_aclk),
        .CE(tx_en),
        .D(\stream_data_out[3]_i_2_n_0 ),
        .Q(m_axi_rxs_tdata[3]),
        .R(axis_tvalid_delay_i_1__0_n_0));
endmodule

(* ORIG_REF_NAME = "ACL_RTL_top_v1_0_s_axi_rxd" *) 
module ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_s_axi_rxd
   (s_axi_rxd_tready,
    s_axi_rxd_aclk,
    s_axi_rxd_tvalid,
    s_axi_rxd_aresetn,
    s_axi_rxd_tlast);
  output s_axi_rxd_tready;
  input s_axi_rxd_aclk;
  input s_axi_rxd_tvalid;
  input s_axi_rxd_aresetn;
  input s_axi_rxd_tlast;

  wire mst_exec_state_i_1_n_0;
  wire mst_exec_state_i_2_n_0;
  wire s_axi_rxd_aclk;
  wire s_axi_rxd_aresetn;
  wire s_axi_rxd_tlast;
  wire s_axi_rxd_tready;
  wire s_axi_rxd_tvalid;
  wire writes_done;
  wire writes_done_i_1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    mst_exec_state_i_1
       (.I0(s_axi_rxd_aresetn),
        .O(mst_exec_state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h74)) 
    mst_exec_state_i_2
       (.I0(writes_done),
        .I1(s_axi_rxd_tready),
        .I2(s_axi_rxd_tvalid),
        .O(mst_exec_state_i_2_n_0));
  FDRE mst_exec_state_reg
       (.C(s_axi_rxd_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_2_n_0),
        .Q(s_axi_rxd_tready),
        .R(mst_exec_state_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    writes_done_i_1
       (.I0(s_axi_rxd_tlast),
        .I1(s_axi_rxd_tready),
        .I2(s_axi_rxd_tvalid),
        .I3(writes_done),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(s_axi_rxd_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(mst_exec_state_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "ACL_RTL_top_v1_0_s_axi_rxs" *) 
module ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_s_axi_rxs
   (s_axi_rxs_tready,
    s_axi_rxs_aclk,
    s_axi_rxs_tvalid,
    s_axi_rxs_aresetn,
    s_axi_rxs_tlast);
  output s_axi_rxs_tready;
  input s_axi_rxs_aclk;
  input s_axi_rxs_tvalid;
  input s_axi_rxs_aresetn;
  input s_axi_rxs_tlast;

  wire mst_exec_state_i_2__0_n_0;
  wire p_0_in;
  wire s_axi_rxs_aclk;
  wire s_axi_rxs_aresetn;
  wire s_axi_rxs_tlast;
  wire s_axi_rxs_tready;
  wire s_axi_rxs_tvalid;
  wire writes_done_i_1__0_n_0;
  wire writes_done_reg_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    mst_exec_state_i_1__0
       (.I0(s_axi_rxs_aresetn),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h74)) 
    mst_exec_state_i_2__0
       (.I0(writes_done_reg_n_0),
        .I1(s_axi_rxs_tready),
        .I2(s_axi_rxs_tvalid),
        .O(mst_exec_state_i_2__0_n_0));
  FDRE mst_exec_state_reg
       (.C(s_axi_rxs_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_2__0_n_0),
        .Q(s_axi_rxs_tready),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBFAA)) 
    writes_done_i_1__0
       (.I0(s_axi_rxs_tlast),
        .I1(s_axi_rxs_tready),
        .I2(s_axi_rxs_tvalid),
        .I3(writes_done_reg_n_0),
        .O(writes_done_i_1__0_n_0));
  FDRE writes_done_reg
       (.C(s_axi_rxs_aclk),
        .CE(1'b1),
        .D(writes_done_i_1__0_n_0),
        .Q(writes_done_reg_n_0),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
