//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed Apr 16 15:02:57 2025
//Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
//Command     : generate_target ACL.bd
//Design      : ACL
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ACL,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ACL,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=42,numReposBlks=26,numNonXlnxBlks=0,numHierBlks=16,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ACL.hwdef" *) 
module ACL
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mgt_clk, CAN_DEBUG false, FREQ_HZ 100000000" *) input mgt_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_P" *) input mgt_clk_clk_p;
  output [0:0]mgt_clk_led;
  output [0:0]rx_clk_led;
  output [0:0]sfp_tx_dis;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii RXN" *) input sgmii_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii RXP" *) input sgmii_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii TXN" *) output sgmii_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sgmii:1.0 sgmii TXP" *) output sgmii_txp;

  wire [39:0]S_AXI_1_ARADDR;
  wire [0:0]S_AXI_1_ARREADY;
  wire [0:0]S_AXI_1_ARVALID;
  wire [39:0]S_AXI_1_AWADDR;
  wire [0:0]S_AXI_1_AWREADY;
  wire [0:0]S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire [0:0]S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire [0:0]S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire [0:0]S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire [0:0]S_AXI_1_WVALID;
  wire [31:0]axi_eth_0_dma_M_AXIS_CNTRL_TDATA;
  wire [3:0]axi_eth_0_dma_M_AXIS_CNTRL_TKEEP;
  wire axi_eth_0_dma_M_AXIS_CNTRL_TLAST;
  wire axi_eth_0_dma_M_AXIS_CNTRL_TREADY;
  wire axi_eth_0_dma_M_AXIS_CNTRL_TVALID;
  wire [31:0]axi_eth_0_dma_M_AXIS_MM2S_TDATA;
  wire [3:0]axi_eth_0_dma_M_AXIS_MM2S_TKEEP;
  wire axi_eth_0_dma_M_AXIS_MM2S_TLAST;
  wire axi_eth_0_dma_M_AXIS_MM2S_TREADY;
  wire axi_eth_0_dma_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_eth_0_dma_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_eth_0_dma_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_eth_0_dma_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_eth_0_dma_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_eth_0_dma_M_AXI_MM2S_ARPROT;
  wire axi_eth_0_dma_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_eth_0_dma_M_AXI_MM2S_ARSIZE;
  wire axi_eth_0_dma_M_AXI_MM2S_ARVALID;
  wire [31:0]axi_eth_0_dma_M_AXI_MM2S_RDATA;
  wire axi_eth_0_dma_M_AXI_MM2S_RLAST;
  wire axi_eth_0_dma_M_AXI_MM2S_RREADY;
  wire [1:0]axi_eth_0_dma_M_AXI_MM2S_RRESP;
  wire axi_eth_0_dma_M_AXI_MM2S_RVALID;
  wire [31:0]axi_eth_0_dma_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_eth_0_dma_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_eth_0_dma_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_eth_0_dma_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_eth_0_dma_M_AXI_S2MM_AWPROT;
  wire axi_eth_0_dma_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_eth_0_dma_M_AXI_S2MM_AWSIZE;
  wire axi_eth_0_dma_M_AXI_S2MM_AWVALID;
  wire axi_eth_0_dma_M_AXI_S2MM_BREADY;
  wire [1:0]axi_eth_0_dma_M_AXI_S2MM_BRESP;
  wire axi_eth_0_dma_M_AXI_S2MM_BVALID;
  wire [31:0]axi_eth_0_dma_M_AXI_S2MM_WDATA;
  wire axi_eth_0_dma_M_AXI_S2MM_WLAST;
  wire axi_eth_0_dma_M_AXI_S2MM_WREADY;
  wire [3:0]axi_eth_0_dma_M_AXI_S2MM_WSTRB;
  wire axi_eth_0_dma_M_AXI_S2MM_WVALID;
  wire [31:0]axi_eth_0_dma_M_AXI_SG_ARADDR;
  wire [1:0]axi_eth_0_dma_M_AXI_SG_ARBURST;
  wire [3:0]axi_eth_0_dma_M_AXI_SG_ARCACHE;
  wire [7:0]axi_eth_0_dma_M_AXI_SG_ARLEN;
  wire [2:0]axi_eth_0_dma_M_AXI_SG_ARPROT;
  wire axi_eth_0_dma_M_AXI_SG_ARREADY;
  wire [2:0]axi_eth_0_dma_M_AXI_SG_ARSIZE;
  wire axi_eth_0_dma_M_AXI_SG_ARVALID;
  wire [31:0]axi_eth_0_dma_M_AXI_SG_AWADDR;
  wire [1:0]axi_eth_0_dma_M_AXI_SG_AWBURST;
  wire [3:0]axi_eth_0_dma_M_AXI_SG_AWCACHE;
  wire [7:0]axi_eth_0_dma_M_AXI_SG_AWLEN;
  wire [2:0]axi_eth_0_dma_M_AXI_SG_AWPROT;
  wire axi_eth_0_dma_M_AXI_SG_AWREADY;
  wire [2:0]axi_eth_0_dma_M_AXI_SG_AWSIZE;
  wire axi_eth_0_dma_M_AXI_SG_AWVALID;
  wire axi_eth_0_dma_M_AXI_SG_BREADY;
  wire [1:0]axi_eth_0_dma_M_AXI_SG_BRESP;
  wire axi_eth_0_dma_M_AXI_SG_BVALID;
  wire [31:0]axi_eth_0_dma_M_AXI_SG_RDATA;
  wire axi_eth_0_dma_M_AXI_SG_RLAST;
  wire axi_eth_0_dma_M_AXI_SG_RREADY;
  wire [1:0]axi_eth_0_dma_M_AXI_SG_RRESP;
  wire axi_eth_0_dma_M_AXI_SG_RVALID;
  wire [31:0]axi_eth_0_dma_M_AXI_SG_WDATA;
  wire axi_eth_0_dma_M_AXI_SG_WLAST;
  wire axi_eth_0_dma_M_AXI_SG_WREADY;
  wire [3:0]axi_eth_0_dma_M_AXI_SG_WSTRB;
  wire axi_eth_0_dma_M_AXI_SG_WVALID;
  wire axi_eth_0_dma_mm2s_cntrl_reset_out_n;
  wire axi_eth_0_dma_mm2s_introut;
  wire axi_eth_0_dma_mm2s_prmry_reset_out_n;
  wire axi_eth_0_dma_s2mm_introut;
  wire axi_eth_0_dma_s2mm_prmry_reset_out_n;
  wire axi_eth_0_dma_s2mm_sts_reset_out_n;
  wire axi_eth_0_interrupt;
  wire [31:0]axi_eth_0_m_axis_rxd_TDATA;
  wire [3:0]axi_eth_0_m_axis_rxd_TKEEP;
  wire axi_eth_0_m_axis_rxd_TLAST;
  wire axi_eth_0_m_axis_rxd_TREADY;
  wire axi_eth_0_m_axis_rxd_TVALID;
  wire [31:0]axi_eth_0_m_axis_rxs_TDATA;
  wire [3:0]axi_eth_0_m_axis_rxs_TKEEP;
  wire axi_eth_0_m_axis_rxs_TLAST;
  wire axi_eth_0_m_axis_rxs_TREADY;
  wire axi_eth_0_m_axis_rxs_TVALID;
  wire axi_eth_0_rxuserclk2_out;
  wire axi_eth_0_sgmii_RXN;
  wire axi_eth_0_sgmii_RXP;
  wire axi_eth_0_sgmii_TXN;
  wire axi_eth_0_sgmii_TXP;
  wire axi_eth_0_userclk2_out;
  wire mgt_clk_1_CLK_N;
  wire mgt_clk_1_CLK_P;
  wire [0:0]other_perph_Dout1;
  wire [0:0]other_perph_Dout2;
  wire [0:0]other_perph_Dout3;
  wire other_perph_Res;
  wire [0:0]other_perph_dout;
  wire other_perph_interrupt;
  wire s_axi_aclk_1;
  wire [0:0]s_axi_aresetn_1;
  wire [39:0]zynq_ps_M00_AXI_ARADDR;
  wire zynq_ps_M00_AXI_ARREADY;
  wire zynq_ps_M00_AXI_ARVALID;
  wire [39:0]zynq_ps_M00_AXI_AWADDR;
  wire zynq_ps_M00_AXI_AWREADY;
  wire zynq_ps_M00_AXI_AWVALID;
  wire zynq_ps_M00_AXI_BREADY;
  wire [1:0]zynq_ps_M00_AXI_BRESP;
  wire zynq_ps_M00_AXI_BVALID;
  wire [31:0]zynq_ps_M00_AXI_RDATA;
  wire zynq_ps_M00_AXI_RREADY;
  wire [1:0]zynq_ps_M00_AXI_RRESP;
  wire zynq_ps_M00_AXI_RVALID;
  wire [31:0]zynq_ps_M00_AXI_WDATA;
  wire zynq_ps_M00_AXI_WREADY;
  wire zynq_ps_M00_AXI_WVALID;
  wire [39:0]zynq_ps_M01_AXI_ARADDR;
  wire zynq_ps_M01_AXI_ARREADY;
  wire zynq_ps_M01_AXI_ARVALID;
  wire [39:0]zynq_ps_M01_AXI_AWADDR;
  wire zynq_ps_M01_AXI_AWREADY;
  wire zynq_ps_M01_AXI_AWVALID;
  wire zynq_ps_M01_AXI_BREADY;
  wire [1:0]zynq_ps_M01_AXI_BRESP;
  wire zynq_ps_M01_AXI_BVALID;
  wire [31:0]zynq_ps_M01_AXI_RDATA;
  wire zynq_ps_M01_AXI_RREADY;
  wire [1:0]zynq_ps_M01_AXI_RRESP;
  wire zynq_ps_M01_AXI_RVALID;
  wire [31:0]zynq_ps_M01_AXI_WDATA;
  wire zynq_ps_M01_AXI_WREADY;
  wire [3:0]zynq_ps_M01_AXI_WSTRB;
  wire zynq_ps_M01_AXI_WVALID;
  wire zynq_ps_clk_50;

  assign axi_eth_0_sgmii_RXN = sgmii_rxn;
  assign axi_eth_0_sgmii_RXP = sgmii_rxp;
  assign axi_lite_clk_led[0] = other_perph_Dout3;
  assign axil_reset_led = other_perph_Res;
  assign mgt_clk_1_CLK_N = mgt_clk_clk_n;
  assign mgt_clk_1_CLK_P = mgt_clk_clk_p;
  assign mgt_clk_led[0] = other_perph_Dout2;
  assign rx_clk_led[0] = other_perph_Dout1;
  assign sfp_tx_dis[0] = other_perph_dout;
  assign sgmii_txn = axi_eth_0_sgmii_TXN;
  assign sgmii_txp = axi_eth_0_sgmii_TXP;
  ACL_axi_eth_0_0 axi_eth_0
       (.axi_rxd_arstn(axi_eth_0_dma_s2mm_prmry_reset_out_n),
        .axi_rxs_arstn(axi_eth_0_dma_s2mm_sts_reset_out_n),
        .axi_txc_arstn(axi_eth_0_dma_mm2s_cntrl_reset_out_n),
        .axi_txd_arstn(axi_eth_0_dma_mm2s_prmry_reset_out_n),
        .axis_clk(s_axi_aclk_1),
        .interrupt(axi_eth_0_interrupt),
        .m_axis_rxd_tdata(axi_eth_0_m_axis_rxd_TDATA),
        .m_axis_rxd_tkeep(axi_eth_0_m_axis_rxd_TKEEP),
        .m_axis_rxd_tlast(axi_eth_0_m_axis_rxd_TLAST),
        .m_axis_rxd_tready(axi_eth_0_m_axis_rxd_TREADY),
        .m_axis_rxd_tvalid(axi_eth_0_m_axis_rxd_TVALID),
        .m_axis_rxs_tdata(axi_eth_0_m_axis_rxs_TDATA),
        .m_axis_rxs_tkeep(axi_eth_0_m_axis_rxs_TKEEP),
        .m_axis_rxs_tlast(axi_eth_0_m_axis_rxs_TLAST),
        .m_axis_rxs_tready(axi_eth_0_m_axis_rxs_TREADY),
        .m_axis_rxs_tvalid(axi_eth_0_m_axis_rxs_TVALID),
        .mdio_mdio_i(1'b1),
        .mgt_clk_clk_n(mgt_clk_1_CLK_N),
        .mgt_clk_clk_p(mgt_clk_1_CLK_P),
        .ref_clk(zynq_ps_clk_50),
        .rxuserclk2_out(axi_eth_0_rxuserclk2_out),
        .s_axi_araddr(zynq_ps_M01_AXI_ARADDR[17:0]),
        .s_axi_arready(zynq_ps_M01_AXI_ARREADY),
        .s_axi_arvalid(zynq_ps_M01_AXI_ARVALID),
        .s_axi_awaddr(zynq_ps_M01_AXI_AWADDR[17:0]),
        .s_axi_awready(zynq_ps_M01_AXI_AWREADY),
        .s_axi_awvalid(zynq_ps_M01_AXI_AWVALID),
        .s_axi_bready(zynq_ps_M01_AXI_BREADY),
        .s_axi_bresp(zynq_ps_M01_AXI_BRESP),
        .s_axi_bvalid(zynq_ps_M01_AXI_BVALID),
        .s_axi_lite_clk(s_axi_aclk_1),
        .s_axi_lite_resetn(s_axi_aresetn_1),
        .s_axi_rdata(zynq_ps_M01_AXI_RDATA),
        .s_axi_rready(zynq_ps_M01_AXI_RREADY),
        .s_axi_rresp(zynq_ps_M01_AXI_RRESP),
        .s_axi_rvalid(zynq_ps_M01_AXI_RVALID),
        .s_axi_wdata(zynq_ps_M01_AXI_WDATA),
        .s_axi_wready(zynq_ps_M01_AXI_WREADY),
        .s_axi_wstrb(zynq_ps_M01_AXI_WSTRB),
        .s_axi_wvalid(zynq_ps_M01_AXI_WVALID),
        .s_axis_txc_tdata(axi_eth_0_dma_M_AXIS_CNTRL_TDATA),
        .s_axis_txc_tkeep(axi_eth_0_dma_M_AXIS_CNTRL_TKEEP),
        .s_axis_txc_tlast(axi_eth_0_dma_M_AXIS_CNTRL_TLAST),
        .s_axis_txc_tready(axi_eth_0_dma_M_AXIS_CNTRL_TREADY),
        .s_axis_txc_tvalid(axi_eth_0_dma_M_AXIS_CNTRL_TVALID),
        .s_axis_txd_tdata(axi_eth_0_dma_M_AXIS_MM2S_TDATA),
        .s_axis_txd_tkeep(axi_eth_0_dma_M_AXIS_MM2S_TKEEP),
        .s_axis_txd_tlast(axi_eth_0_dma_M_AXIS_MM2S_TLAST),
        .s_axis_txd_tready(axi_eth_0_dma_M_AXIS_MM2S_TREADY),
        .s_axis_txd_tvalid(axi_eth_0_dma_M_AXIS_MM2S_TVALID),
        .sgmii_rxn(axi_eth_0_sgmii_RXN),
        .sgmii_rxp(axi_eth_0_sgmii_RXP),
        .sgmii_txn(axi_eth_0_sgmii_TXN),
        .sgmii_txp(axi_eth_0_sgmii_TXP),
        .signal_detect(1'b1),
        .userclk2_out(axi_eth_0_userclk2_out));
  ACL_axi_eth_0_dma_0 axi_eth_0_dma
       (.axi_resetn(s_axi_aresetn_1),
        .m_axi_mm2s_aclk(s_axi_aclk_1),
        .m_axi_mm2s_araddr(axi_eth_0_dma_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_eth_0_dma_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_eth_0_dma_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_eth_0_dma_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_eth_0_dma_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_eth_0_dma_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_eth_0_dma_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_eth_0_dma_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_eth_0_dma_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_eth_0_dma_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_eth_0_dma_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_eth_0_dma_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_eth_0_dma_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(s_axi_aclk_1),
        .m_axi_s2mm_awaddr(axi_eth_0_dma_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_eth_0_dma_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_eth_0_dma_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_eth_0_dma_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_eth_0_dma_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_eth_0_dma_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_eth_0_dma_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_eth_0_dma_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_eth_0_dma_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_eth_0_dma_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_eth_0_dma_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_eth_0_dma_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_eth_0_dma_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_eth_0_dma_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_eth_0_dma_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_eth_0_dma_M_AXI_S2MM_WVALID),
        .m_axi_sg_aclk(s_axi_aclk_1),
        .m_axi_sg_araddr(axi_eth_0_dma_M_AXI_SG_ARADDR),
        .m_axi_sg_arburst(axi_eth_0_dma_M_AXI_SG_ARBURST),
        .m_axi_sg_arcache(axi_eth_0_dma_M_AXI_SG_ARCACHE),
        .m_axi_sg_arlen(axi_eth_0_dma_M_AXI_SG_ARLEN),
        .m_axi_sg_arprot(axi_eth_0_dma_M_AXI_SG_ARPROT),
        .m_axi_sg_arready(axi_eth_0_dma_M_AXI_SG_ARREADY),
        .m_axi_sg_arsize(axi_eth_0_dma_M_AXI_SG_ARSIZE),
        .m_axi_sg_arvalid(axi_eth_0_dma_M_AXI_SG_ARVALID),
        .m_axi_sg_awaddr(axi_eth_0_dma_M_AXI_SG_AWADDR),
        .m_axi_sg_awburst(axi_eth_0_dma_M_AXI_SG_AWBURST),
        .m_axi_sg_awcache(axi_eth_0_dma_M_AXI_SG_AWCACHE),
        .m_axi_sg_awlen(axi_eth_0_dma_M_AXI_SG_AWLEN),
        .m_axi_sg_awprot(axi_eth_0_dma_M_AXI_SG_AWPROT),
        .m_axi_sg_awready(axi_eth_0_dma_M_AXI_SG_AWREADY),
        .m_axi_sg_awsize(axi_eth_0_dma_M_AXI_SG_AWSIZE),
        .m_axi_sg_awvalid(axi_eth_0_dma_M_AXI_SG_AWVALID),
        .m_axi_sg_bready(axi_eth_0_dma_M_AXI_SG_BREADY),
        .m_axi_sg_bresp(axi_eth_0_dma_M_AXI_SG_BRESP),
        .m_axi_sg_bvalid(axi_eth_0_dma_M_AXI_SG_BVALID),
        .m_axi_sg_rdata(axi_eth_0_dma_M_AXI_SG_RDATA),
        .m_axi_sg_rlast(axi_eth_0_dma_M_AXI_SG_RLAST),
        .m_axi_sg_rready(axi_eth_0_dma_M_AXI_SG_RREADY),
        .m_axi_sg_rresp(axi_eth_0_dma_M_AXI_SG_RRESP),
        .m_axi_sg_rvalid(axi_eth_0_dma_M_AXI_SG_RVALID),
        .m_axi_sg_wdata(axi_eth_0_dma_M_AXI_SG_WDATA),
        .m_axi_sg_wlast(axi_eth_0_dma_M_AXI_SG_WLAST),
        .m_axi_sg_wready(axi_eth_0_dma_M_AXI_SG_WREADY),
        .m_axi_sg_wstrb(axi_eth_0_dma_M_AXI_SG_WSTRB),
        .m_axi_sg_wvalid(axi_eth_0_dma_M_AXI_SG_WVALID),
        .m_axis_mm2s_cntrl_tdata(axi_eth_0_dma_M_AXIS_CNTRL_TDATA),
        .m_axis_mm2s_cntrl_tkeep(axi_eth_0_dma_M_AXIS_CNTRL_TKEEP),
        .m_axis_mm2s_cntrl_tlast(axi_eth_0_dma_M_AXIS_CNTRL_TLAST),
        .m_axis_mm2s_cntrl_tready(axi_eth_0_dma_M_AXIS_CNTRL_TREADY),
        .m_axis_mm2s_cntrl_tvalid(axi_eth_0_dma_M_AXIS_CNTRL_TVALID),
        .m_axis_mm2s_tdata(axi_eth_0_dma_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tkeep(axi_eth_0_dma_M_AXIS_MM2S_TKEEP),
        .m_axis_mm2s_tlast(axi_eth_0_dma_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_eth_0_dma_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_eth_0_dma_M_AXIS_MM2S_TVALID),
        .mm2s_cntrl_reset_out_n(axi_eth_0_dma_mm2s_cntrl_reset_out_n),
        .mm2s_introut(axi_eth_0_dma_mm2s_introut),
        .mm2s_prmry_reset_out_n(axi_eth_0_dma_mm2s_prmry_reset_out_n),
        .s2mm_introut(axi_eth_0_dma_s2mm_introut),
        .s2mm_prmry_reset_out_n(axi_eth_0_dma_s2mm_prmry_reset_out_n),
        .s2mm_sts_reset_out_n(axi_eth_0_dma_s2mm_sts_reset_out_n),
        .s_axi_lite_aclk(s_axi_aclk_1),
        .s_axi_lite_araddr(zynq_ps_M00_AXI_ARADDR[9:0]),
        .s_axi_lite_arready(zynq_ps_M00_AXI_ARREADY),
        .s_axi_lite_arvalid(zynq_ps_M00_AXI_ARVALID),
        .s_axi_lite_awaddr(zynq_ps_M00_AXI_AWADDR[9:0]),
        .s_axi_lite_awready(zynq_ps_M00_AXI_AWREADY),
        .s_axi_lite_awvalid(zynq_ps_M00_AXI_AWVALID),
        .s_axi_lite_bready(zynq_ps_M00_AXI_BREADY),
        .s_axi_lite_bresp(zynq_ps_M00_AXI_BRESP),
        .s_axi_lite_bvalid(zynq_ps_M00_AXI_BVALID),
        .s_axi_lite_rdata(zynq_ps_M00_AXI_RDATA),
        .s_axi_lite_rready(zynq_ps_M00_AXI_RREADY),
        .s_axi_lite_rresp(zynq_ps_M00_AXI_RRESP),
        .s_axi_lite_rvalid(zynq_ps_M00_AXI_RVALID),
        .s_axi_lite_wdata(zynq_ps_M00_AXI_WDATA),
        .s_axi_lite_wready(zynq_ps_M00_AXI_WREADY),
        .s_axi_lite_wvalid(zynq_ps_M00_AXI_WVALID),
        .s_axis_s2mm_sts_tdata(axi_eth_0_m_axis_rxs_TDATA),
        .s_axis_s2mm_sts_tkeep(axi_eth_0_m_axis_rxs_TKEEP),
        .s_axis_s2mm_sts_tlast(axi_eth_0_m_axis_rxs_TLAST),
        .s_axis_s2mm_sts_tready(axi_eth_0_m_axis_rxs_TREADY),
        .s_axis_s2mm_sts_tvalid(axi_eth_0_m_axis_rxs_TVALID),
        .s_axis_s2mm_tdata(axi_eth_0_m_axis_rxd_TDATA),
        .s_axis_s2mm_tkeep(axi_eth_0_m_axis_rxd_TKEEP),
        .s_axis_s2mm_tlast(axi_eth_0_m_axis_rxd_TLAST),
        .s_axis_s2mm_tready(axi_eth_0_m_axis_rxd_TREADY),
        .s_axis_s2mm_tvalid(axi_eth_0_m_axis_rxd_TVALID));
  other_perph_imp_77TATY other_perph
       (.CLK(axi_eth_0_rxuserclk2_out),
        .CLK1(axi_eth_0_userclk2_out),
        .Dout1(other_perph_Dout1),
        .Dout2(other_perph_Dout2),
        .Dout3(other_perph_Dout3),
        .Res(other_perph_Res),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .dout(other_perph_dout),
        .interrupt(other_perph_interrupt),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_aresetn(s_axi_aresetn_1));
  zynq_ps_imp_1RA2FC1 zynq_ps
       (.In0(axi_eth_0_dma_mm2s_introut),
        .In1(axi_eth_0_dma_s2mm_introut),
        .In2(axi_eth_0_interrupt),
        .In3(other_perph_interrupt),
        .M00_AXI_araddr(zynq_ps_M00_AXI_ARADDR),
        .M00_AXI_arready(zynq_ps_M00_AXI_ARREADY),
        .M00_AXI_arvalid(zynq_ps_M00_AXI_ARVALID),
        .M00_AXI_awaddr(zynq_ps_M00_AXI_AWADDR),
        .M00_AXI_awready(zynq_ps_M00_AXI_AWREADY),
        .M00_AXI_awvalid(zynq_ps_M00_AXI_AWVALID),
        .M00_AXI_bready(zynq_ps_M00_AXI_BREADY),
        .M00_AXI_bresp(zynq_ps_M00_AXI_BRESP),
        .M00_AXI_bvalid(zynq_ps_M00_AXI_BVALID),
        .M00_AXI_rdata(zynq_ps_M00_AXI_RDATA),
        .M00_AXI_rready(zynq_ps_M00_AXI_RREADY),
        .M00_AXI_rresp(zynq_ps_M00_AXI_RRESP),
        .M00_AXI_rvalid(zynq_ps_M00_AXI_RVALID),
        .M00_AXI_wdata(zynq_ps_M00_AXI_WDATA),
        .M00_AXI_wready(zynq_ps_M00_AXI_WREADY),
        .M00_AXI_wvalid(zynq_ps_M00_AXI_WVALID),
        .M01_AXI_araddr(zynq_ps_M01_AXI_ARADDR),
        .M01_AXI_arready(zynq_ps_M01_AXI_ARREADY),
        .M01_AXI_arvalid(zynq_ps_M01_AXI_ARVALID),
        .M01_AXI_awaddr(zynq_ps_M01_AXI_AWADDR),
        .M01_AXI_awready(zynq_ps_M01_AXI_AWREADY),
        .M01_AXI_awvalid(zynq_ps_M01_AXI_AWVALID),
        .M01_AXI_bready(zynq_ps_M01_AXI_BREADY),
        .M01_AXI_bresp(zynq_ps_M01_AXI_BRESP),
        .M01_AXI_bvalid(zynq_ps_M01_AXI_BVALID),
        .M01_AXI_rdata(zynq_ps_M01_AXI_RDATA),
        .M01_AXI_rready(zynq_ps_M01_AXI_RREADY),
        .M01_AXI_rresp(zynq_ps_M01_AXI_RRESP),
        .M01_AXI_rvalid(zynq_ps_M01_AXI_RVALID),
        .M01_AXI_wdata(zynq_ps_M01_AXI_WDATA),
        .M01_AXI_wready(zynq_ps_M01_AXI_WREADY),
        .M01_AXI_wstrb(zynq_ps_M01_AXI_WSTRB),
        .M01_AXI_wvalid(zynq_ps_M01_AXI_WVALID),
        .M02_AXI_araddr(S_AXI_1_ARADDR),
        .M02_AXI_arready(S_AXI_1_ARREADY),
        .M02_AXI_arvalid(S_AXI_1_ARVALID),
        .M02_AXI_awaddr(S_AXI_1_AWADDR),
        .M02_AXI_awready(S_AXI_1_AWREADY),
        .M02_AXI_awvalid(S_AXI_1_AWVALID),
        .M02_AXI_bready(S_AXI_1_BREADY),
        .M02_AXI_bresp(S_AXI_1_BRESP),
        .M02_AXI_bvalid(S_AXI_1_BVALID),
        .M02_AXI_rdata(S_AXI_1_RDATA),
        .M02_AXI_rready(S_AXI_1_RREADY),
        .M02_AXI_rresp(S_AXI_1_RRESP),
        .M02_AXI_rvalid(S_AXI_1_RVALID),
        .M02_AXI_wdata(S_AXI_1_WDATA),
        .M02_AXI_wready(S_AXI_1_WREADY),
        .M02_AXI_wstrb(S_AXI_1_WSTRB),
        .M02_AXI_wvalid(S_AXI_1_WVALID),
        .S00_AXI_araddr(axi_eth_0_dma_M_AXI_SG_ARADDR),
        .S00_AXI_arburst(axi_eth_0_dma_M_AXI_SG_ARBURST),
        .S00_AXI_arcache(axi_eth_0_dma_M_AXI_SG_ARCACHE),
        .S00_AXI_arlen(axi_eth_0_dma_M_AXI_SG_ARLEN),
        .S00_AXI_arprot(axi_eth_0_dma_M_AXI_SG_ARPROT),
        .S00_AXI_arready(axi_eth_0_dma_M_AXI_SG_ARREADY),
        .S00_AXI_arsize(axi_eth_0_dma_M_AXI_SG_ARSIZE),
        .S00_AXI_arvalid(axi_eth_0_dma_M_AXI_SG_ARVALID),
        .S00_AXI_awaddr(axi_eth_0_dma_M_AXI_SG_AWADDR),
        .S00_AXI_awburst(axi_eth_0_dma_M_AXI_SG_AWBURST),
        .S00_AXI_awcache(axi_eth_0_dma_M_AXI_SG_AWCACHE),
        .S00_AXI_awlen(axi_eth_0_dma_M_AXI_SG_AWLEN),
        .S00_AXI_awprot(axi_eth_0_dma_M_AXI_SG_AWPROT),
        .S00_AXI_awready(axi_eth_0_dma_M_AXI_SG_AWREADY),
        .S00_AXI_awsize(axi_eth_0_dma_M_AXI_SG_AWSIZE),
        .S00_AXI_awvalid(axi_eth_0_dma_M_AXI_SG_AWVALID),
        .S00_AXI_bready(axi_eth_0_dma_M_AXI_SG_BREADY),
        .S00_AXI_bresp(axi_eth_0_dma_M_AXI_SG_BRESP),
        .S00_AXI_bvalid(axi_eth_0_dma_M_AXI_SG_BVALID),
        .S00_AXI_rdata(axi_eth_0_dma_M_AXI_SG_RDATA),
        .S00_AXI_rlast(axi_eth_0_dma_M_AXI_SG_RLAST),
        .S00_AXI_rready(axi_eth_0_dma_M_AXI_SG_RREADY),
        .S00_AXI_rresp(axi_eth_0_dma_M_AXI_SG_RRESP),
        .S00_AXI_rvalid(axi_eth_0_dma_M_AXI_SG_RVALID),
        .S00_AXI_wdata(axi_eth_0_dma_M_AXI_SG_WDATA),
        .S00_AXI_wlast(axi_eth_0_dma_M_AXI_SG_WLAST),
        .S00_AXI_wready(axi_eth_0_dma_M_AXI_SG_WREADY),
        .S00_AXI_wstrb(axi_eth_0_dma_M_AXI_SG_WSTRB),
        .S00_AXI_wvalid(axi_eth_0_dma_M_AXI_SG_WVALID),
        .S01_AXI_araddr(axi_eth_0_dma_M_AXI_MM2S_ARADDR),
        .S01_AXI_arburst(axi_eth_0_dma_M_AXI_MM2S_ARBURST),
        .S01_AXI_arcache(axi_eth_0_dma_M_AXI_MM2S_ARCACHE),
        .S01_AXI_arlen(axi_eth_0_dma_M_AXI_MM2S_ARLEN),
        .S01_AXI_arprot(axi_eth_0_dma_M_AXI_MM2S_ARPROT),
        .S01_AXI_arready(axi_eth_0_dma_M_AXI_MM2S_ARREADY),
        .S01_AXI_arsize(axi_eth_0_dma_M_AXI_MM2S_ARSIZE),
        .S01_AXI_arvalid(axi_eth_0_dma_M_AXI_MM2S_ARVALID),
        .S01_AXI_rdata(axi_eth_0_dma_M_AXI_MM2S_RDATA),
        .S01_AXI_rlast(axi_eth_0_dma_M_AXI_MM2S_RLAST),
        .S01_AXI_rready(axi_eth_0_dma_M_AXI_MM2S_RREADY),
        .S01_AXI_rresp(axi_eth_0_dma_M_AXI_MM2S_RRESP),
        .S01_AXI_rvalid(axi_eth_0_dma_M_AXI_MM2S_RVALID),
        .S02_AXI_awaddr(axi_eth_0_dma_M_AXI_S2MM_AWADDR),
        .S02_AXI_awburst(axi_eth_0_dma_M_AXI_S2MM_AWBURST),
        .S02_AXI_awcache(axi_eth_0_dma_M_AXI_S2MM_AWCACHE),
        .S02_AXI_awlen(axi_eth_0_dma_M_AXI_S2MM_AWLEN),
        .S02_AXI_awprot(axi_eth_0_dma_M_AXI_S2MM_AWPROT),
        .S02_AXI_awready(axi_eth_0_dma_M_AXI_S2MM_AWREADY),
        .S02_AXI_awsize(axi_eth_0_dma_M_AXI_S2MM_AWSIZE),
        .S02_AXI_awvalid(axi_eth_0_dma_M_AXI_S2MM_AWVALID),
        .S02_AXI_bready(axi_eth_0_dma_M_AXI_S2MM_BREADY),
        .S02_AXI_bresp(axi_eth_0_dma_M_AXI_S2MM_BRESP),
        .S02_AXI_bvalid(axi_eth_0_dma_M_AXI_S2MM_BVALID),
        .S02_AXI_wdata(axi_eth_0_dma_M_AXI_S2MM_WDATA),
        .S02_AXI_wlast(axi_eth_0_dma_M_AXI_S2MM_WLAST),
        .S02_AXI_wready(axi_eth_0_dma_M_AXI_S2MM_WREADY),
        .S02_AXI_wstrb(axi_eth_0_dma_M_AXI_S2MM_WSTRB),
        .S02_AXI_wvalid(axi_eth_0_dma_M_AXI_S2MM_WVALID),
        .clk_50(zynq_ps_clk_50),
        .clk_75(s_axi_aclk_1),
        .perph_aresetn_75(s_axi_aresetn_1));
endmodule

module ACL_axi_pl_ps_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [1:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [1:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [127:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [127:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [15:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [2:0]S01_AXI_1_ARPROT;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire [31:0]S02_AXI_1_AWADDR;
  wire [1:0]S02_AXI_1_AWBURST;
  wire [3:0]S02_AXI_1_AWCACHE;
  wire [7:0]S02_AXI_1_AWLEN;
  wire [2:0]S02_AXI_1_AWPROT;
  wire S02_AXI_1_AWREADY;
  wire [2:0]S02_AXI_1_AWSIZE;
  wire S02_AXI_1_AWVALID;
  wire S02_AXI_1_BREADY;
  wire [1:0]S02_AXI_1_BRESP;
  wire S02_AXI_1_BVALID;
  wire [31:0]S02_AXI_1_WDATA;
  wire S02_AXI_1_WLAST;
  wire S02_AXI_1_WREADY;
  wire [3:0]S02_AXI_1_WSTRB;
  wire S02_AXI_1_WVALID;
  wire axi_pl_ps_ACLK_net;
  wire axi_pl_ps_ARESETN_net;
  wire [31:0]m00_couplers_to_axi_pl_ps_ARADDR;
  wire [1:0]m00_couplers_to_axi_pl_ps_ARBURST;
  wire [3:0]m00_couplers_to_axi_pl_ps_ARCACHE;
  wire [1:0]m00_couplers_to_axi_pl_ps_ARID;
  wire [7:0]m00_couplers_to_axi_pl_ps_ARLEN;
  wire m00_couplers_to_axi_pl_ps_ARLOCK;
  wire [2:0]m00_couplers_to_axi_pl_ps_ARPROT;
  wire [3:0]m00_couplers_to_axi_pl_ps_ARQOS;
  wire m00_couplers_to_axi_pl_ps_ARREADY;
  wire [2:0]m00_couplers_to_axi_pl_ps_ARSIZE;
  wire m00_couplers_to_axi_pl_ps_ARVALID;
  wire [31:0]m00_couplers_to_axi_pl_ps_AWADDR;
  wire [1:0]m00_couplers_to_axi_pl_ps_AWBURST;
  wire [3:0]m00_couplers_to_axi_pl_ps_AWCACHE;
  wire [1:0]m00_couplers_to_axi_pl_ps_AWID;
  wire [7:0]m00_couplers_to_axi_pl_ps_AWLEN;
  wire m00_couplers_to_axi_pl_ps_AWLOCK;
  wire [2:0]m00_couplers_to_axi_pl_ps_AWPROT;
  wire [3:0]m00_couplers_to_axi_pl_ps_AWQOS;
  wire m00_couplers_to_axi_pl_ps_AWREADY;
  wire [2:0]m00_couplers_to_axi_pl_ps_AWSIZE;
  wire m00_couplers_to_axi_pl_ps_AWVALID;
  wire [5:0]m00_couplers_to_axi_pl_ps_BID;
  wire m00_couplers_to_axi_pl_ps_BREADY;
  wire [1:0]m00_couplers_to_axi_pl_ps_BRESP;
  wire m00_couplers_to_axi_pl_ps_BVALID;
  wire [127:0]m00_couplers_to_axi_pl_ps_RDATA;
  wire [5:0]m00_couplers_to_axi_pl_ps_RID;
  wire m00_couplers_to_axi_pl_ps_RLAST;
  wire m00_couplers_to_axi_pl_ps_RREADY;
  wire [1:0]m00_couplers_to_axi_pl_ps_RRESP;
  wire m00_couplers_to_axi_pl_ps_RVALID;
  wire [127:0]m00_couplers_to_axi_pl_ps_WDATA;
  wire m00_couplers_to_axi_pl_ps_WLAST;
  wire m00_couplers_to_axi_pl_ps_WREADY;
  wire [15:0]m00_couplers_to_axi_pl_ps_WSTRB;
  wire m00_couplers_to_axi_pl_ps_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [127:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [127:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [15:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s00_mmu_M_AXI_ARADDR;
  wire [1:0]s00_mmu_M_AXI_ARBURST;
  wire [3:0]s00_mmu_M_AXI_ARCACHE;
  wire [7:0]s00_mmu_M_AXI_ARLEN;
  wire [0:0]s00_mmu_M_AXI_ARLOCK;
  wire [2:0]s00_mmu_M_AXI_ARPROT;
  wire [3:0]s00_mmu_M_AXI_ARQOS;
  wire s00_mmu_M_AXI_ARREADY;
  wire [2:0]s00_mmu_M_AXI_ARSIZE;
  wire s00_mmu_M_AXI_ARVALID;
  wire [31:0]s00_mmu_M_AXI_AWADDR;
  wire [1:0]s00_mmu_M_AXI_AWBURST;
  wire [3:0]s00_mmu_M_AXI_AWCACHE;
  wire [7:0]s00_mmu_M_AXI_AWLEN;
  wire [0:0]s00_mmu_M_AXI_AWLOCK;
  wire [2:0]s00_mmu_M_AXI_AWPROT;
  wire [3:0]s00_mmu_M_AXI_AWQOS;
  wire s00_mmu_M_AXI_AWREADY;
  wire [2:0]s00_mmu_M_AXI_AWSIZE;
  wire s00_mmu_M_AXI_AWVALID;
  wire s00_mmu_M_AXI_BREADY;
  wire [1:0]s00_mmu_M_AXI_BRESP;
  wire s00_mmu_M_AXI_BVALID;
  wire [31:0]s00_mmu_M_AXI_RDATA;
  wire s00_mmu_M_AXI_RLAST;
  wire s00_mmu_M_AXI_RREADY;
  wire [1:0]s00_mmu_M_AXI_RRESP;
  wire s00_mmu_M_AXI_RVALID;
  wire [31:0]s00_mmu_M_AXI_WDATA;
  wire s00_mmu_M_AXI_WLAST;
  wire s00_mmu_M_AXI_WREADY;
  wire [3:0]s00_mmu_M_AXI_WSTRB;
  wire s00_mmu_M_AXI_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [255:128]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_mmu_M_AXI_ARADDR;
  wire [1:0]s01_mmu_M_AXI_ARBURST;
  wire [3:0]s01_mmu_M_AXI_ARCACHE;
  wire [7:0]s01_mmu_M_AXI_ARLEN;
  wire [0:0]s01_mmu_M_AXI_ARLOCK;
  wire [2:0]s01_mmu_M_AXI_ARPROT;
  wire [3:0]s01_mmu_M_AXI_ARQOS;
  wire s01_mmu_M_AXI_ARREADY;
  wire [2:0]s01_mmu_M_AXI_ARSIZE;
  wire s01_mmu_M_AXI_ARVALID;
  wire [31:0]s01_mmu_M_AXI_RDATA;
  wire s01_mmu_M_AXI_RLAST;
  wire s01_mmu_M_AXI_RREADY;
  wire [1:0]s01_mmu_M_AXI_RRESP;
  wire s01_mmu_M_AXI_RVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [0:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [127:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [15:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]s02_mmu_M_AXI_AWADDR;
  wire [1:0]s02_mmu_M_AXI_AWBURST;
  wire [3:0]s02_mmu_M_AXI_AWCACHE;
  wire [7:0]s02_mmu_M_AXI_AWLEN;
  wire [0:0]s02_mmu_M_AXI_AWLOCK;
  wire [2:0]s02_mmu_M_AXI_AWPROT;
  wire [3:0]s02_mmu_M_AXI_AWQOS;
  wire s02_mmu_M_AXI_AWREADY;
  wire [2:0]s02_mmu_M_AXI_AWSIZE;
  wire s02_mmu_M_AXI_AWVALID;
  wire s02_mmu_M_AXI_BREADY;
  wire [1:0]s02_mmu_M_AXI_BRESP;
  wire s02_mmu_M_AXI_BVALID;
  wire [31:0]s02_mmu_M_AXI_WDATA;
  wire s02_mmu_M_AXI_WLAST;
  wire s02_mmu_M_AXI_WREADY;
  wire [3:0]s02_mmu_M_AXI_WSTRB;
  wire s02_mmu_M_AXI_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [1:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [1:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [5:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [127:0]xbar_to_m00_couplers_RDATA;
  wire [5:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [127:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [15:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [2:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_pl_ps_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_pl_ps_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_pl_ps_ARCACHE;
  assign M00_AXI_arid[1:0] = m00_couplers_to_axi_pl_ps_ARID;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_pl_ps_ARLEN;
  assign M00_AXI_arlock = m00_couplers_to_axi_pl_ps_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_pl_ps_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_pl_ps_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_pl_ps_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_pl_ps_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_pl_ps_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_pl_ps_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_pl_ps_AWCACHE;
  assign M00_AXI_awid[1:0] = m00_couplers_to_axi_pl_ps_AWID;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_pl_ps_AWLEN;
  assign M00_AXI_awlock = m00_couplers_to_axi_pl_ps_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_pl_ps_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_pl_ps_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_pl_ps_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_pl_ps_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_pl_ps_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_pl_ps_RREADY;
  assign M00_AXI_wdata[127:0] = m00_couplers_to_axi_pl_ps_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_pl_ps_WLAST;
  assign M00_AXI_wstrb[15:0] = m00_couplers_to_axi_pl_ps_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_pl_ps_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[31:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[31:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_rdata[31:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_1_AWADDR = S02_AXI_awaddr[31:0];
  assign S02_AXI_1_AWBURST = S02_AXI_awburst[1:0];
  assign S02_AXI_1_AWCACHE = S02_AXI_awcache[3:0];
  assign S02_AXI_1_AWLEN = S02_AXI_awlen[7:0];
  assign S02_AXI_1_AWPROT = S02_AXI_awprot[2:0];
  assign S02_AXI_1_AWSIZE = S02_AXI_awsize[2:0];
  assign S02_AXI_1_AWVALID = S02_AXI_awvalid;
  assign S02_AXI_1_BREADY = S02_AXI_bready;
  assign S02_AXI_1_WDATA = S02_AXI_wdata[31:0];
  assign S02_AXI_1_WLAST = S02_AXI_wlast;
  assign S02_AXI_1_WSTRB = S02_AXI_wstrb[3:0];
  assign S02_AXI_1_WVALID = S02_AXI_wvalid;
  assign S02_AXI_awready = S02_AXI_1_AWREADY;
  assign S02_AXI_bresp[1:0] = S02_AXI_1_BRESP;
  assign S02_AXI_bvalid = S02_AXI_1_BVALID;
  assign S02_AXI_wready = S02_AXI_1_WREADY;
  assign axi_pl_ps_ACLK_net = ACLK;
  assign axi_pl_ps_ARESETN_net = ARESETN;
  assign m00_couplers_to_axi_pl_ps_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_pl_ps_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_pl_ps_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_pl_ps_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_pl_ps_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_pl_ps_RDATA = M00_AXI_rdata[127:0];
  assign m00_couplers_to_axi_pl_ps_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_pl_ps_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_pl_ps_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_pl_ps_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_pl_ps_WREADY = M00_AXI_wready;
  m00_couplers_imp_5O5PST m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_pl_ps_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_pl_ps_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_pl_ps_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_pl_ps_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_pl_ps_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_pl_ps_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_pl_ps_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_pl_ps_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_pl_ps_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_pl_ps_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_pl_ps_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_pl_ps_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_pl_ps_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_pl_ps_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_pl_ps_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_pl_ps_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_pl_ps_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_pl_ps_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_pl_ps_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_pl_ps_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_pl_ps_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_pl_ps_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_pl_ps_BID),
        .M_AXI_bready(m00_couplers_to_axi_pl_ps_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_pl_ps_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_pl_ps_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_pl_ps_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_pl_ps_RID),
        .M_AXI_rlast(m00_couplers_to_axi_pl_ps_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_pl_ps_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_pl_ps_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_pl_ps_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_pl_ps_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_pl_ps_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_pl_ps_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_pl_ps_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_pl_ps_WVALID),
        .S_ACLK(axi_pl_ps_ACLK_net),
        .S_ARESETN(axi_pl_ps_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1GJOPNR s00_couplers
       (.M_ACLK(axi_pl_ps_ACLK_net),
        .M_ARESETN(axi_pl_ps_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(s00_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s00_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s00_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s00_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s00_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s00_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s00_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s00_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s00_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s00_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s00_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s00_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s00_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s00_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s00_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s00_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s00_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s00_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s00_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s00_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s00_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s00_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s00_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s00_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s00_mmu_M_AXI_RLAST),
        .S_AXI_rready(s00_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s00_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s00_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s00_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s00_mmu_M_AXI_WLAST),
        .S_AXI_wready(s00_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s00_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s00_mmu_M_AXI_WVALID));
  ACL_s00_mmu_0 s00_mmu
       (.aclk(S00_ACLK_1),
        .aresetn(S00_ARESETN_1),
        .m_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s00_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s00_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s00_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s00_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s00_mmu_M_AXI_ARQOS),
        .m_axi_arready(s00_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s00_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s00_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s00_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s00_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s00_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s00_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s00_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s00_mmu_M_AXI_AWQOS),
        .m_axi_awready(s00_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s00_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s00_mmu_M_AXI_AWVALID),
        .m_axi_bready(s00_mmu_M_AXI_BREADY),
        .m_axi_bresp(s00_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s00_mmu_M_AXI_BVALID),
        .m_axi_rdata(s00_mmu_M_AXI_RDATA),
        .m_axi_rlast(s00_mmu_M_AXI_RLAST),
        .m_axi_rready(s00_mmu_M_AXI_RREADY),
        .m_axi_rresp(s00_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s00_mmu_M_AXI_RVALID),
        .m_axi_wdata(s00_mmu_M_AXI_WDATA),
        .m_axi_wlast(s00_mmu_M_AXI_WLAST),
        .m_axi_wready(s00_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s00_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s00_mmu_M_AXI_WVALID),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arburst(S00_AXI_1_ARBURST),
        .s_axi_arcache(S00_AXI_1_ARCACHE),
        .s_axi_arlen(S00_AXI_1_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arsize(S00_AXI_1_ARSIZE),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awburst(S00_AXI_1_AWBURST),
        .s_axi_awcache(S00_AXI_1_AWCACHE),
        .s_axi_awlen(S00_AXI_1_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awsize(S00_AXI_1_AWSIZE),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rlast(S00_AXI_1_RLAST),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wlast(S00_AXI_1_WLAST),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wvalid(S00_AXI_1_WVALID));
  s01_couplers_imp_QWJZOI s01_couplers
       (.M_ACLK(axi_pl_ps_ACLK_net),
        .M_ARESETN(axi_pl_ps_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(s01_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s01_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s01_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s01_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s01_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s01_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s01_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s01_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s01_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s01_mmu_M_AXI_ARVALID),
        .S_AXI_rdata(s01_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s01_mmu_M_AXI_RLAST),
        .S_AXI_rready(s01_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s01_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s01_mmu_M_AXI_RVALID));
  ACL_s01_mmu_0 s01_mmu
       (.aclk(S01_ACLK_1),
        .aresetn(S01_ARESETN_1),
        .m_axi_araddr(s01_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s01_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s01_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s01_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s01_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s01_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s01_mmu_M_AXI_ARQOS),
        .m_axi_arready(s01_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s01_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s01_mmu_M_AXI_ARVALID),
        .m_axi_rdata(s01_mmu_M_AXI_RDATA),
        .m_axi_rlast(s01_mmu_M_AXI_RLAST),
        .m_axi_rready(s01_mmu_M_AXI_RREADY),
        .m_axi_rresp(s01_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s01_mmu_M_AXI_RVALID),
        .s_axi_araddr(S01_AXI_1_ARADDR),
        .s_axi_arburst(S01_AXI_1_ARBURST),
        .s_axi_arcache(S01_AXI_1_ARCACHE),
        .s_axi_arlen(S01_AXI_1_ARLEN),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(S01_AXI_1_ARPROT),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S01_AXI_1_ARREADY),
        .s_axi_arsize(S01_AXI_1_ARSIZE),
        .s_axi_arvalid(S01_AXI_1_ARVALID),
        .s_axi_rdata(S01_AXI_1_RDATA),
        .s_axi_rlast(S01_AXI_1_RLAST),
        .s_axi_rready(S01_AXI_1_RREADY),
        .s_axi_rresp(S01_AXI_1_RRESP),
        .s_axi_rvalid(S01_AXI_1_RVALID));
  s02_couplers_imp_1PDWKA4 s02_couplers
       (.M_ACLK(axi_pl_ps_ACLK_net),
        .M_ARESETN(axi_pl_ps_ARESETN_net),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_awaddr(s02_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s02_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s02_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s02_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s02_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s02_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s02_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s02_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s02_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s02_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s02_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s02_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s02_mmu_M_AXI_BVALID),
        .S_AXI_wdata(s02_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s02_mmu_M_AXI_WLAST),
        .S_AXI_wready(s02_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s02_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s02_mmu_M_AXI_WVALID));
  ACL_s02_mmu_0 s02_mmu
       (.aclk(S02_ACLK_1),
        .aresetn(S02_ARESETN_1),
        .m_axi_awaddr(s02_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s02_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s02_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s02_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s02_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s02_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s02_mmu_M_AXI_AWQOS),
        .m_axi_awready(s02_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s02_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s02_mmu_M_AXI_AWVALID),
        .m_axi_bready(s02_mmu_M_AXI_BREADY),
        .m_axi_bresp(s02_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s02_mmu_M_AXI_BVALID),
        .m_axi_wdata(s02_mmu_M_AXI_WDATA),
        .m_axi_wlast(s02_mmu_M_AXI_WLAST),
        .m_axi_wready(s02_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s02_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s02_mmu_M_AXI_WVALID),
        .s_axi_awaddr(S02_AXI_1_AWADDR),
        .s_axi_awburst(S02_AXI_1_AWBURST),
        .s_axi_awcache(S02_AXI_1_AWCACHE),
        .s_axi_awlen(S02_AXI_1_AWLEN),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(S02_AXI_1_AWPROT),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S02_AXI_1_AWREADY),
        .s_axi_awsize(S02_AXI_1_AWSIZE),
        .s_axi_awvalid(S02_AXI_1_AWVALID),
        .s_axi_bready(S02_AXI_1_BREADY),
        .s_axi_bresp(S02_AXI_1_BRESP),
        .s_axi_bvalid(S02_AXI_1_BVALID),
        .s_axi_wdata(S02_AXI_1_WDATA),
        .s_axi_wlast(S02_AXI_1_WLAST),
        .s_axi_wready(S02_AXI_1_WREADY),
        .s_axi_wstrb(S02_AXI_1_WSTRB),
        .s_axi_wvalid(S02_AXI_1_WVALID));
  ACL_xbar_0 xbar
       (.aclk(axi_pl_ps_ACLK_net),
        .aresetn(axi_pl_ps_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID[1:0]),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID[1:0]),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({1'b0,1'b0,s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({1'b0,s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({1'b0,1'b0,1'b1,s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({1'b0,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,1'b0,1'b0,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK,1'b0,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[1],s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,1'b1,1'b0,1'b0,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,1'b0,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,1'b0,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[3:2],s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[1],s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({1'b0,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,1'b0,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[1],s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,1'b0,s00_couplers_to_xbar_WVALID}));
endmodule

module ACL_ps_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [39:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [39:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [39:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [15:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [39:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [15:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [15:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [127:0]S01_AXI_rdata;
  output [15:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [127:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [15:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire [39:0]m00_couplers_to_ps_axi_periph_ARADDR;
  wire m00_couplers_to_ps_axi_periph_ARREADY;
  wire m00_couplers_to_ps_axi_periph_ARVALID;
  wire [39:0]m00_couplers_to_ps_axi_periph_AWADDR;
  wire m00_couplers_to_ps_axi_periph_AWREADY;
  wire m00_couplers_to_ps_axi_periph_AWVALID;
  wire m00_couplers_to_ps_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps_axi_periph_BRESP;
  wire m00_couplers_to_ps_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps_axi_periph_RDATA;
  wire m00_couplers_to_ps_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps_axi_periph_RRESP;
  wire m00_couplers_to_ps_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps_axi_periph_WDATA;
  wire m00_couplers_to_ps_axi_periph_WREADY;
  wire m00_couplers_to_ps_axi_periph_WVALID;
  wire [39:0]m01_couplers_to_ps_axi_periph_ARADDR;
  wire m01_couplers_to_ps_axi_periph_ARREADY;
  wire m01_couplers_to_ps_axi_periph_ARVALID;
  wire [39:0]m01_couplers_to_ps_axi_periph_AWADDR;
  wire m01_couplers_to_ps_axi_periph_AWREADY;
  wire m01_couplers_to_ps_axi_periph_AWVALID;
  wire m01_couplers_to_ps_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps_axi_periph_BRESP;
  wire m01_couplers_to_ps_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps_axi_periph_RDATA;
  wire m01_couplers_to_ps_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps_axi_periph_RRESP;
  wire m01_couplers_to_ps_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps_axi_periph_WDATA;
  wire m01_couplers_to_ps_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps_axi_periph_WSTRB;
  wire m01_couplers_to_ps_axi_periph_WVALID;
  wire [39:0]m02_couplers_to_ps_axi_periph_ARADDR;
  wire [0:0]m02_couplers_to_ps_axi_periph_ARREADY;
  wire [0:0]m02_couplers_to_ps_axi_periph_ARVALID;
  wire [39:0]m02_couplers_to_ps_axi_periph_AWADDR;
  wire [0:0]m02_couplers_to_ps_axi_periph_AWREADY;
  wire [0:0]m02_couplers_to_ps_axi_periph_AWVALID;
  wire [0:0]m02_couplers_to_ps_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_ps_axi_periph_BRESP;
  wire [0:0]m02_couplers_to_ps_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_ps_axi_periph_RDATA;
  wire [0:0]m02_couplers_to_ps_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_ps_axi_periph_RRESP;
  wire [0:0]m02_couplers_to_ps_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_ps_axi_periph_WDATA;
  wire [0:0]m02_couplers_to_ps_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_ps_axi_periph_WSTRB;
  wire [0:0]m02_couplers_to_ps_axi_periph_WVALID;
  wire ps_axi_periph_ACLK_net;
  wire ps_axi_periph_ARESETN_net;
  wire [39:0]ps_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps_axi_periph_to_s00_couplers_ARLEN;
  wire ps_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps_axi_periph_to_s00_couplers_ARQOS;
  wire ps_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps_axi_periph_to_s00_couplers_ARSIZE;
  wire ps_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps_axi_periph_to_s00_couplers_AWLEN;
  wire ps_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps_axi_periph_to_s00_couplers_AWQOS;
  wire ps_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps_axi_periph_to_s00_couplers_AWSIZE;
  wire ps_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps_axi_periph_to_s00_couplers_BID;
  wire ps_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps_axi_periph_to_s00_couplers_BRESP;
  wire ps_axi_periph_to_s00_couplers_BVALID;
  wire [127:0]ps_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps_axi_periph_to_s00_couplers_RID;
  wire ps_axi_periph_to_s00_couplers_RLAST;
  wire ps_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps_axi_periph_to_s00_couplers_RRESP;
  wire ps_axi_periph_to_s00_couplers_RVALID;
  wire [127:0]ps_axi_periph_to_s00_couplers_WDATA;
  wire ps_axi_periph_to_s00_couplers_WLAST;
  wire ps_axi_periph_to_s00_couplers_WREADY;
  wire [15:0]ps_axi_periph_to_s00_couplers_WSTRB;
  wire ps_axi_periph_to_s00_couplers_WVALID;
  wire [39:0]ps_axi_periph_to_s01_couplers_ARADDR;
  wire [1:0]ps_axi_periph_to_s01_couplers_ARBURST;
  wire [3:0]ps_axi_periph_to_s01_couplers_ARCACHE;
  wire [15:0]ps_axi_periph_to_s01_couplers_ARID;
  wire [7:0]ps_axi_periph_to_s01_couplers_ARLEN;
  wire ps_axi_periph_to_s01_couplers_ARLOCK;
  wire [2:0]ps_axi_periph_to_s01_couplers_ARPROT;
  wire [3:0]ps_axi_periph_to_s01_couplers_ARQOS;
  wire ps_axi_periph_to_s01_couplers_ARREADY;
  wire [2:0]ps_axi_periph_to_s01_couplers_ARSIZE;
  wire ps_axi_periph_to_s01_couplers_ARVALID;
  wire [39:0]ps_axi_periph_to_s01_couplers_AWADDR;
  wire [1:0]ps_axi_periph_to_s01_couplers_AWBURST;
  wire [3:0]ps_axi_periph_to_s01_couplers_AWCACHE;
  wire [15:0]ps_axi_periph_to_s01_couplers_AWID;
  wire [7:0]ps_axi_periph_to_s01_couplers_AWLEN;
  wire ps_axi_periph_to_s01_couplers_AWLOCK;
  wire [2:0]ps_axi_periph_to_s01_couplers_AWPROT;
  wire [3:0]ps_axi_periph_to_s01_couplers_AWQOS;
  wire ps_axi_periph_to_s01_couplers_AWREADY;
  wire [2:0]ps_axi_periph_to_s01_couplers_AWSIZE;
  wire ps_axi_periph_to_s01_couplers_AWVALID;
  wire [15:0]ps_axi_periph_to_s01_couplers_BID;
  wire ps_axi_periph_to_s01_couplers_BREADY;
  wire [1:0]ps_axi_periph_to_s01_couplers_BRESP;
  wire ps_axi_periph_to_s01_couplers_BVALID;
  wire [127:0]ps_axi_periph_to_s01_couplers_RDATA;
  wire [15:0]ps_axi_periph_to_s01_couplers_RID;
  wire ps_axi_periph_to_s01_couplers_RLAST;
  wire ps_axi_periph_to_s01_couplers_RREADY;
  wire [1:0]ps_axi_periph_to_s01_couplers_RRESP;
  wire ps_axi_periph_to_s01_couplers_RVALID;
  wire [127:0]ps_axi_periph_to_s01_couplers_WDATA;
  wire ps_axi_periph_to_s01_couplers_WLAST;
  wire ps_axi_periph_to_s01_couplers_WREADY;
  wire [15:0]ps_axi_periph_to_s01_couplers_WSTRB;
  wire ps_axi_periph_to_s01_couplers_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]s01_couplers_to_xbar_ARADDR;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire s01_couplers_to_xbar_ARVALID;
  wire [39:0]s01_couplers_to_xbar_AWADDR;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [11:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[39:0] = m00_couplers_to_ps_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_ps_axi_periph_ARVALID;
  assign M00_AXI_awaddr[39:0] = m00_couplers_to_ps_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_ps_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_ps_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_ps_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps_axi_periph_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_ps_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[39:0] = m01_couplers_to_ps_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_ps_axi_periph_ARVALID;
  assign M01_AXI_awaddr[39:0] = m01_couplers_to_ps_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_ps_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_ps_axi_periph_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_ps_axi_periph_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_ps_axi_periph_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_ps_axi_periph_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_ps_axi_periph_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_ps_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_ps_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_ps_axi_periph_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_ps_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = ps_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps_axi_periph_to_s00_couplers_WREADY;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_arready = ps_axi_periph_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = ps_axi_periph_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[15:0] = ps_axi_periph_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = ps_axi_periph_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = ps_axi_periph_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[127:0] = ps_axi_periph_to_s01_couplers_RDATA;
  assign S01_AXI_rid[15:0] = ps_axi_periph_to_s01_couplers_RID;
  assign S01_AXI_rlast = ps_axi_periph_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = ps_axi_periph_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = ps_axi_periph_to_s01_couplers_RVALID;
  assign S01_AXI_wready = ps_axi_periph_to_s01_couplers_WREADY;
  assign m00_couplers_to_ps_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_ps_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_ps_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_ps_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_ps_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_ps_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_ps_axi_periph_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_ps_axi_periph_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_ps_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_ps_axi_periph_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_ps_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_ps_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_ps_axi_periph_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_ps_axi_periph_WREADY = M02_AXI_wready[0];
  assign ps_axi_periph_ACLK_net = ACLK;
  assign ps_axi_periph_ARESETN_net = ARESETN;
  assign ps_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign ps_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign ps_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign ps_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign ps_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign ps_axi_periph_to_s01_couplers_ARADDR = S01_AXI_araddr[39:0];
  assign ps_axi_periph_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign ps_axi_periph_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign ps_axi_periph_to_s01_couplers_ARID = S01_AXI_arid[15:0];
  assign ps_axi_periph_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign ps_axi_periph_to_s01_couplers_ARLOCK = S01_AXI_arlock;
  assign ps_axi_periph_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign ps_axi_periph_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign ps_axi_periph_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign ps_axi_periph_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign ps_axi_periph_to_s01_couplers_AWADDR = S01_AXI_awaddr[39:0];
  assign ps_axi_periph_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign ps_axi_periph_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign ps_axi_periph_to_s01_couplers_AWID = S01_AXI_awid[15:0];
  assign ps_axi_periph_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign ps_axi_periph_to_s01_couplers_AWLOCK = S01_AXI_awlock;
  assign ps_axi_periph_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign ps_axi_periph_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign ps_axi_periph_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign ps_axi_periph_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign ps_axi_periph_to_s01_couplers_BREADY = S01_AXI_bready;
  assign ps_axi_periph_to_s01_couplers_RREADY = S01_AXI_rready;
  assign ps_axi_periph_to_s01_couplers_WDATA = S01_AXI_wdata[127:0];
  assign ps_axi_periph_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign ps_axi_periph_to_s01_couplers_WSTRB = S01_AXI_wstrb[15:0];
  assign ps_axi_periph_to_s01_couplers_WVALID = S01_AXI_wvalid;
  m00_couplers_imp_141RNAV m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ps_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps_axi_periph_WREADY),
        .M_AXI_wvalid(m00_couplers_to_ps_axi_periph_WVALID),
        .S_ACLK(ps_axi_periph_ACLK_net),
        .S_ARESETN(ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_LKMQ7M m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_ps_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_ps_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_ps_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps_axi_periph_WVALID),
        .S_ACLK(ps_axi_periph_ACLK_net),
        .S_ARESETN(ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1ULP3I4 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_ps_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_ps_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_ps_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_ps_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_ps_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_ps_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_ps_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_ps_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_ps_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_ps_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_ps_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_ps_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_ps_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_ps_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_ps_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_ps_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_ps_axi_periph_WVALID),
        .S_ACLK(ps_axi_periph_ACLK_net),
        .S_ARESETN(ps_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_FW55SD s00_couplers
       (.M_ACLK(ps_axi_periph_ACLK_net),
        .M_ARESETN(ps_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps_axi_periph_to_s00_couplers_WVALID));
  s01_couplers_imp_1RHLYX4 s01_couplers
       (.M_ACLK(ps_axi_periph_ACLK_net),
        .M_ARESETN(ps_axi_periph_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_araddr(ps_axi_periph_to_s01_couplers_ARADDR),
        .S_AXI_arburst(ps_axi_periph_to_s01_couplers_ARBURST),
        .S_AXI_arcache(ps_axi_periph_to_s01_couplers_ARCACHE),
        .S_AXI_arid(ps_axi_periph_to_s01_couplers_ARID),
        .S_AXI_arlen(ps_axi_periph_to_s01_couplers_ARLEN),
        .S_AXI_arlock(ps_axi_periph_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(ps_axi_periph_to_s01_couplers_ARPROT),
        .S_AXI_arqos(ps_axi_periph_to_s01_couplers_ARQOS),
        .S_AXI_arready(ps_axi_periph_to_s01_couplers_ARREADY),
        .S_AXI_arsize(ps_axi_periph_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(ps_axi_periph_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(ps_axi_periph_to_s01_couplers_AWADDR),
        .S_AXI_awburst(ps_axi_periph_to_s01_couplers_AWBURST),
        .S_AXI_awcache(ps_axi_periph_to_s01_couplers_AWCACHE),
        .S_AXI_awid(ps_axi_periph_to_s01_couplers_AWID),
        .S_AXI_awlen(ps_axi_periph_to_s01_couplers_AWLEN),
        .S_AXI_awlock(ps_axi_periph_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(ps_axi_periph_to_s01_couplers_AWPROT),
        .S_AXI_awqos(ps_axi_periph_to_s01_couplers_AWQOS),
        .S_AXI_awready(ps_axi_periph_to_s01_couplers_AWREADY),
        .S_AXI_awsize(ps_axi_periph_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(ps_axi_periph_to_s01_couplers_AWVALID),
        .S_AXI_bid(ps_axi_periph_to_s01_couplers_BID),
        .S_AXI_bready(ps_axi_periph_to_s01_couplers_BREADY),
        .S_AXI_bresp(ps_axi_periph_to_s01_couplers_BRESP),
        .S_AXI_bvalid(ps_axi_periph_to_s01_couplers_BVALID),
        .S_AXI_rdata(ps_axi_periph_to_s01_couplers_RDATA),
        .S_AXI_rid(ps_axi_periph_to_s01_couplers_RID),
        .S_AXI_rlast(ps_axi_periph_to_s01_couplers_RLAST),
        .S_AXI_rready(ps_axi_periph_to_s01_couplers_RREADY),
        .S_AXI_rresp(ps_axi_periph_to_s01_couplers_RRESP),
        .S_AXI_rvalid(ps_axi_periph_to_s01_couplers_RVALID),
        .S_AXI_wdata(ps_axi_periph_to_s01_couplers_WDATA),
        .S_AXI_wlast(ps_axi_periph_to_s01_couplers_WLAST),
        .S_AXI_wready(ps_axi_periph_to_s01_couplers_WREADY),
        .S_AXI_wstrb(ps_axi_periph_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(ps_axi_periph_to_s01_couplers_WVALID));
  ACL_xbar_1 xbar
       (.aclk(ps_axi_periph_ACLK_net),
        .aresetn(ps_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module axi_clk_led_imp_1RJE16F
   (CLK,
    Dout);
  input CLK;
  output [0:0]Dout;

  wire CLK_1;
  wire [31:0]c_counter_binary_0_Q;
  wire [0:0]xlslice_0_Dout;

  assign CLK_1 = CLK;
  assign Dout[0] = xlslice_0_Dout;
  ACL_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(CLK_1),
        .Q(c_counter_binary_0_Q));
  ACL_xlslice_0_0 xlslice_0
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
endmodule

module m00_couplers_imp_141RNAV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [39:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [39:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_5O5PST
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [1:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [1:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [1:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [1:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [5:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [5:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [1:0]m00_couplers_to_m00_couplers_ARBURST;
  wire [3:0]m00_couplers_to_m00_couplers_ARCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_ARID;
  wire [7:0]m00_couplers_to_m00_couplers_ARLEN;
  wire m00_couplers_to_m00_couplers_ARLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [3:0]m00_couplers_to_m00_couplers_ARQOS;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire [2:0]m00_couplers_to_m00_couplers_ARSIZE;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [1:0]m00_couplers_to_m00_couplers_AWBURST;
  wire [3:0]m00_couplers_to_m00_couplers_AWCACHE;
  wire [1:0]m00_couplers_to_m00_couplers_AWID;
  wire [7:0]m00_couplers_to_m00_couplers_AWLEN;
  wire m00_couplers_to_m00_couplers_AWLOCK;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire [3:0]m00_couplers_to_m00_couplers_AWQOS;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire [2:0]m00_couplers_to_m00_couplers_AWSIZE;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire [5:0]m00_couplers_to_m00_couplers_BID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [127:0]m00_couplers_to_m00_couplers_RDATA;
  wire [5:0]m00_couplers_to_m00_couplers_RID;
  wire m00_couplers_to_m00_couplers_RLAST;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [127:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WLAST;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [15:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_couplers_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_couplers_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[1:0] = m00_couplers_to_m00_couplers_ARID;
  assign M_AXI_arlen[7:0] = m00_couplers_to_m00_couplers_ARLEN;
  assign M_AXI_arlock = m00_couplers_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m00_couplers_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = m00_couplers_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_couplers_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_couplers_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[1:0] = m00_couplers_to_m00_couplers_AWID;
  assign M_AXI_awlen[7:0] = m00_couplers_to_m00_couplers_AWLEN;
  assign M_AXI_awlock = m00_couplers_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m00_couplers_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = m00_couplers_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_couplers_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bid[5:0] = m00_couplers_to_m00_couplers_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[127:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rid[5:0] = m00_couplers_to_m00_couplers_RID;
  assign S_AXI_rlast = m00_couplers_to_m00_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_couplers_ARID = S_AXI_arid[1:0];
  assign m00_couplers_to_m00_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_couplers_ARLOCK = S_AXI_arlock;
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_couplers_AWID = S_AXI_awid[1:0];
  assign m00_couplers_to_m00_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_couplers_AWLOCK = S_AXI_awlock;
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[127:0];
  assign m00_couplers_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign m00_couplers_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[127:0];
  assign m00_couplers_to_m00_couplers_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[15:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_LKMQ7M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [39:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [39:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1ULP3I4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [39:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module mgt_tx_clk_led_imp_L4JKJ9
   (CLK,
    Dout);
  input CLK;
  output [0:0]Dout;

  wire CLK_1;
  wire [31:0]c_counter_binary_0_Q;
  wire [0:0]xlslice_0_Dout;

  assign CLK_1 = CLK;
  assign Dout[0] = xlslice_0_Dout;
  ACL_c_counter_binary_0_1 c_counter_binary_0
       (.CLK(CLK_1),
        .Q(c_counter_binary_0_Q));
  ACL_xlslice_0_1 xlslice_0
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
endmodule

module other_perph_imp_77TATY
   (CLK,
    CLK1,
    Dout1,
    Dout2,
    Dout3,
    Res,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    dout,
    interrupt,
    s_axi_aclk,
    s_axi_aresetn);
  input CLK;
  input CLK1;
  output [0:0]Dout1;
  output [0:0]Dout2;
  output [0:0]Dout3;
  output Res;
  input [39:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  output [0:0]dout;
  output interrupt;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire CLK1_1;
  wire CLK_1;
  wire [39:0]S_AXI_1_ARADDR;
  wire S_AXI_1_ARREADY;
  wire [0:0]S_AXI_1_ARVALID;
  wire [39:0]S_AXI_1_AWADDR;
  wire S_AXI_1_AWREADY;
  wire [0:0]S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire [0:0]S_AXI_1_WVALID;
  wire [0:0]axi_clk_led_Dout;
  wire axi_timer_1_interrupt;
  wire [0:0]mgt_tx_clk_led_Dout;
  wire reset_invert_led_Res;
  wire [0:0]rx_clk_led_Dout;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire [0:0]sfp_tx_disable_dout;

  assign CLK1_1 = CLK1;
  assign CLK_1 = CLK;
  assign Dout1[0] = rx_clk_led_Dout;
  assign Dout2[0] = mgt_tx_clk_led_Dout;
  assign Dout3[0] = axi_clk_led_Dout;
  assign Res = reset_invert_led_Res;
  assign S_AXI_1_ARADDR = S_AXI_araddr[39:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid[0];
  assign S_AXI_1_AWADDR = S_AXI_awaddr[39:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid[0];
  assign S_AXI_1_BREADY = S_AXI_bready[0];
  assign S_AXI_1_RREADY = S_AXI_rready[0];
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid[0];
  assign S_AXI_arready[0] = S_AXI_1_ARREADY;
  assign S_AXI_awready[0] = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid[0] = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid[0] = S_AXI_1_RVALID;
  assign S_AXI_wready[0] = S_AXI_1_WREADY;
  assign dout[0] = sfp_tx_disable_dout;
  assign interrupt = axi_timer_1_interrupt;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  axi_clk_led_imp_1RJE16F axi_clk_led
       (.CLK(s_axi_aclk_1),
        .Dout(axi_clk_led_Dout));
  ACL_axi_timer_1_0 axi_timer_1
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_1_interrupt),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(S_AXI_1_ARADDR[4:0]),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR[4:0]),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
  mgt_tx_clk_led_imp_L4JKJ9 mgt_tx_clk_led
       (.CLK(CLK1_1),
        .Dout(mgt_tx_clk_led_Dout));
  ACL_reset_invert_led_0 reset_invert_led
       (.Op1(s_axi_aresetn_1),
        .Res(reset_invert_led_Res));
  rx_clk_led_imp_SMH1UL rx_clk_led
       (.CLK(CLK_1),
        .Dout(rx_clk_led_Dout));
  ACL_sfp_tx_disable_0 sfp_tx_disable
       (.dout(sfp_tx_disable_dout));
endmodule

module rx_clk_led_imp_SMH1UL
   (CLK,
    Dout);
  input CLK;
  output [0:0]Dout;

  wire CLK_1;
  wire [31:0]c_counter_binary_0_Q;
  wire [0:0]xlslice_0_Dout;

  assign CLK_1 = CLK;
  assign Dout[0] = xlslice_0_Dout;
  ACL_c_counter_binary_0_2 c_counter_binary_0
       (.CLK(CLK_1),
        .Q(c_counter_binary_0_Q));
  ACL_xlslice_0_2 xlslice_0
       (.Din(c_counter_binary_0_Q),
        .Dout(xlslice_0_Dout));
endmodule

module s00_couplers_imp_1GJOPNR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [127:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [127:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [15:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire [0:0]s00_couplers_to_auto_us_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire [3:0]s00_couplers_to_auto_us_ARQOS;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [0:0]s00_couplers_to_auto_us_AWLOCK;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire [3:0]s00_couplers_to_auto_us_AWQOS;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign M_AXI_wdata[127:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  ACL_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_FW55SD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [39:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_auto_ds_ARADDR;
  wire [1:0]s00_couplers_to_auto_ds_ARBURST;
  wire [3:0]s00_couplers_to_auto_ds_ARCACHE;
  wire [15:0]s00_couplers_to_auto_ds_ARID;
  wire [7:0]s00_couplers_to_auto_ds_ARLEN;
  wire s00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s00_couplers_to_auto_ds_ARPROT;
  wire [3:0]s00_couplers_to_auto_ds_ARQOS;
  wire s00_couplers_to_auto_ds_ARREADY;
  wire [2:0]s00_couplers_to_auto_ds_ARSIZE;
  wire s00_couplers_to_auto_ds_ARVALID;
  wire [39:0]s00_couplers_to_auto_ds_AWADDR;
  wire [1:0]s00_couplers_to_auto_ds_AWBURST;
  wire [3:0]s00_couplers_to_auto_ds_AWCACHE;
  wire [15:0]s00_couplers_to_auto_ds_AWID;
  wire [7:0]s00_couplers_to_auto_ds_AWLEN;
  wire s00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s00_couplers_to_auto_ds_AWPROT;
  wire [3:0]s00_couplers_to_auto_ds_AWQOS;
  wire s00_couplers_to_auto_ds_AWREADY;
  wire [2:0]s00_couplers_to_auto_ds_AWSIZE;
  wire s00_couplers_to_auto_ds_AWVALID;
  wire [15:0]s00_couplers_to_auto_ds_BID;
  wire s00_couplers_to_auto_ds_BREADY;
  wire [1:0]s00_couplers_to_auto_ds_BRESP;
  wire s00_couplers_to_auto_ds_BVALID;
  wire [127:0]s00_couplers_to_auto_ds_RDATA;
  wire [15:0]s00_couplers_to_auto_ds_RID;
  wire s00_couplers_to_auto_ds_RLAST;
  wire s00_couplers_to_auto_ds_RREADY;
  wire [1:0]s00_couplers_to_auto_ds_RRESP;
  wire s00_couplers_to_auto_ds_RVALID;
  wire [127:0]s00_couplers_to_auto_ds_WDATA;
  wire s00_couplers_to_auto_ds_WLAST;
  wire s00_couplers_to_auto_ds_WREADY;
  wire [15:0]s00_couplers_to_auto_ds_WSTRB;
  wire s00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  ACL_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_ds_BID),
        .s_axi_bready(s00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s00_couplers_to_auto_ds_RID),
        .s_axi_rlast(s00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_ds_WVALID));
  ACL_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_1RHLYX4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_s01_couplers_ARADDR;
  wire [2:0]auto_pc_to_s01_couplers_ARPROT;
  wire auto_pc_to_s01_couplers_ARREADY;
  wire auto_pc_to_s01_couplers_ARVALID;
  wire [39:0]auto_pc_to_s01_couplers_AWADDR;
  wire [2:0]auto_pc_to_s01_couplers_AWPROT;
  wire auto_pc_to_s01_couplers_AWREADY;
  wire auto_pc_to_s01_couplers_AWVALID;
  wire auto_pc_to_s01_couplers_BREADY;
  wire [1:0]auto_pc_to_s01_couplers_BRESP;
  wire auto_pc_to_s01_couplers_BVALID;
  wire [31:0]auto_pc_to_s01_couplers_RDATA;
  wire auto_pc_to_s01_couplers_RREADY;
  wire [1:0]auto_pc_to_s01_couplers_RRESP;
  wire auto_pc_to_s01_couplers_RVALID;
  wire [31:0]auto_pc_to_s01_couplers_WDATA;
  wire auto_pc_to_s01_couplers_WREADY;
  wire [3:0]auto_pc_to_s01_couplers_WSTRB;
  wire auto_pc_to_s01_couplers_WVALID;
  wire [39:0]s01_couplers_to_auto_ds_ARADDR;
  wire [1:0]s01_couplers_to_auto_ds_ARBURST;
  wire [3:0]s01_couplers_to_auto_ds_ARCACHE;
  wire [15:0]s01_couplers_to_auto_ds_ARID;
  wire [7:0]s01_couplers_to_auto_ds_ARLEN;
  wire s01_couplers_to_auto_ds_ARLOCK;
  wire [2:0]s01_couplers_to_auto_ds_ARPROT;
  wire [3:0]s01_couplers_to_auto_ds_ARQOS;
  wire s01_couplers_to_auto_ds_ARREADY;
  wire [2:0]s01_couplers_to_auto_ds_ARSIZE;
  wire s01_couplers_to_auto_ds_ARVALID;
  wire [39:0]s01_couplers_to_auto_ds_AWADDR;
  wire [1:0]s01_couplers_to_auto_ds_AWBURST;
  wire [3:0]s01_couplers_to_auto_ds_AWCACHE;
  wire [15:0]s01_couplers_to_auto_ds_AWID;
  wire [7:0]s01_couplers_to_auto_ds_AWLEN;
  wire s01_couplers_to_auto_ds_AWLOCK;
  wire [2:0]s01_couplers_to_auto_ds_AWPROT;
  wire [3:0]s01_couplers_to_auto_ds_AWQOS;
  wire s01_couplers_to_auto_ds_AWREADY;
  wire [2:0]s01_couplers_to_auto_ds_AWSIZE;
  wire s01_couplers_to_auto_ds_AWVALID;
  wire [15:0]s01_couplers_to_auto_ds_BID;
  wire s01_couplers_to_auto_ds_BREADY;
  wire [1:0]s01_couplers_to_auto_ds_BRESP;
  wire s01_couplers_to_auto_ds_BVALID;
  wire [127:0]s01_couplers_to_auto_ds_RDATA;
  wire [15:0]s01_couplers_to_auto_ds_RID;
  wire s01_couplers_to_auto_ds_RLAST;
  wire s01_couplers_to_auto_ds_RREADY;
  wire [1:0]s01_couplers_to_auto_ds_RRESP;
  wire s01_couplers_to_auto_ds_RVALID;
  wire [127:0]s01_couplers_to_auto_ds_WDATA;
  wire s01_couplers_to_auto_ds_WLAST;
  wire s01_couplers_to_auto_ds_WREADY;
  wire [15:0]s01_couplers_to_auto_ds_WSTRB;
  wire s01_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_s01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_s01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[15:0] = s01_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = s01_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[15:0] = s01_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = s01_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign s01_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_ds_ARID = S_AXI_arid[15:0];
  assign s01_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_ds_ARLOCK = S_AXI_arlock;
  assign s01_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign s01_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_ds_AWID = S_AXI_awid[15:0];
  assign s01_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_ds_AWLOCK = S_AXI_awlock;
  assign s01_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign s01_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign s01_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  ACL_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s01_couplers_to_auto_ds_ARID),
        .s_axi_arlen(s01_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(s01_couplers_to_auto_ds_AWID),
        .s_axi_awlen(s01_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(s01_couplers_to_auto_ds_BID),
        .s_axi_bready(s01_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_ds_RDATA),
        .s_axi_rid(s01_couplers_to_auto_ds_RID),
        .s_axi_rlast(s01_couplers_to_auto_ds_RLAST),
        .s_axi_rready(s01_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_ds_WLAST),
        .s_axi_wready(s01_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_ds_WVALID));
  ACL_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s01_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s01_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s01_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_QWJZOI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_to_s01_couplers_ARQOS;
  wire auto_us_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_to_s01_couplers_ARSIZE;
  wire auto_us_to_s01_couplers_ARVALID;
  wire [127:0]auto_us_to_s01_couplers_RDATA;
  wire auto_us_to_s01_couplers_RLAST;
  wire auto_us_to_s01_couplers_RREADY;
  wire [1:0]auto_us_to_s01_couplers_RRESP;
  wire auto_us_to_s01_couplers_RVALID;
  wire [31:0]s01_couplers_to_auto_us_ARADDR;
  wire [1:0]s01_couplers_to_auto_us_ARBURST;
  wire [3:0]s01_couplers_to_auto_us_ARCACHE;
  wire [7:0]s01_couplers_to_auto_us_ARLEN;
  wire [0:0]s01_couplers_to_auto_us_ARLOCK;
  wire [2:0]s01_couplers_to_auto_us_ARPROT;
  wire [3:0]s01_couplers_to_auto_us_ARQOS;
  wire s01_couplers_to_auto_us_ARREADY;
  wire [2:0]s01_couplers_to_auto_us_ARSIZE;
  wire s01_couplers_to_auto_us_ARVALID;
  wire [31:0]s01_couplers_to_auto_us_RDATA;
  wire s01_couplers_to_auto_us_RLAST;
  wire s01_couplers_to_auto_us_RREADY;
  wire [1:0]s01_couplers_to_auto_us_RRESP;
  wire s01_couplers_to_auto_us_RVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s01_couplers_ARVALID;
  assign M_AXI_rready = auto_us_to_s01_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_us_ARREADY;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_us_RVALID;
  assign auto_us_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s01_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_us_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign s01_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_us_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_us_RREADY = S_AXI_rready;
  ACL_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s01_couplers_ARVALID),
        .m_axi_rdata(auto_us_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s01_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_us_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_us_ARVALID),
        .s_axi_rdata(s01_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_us_RLAST),
        .s_axi_rready(s01_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_us_RVALID));
endmodule

module s02_couplers_imp_1PDWKA4
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s02_couplers_AWADDR;
  wire [1:0]auto_us_to_s02_couplers_AWBURST;
  wire [3:0]auto_us_to_s02_couplers_AWCACHE;
  wire [7:0]auto_us_to_s02_couplers_AWLEN;
  wire [0:0]auto_us_to_s02_couplers_AWLOCK;
  wire [2:0]auto_us_to_s02_couplers_AWPROT;
  wire [3:0]auto_us_to_s02_couplers_AWQOS;
  wire auto_us_to_s02_couplers_AWREADY;
  wire [2:0]auto_us_to_s02_couplers_AWSIZE;
  wire auto_us_to_s02_couplers_AWVALID;
  wire auto_us_to_s02_couplers_BREADY;
  wire [1:0]auto_us_to_s02_couplers_BRESP;
  wire auto_us_to_s02_couplers_BVALID;
  wire [127:0]auto_us_to_s02_couplers_WDATA;
  wire auto_us_to_s02_couplers_WLAST;
  wire auto_us_to_s02_couplers_WREADY;
  wire [15:0]auto_us_to_s02_couplers_WSTRB;
  wire auto_us_to_s02_couplers_WVALID;
  wire [31:0]s02_couplers_to_auto_us_AWADDR;
  wire [1:0]s02_couplers_to_auto_us_AWBURST;
  wire [3:0]s02_couplers_to_auto_us_AWCACHE;
  wire [7:0]s02_couplers_to_auto_us_AWLEN;
  wire [0:0]s02_couplers_to_auto_us_AWLOCK;
  wire [2:0]s02_couplers_to_auto_us_AWPROT;
  wire [3:0]s02_couplers_to_auto_us_AWQOS;
  wire s02_couplers_to_auto_us_AWREADY;
  wire [2:0]s02_couplers_to_auto_us_AWSIZE;
  wire s02_couplers_to_auto_us_AWVALID;
  wire s02_couplers_to_auto_us_BREADY;
  wire [1:0]s02_couplers_to_auto_us_BRESP;
  wire s02_couplers_to_auto_us_BVALID;
  wire [31:0]s02_couplers_to_auto_us_WDATA;
  wire s02_couplers_to_auto_us_WLAST;
  wire s02_couplers_to_auto_us_WREADY;
  wire [3:0]s02_couplers_to_auto_us_WSTRB;
  wire s02_couplers_to_auto_us_WVALID;

  assign M_AXI_awaddr[31:0] = auto_us_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s02_couplers_BREADY;
  assign M_AXI_wdata[127:0] = auto_us_to_s02_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_us_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s02_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_auto_us_BVALID;
  assign S_AXI_wready = s02_couplers_to_auto_us_WREADY;
  assign auto_us_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_auto_us_AWLOCK = S_AXI_awlock[0];
  assign s02_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s02_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s02_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  ACL_auto_us_2 auto_us
       (.m_axi_awaddr(auto_us_to_s02_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s02_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s02_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s02_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s02_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s02_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s02_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s02_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s02_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s02_couplers_BVALID),
        .m_axi_wdata(auto_us_to_s02_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s02_couplers_WLAST),
        .m_axi_wready(auto_us_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s02_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s02_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s02_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s02_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s02_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s02_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s02_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s02_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s02_couplers_to_auto_us_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s02_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s02_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s02_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s02_couplers_to_auto_us_BVALID),
        .s_axi_wdata(s02_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s02_couplers_to_auto_us_WLAST),
        .s_axi_wready(s02_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s02_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s02_couplers_to_auto_us_WVALID));
endmodule

module zynq_ps_imp_1RA2FC1
   (In0,
    In1,
    In2,
    In3,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arprot,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awprot,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    clk_50,
    clk_75,
    emio_gpio_o,
    peripheral_reset,
    perph_aresetn_75);
  input In0;
  input In1;
  input In2;
  input In3;
  output [39:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [39:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  output [39:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [39:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [39:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arprot;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [2:0]S02_AXI_awprot;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  output clk_50;
  output clk_75;
  output [94:0]emio_gpio_o;
  output [0:0]peripheral_reset;
  output [0:0]perph_aresetn_75;

  wire ACLK_1;
  wire [0:0]ARESETN_1;
  wire In0_1;
  wire In1_1;
  wire In2_1;
  wire In3_1;
  wire [0:0]M00_ARESETN_1;
  wire [31:0]S00_AXI_1_ARADDR;
  wire [1:0]S00_AXI_1_ARBURST;
  wire [3:0]S00_AXI_1_ARCACHE;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire [2:0]S00_AXI_1_ARSIZE;
  wire S00_AXI_1_ARVALID;
  wire [31:0]S00_AXI_1_AWADDR;
  wire [1:0]S00_AXI_1_AWBURST;
  wire [3:0]S00_AXI_1_AWCACHE;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire [2:0]S00_AXI_1_AWSIZE;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [39:0]S00_AXI_2_ARADDR;
  wire [1:0]S00_AXI_2_ARBURST;
  wire [3:0]S00_AXI_2_ARCACHE;
  wire [15:0]S00_AXI_2_ARID;
  wire [7:0]S00_AXI_2_ARLEN;
  wire S00_AXI_2_ARLOCK;
  wire [2:0]S00_AXI_2_ARPROT;
  wire [3:0]S00_AXI_2_ARQOS;
  wire S00_AXI_2_ARREADY;
  wire [2:0]S00_AXI_2_ARSIZE;
  wire S00_AXI_2_ARVALID;
  wire [39:0]S00_AXI_2_AWADDR;
  wire [1:0]S00_AXI_2_AWBURST;
  wire [3:0]S00_AXI_2_AWCACHE;
  wire [15:0]S00_AXI_2_AWID;
  wire [7:0]S00_AXI_2_AWLEN;
  wire S00_AXI_2_AWLOCK;
  wire [2:0]S00_AXI_2_AWPROT;
  wire [3:0]S00_AXI_2_AWQOS;
  wire S00_AXI_2_AWREADY;
  wire [2:0]S00_AXI_2_AWSIZE;
  wire S00_AXI_2_AWVALID;
  wire [15:0]S00_AXI_2_BID;
  wire S00_AXI_2_BREADY;
  wire [1:0]S00_AXI_2_BRESP;
  wire S00_AXI_2_BVALID;
  wire [127:0]S00_AXI_2_RDATA;
  wire [15:0]S00_AXI_2_RID;
  wire S00_AXI_2_RLAST;
  wire S00_AXI_2_RREADY;
  wire [1:0]S00_AXI_2_RRESP;
  wire S00_AXI_2_RVALID;
  wire [127:0]S00_AXI_2_WDATA;
  wire S00_AXI_2_WLAST;
  wire S00_AXI_2_WREADY;
  wire [15:0]S00_AXI_2_WSTRB;
  wire S00_AXI_2_WVALID;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [2:0]S01_AXI_1_ARPROT;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S02_AXI_1_AWADDR;
  wire [1:0]S02_AXI_1_AWBURST;
  wire [3:0]S02_AXI_1_AWCACHE;
  wire [7:0]S02_AXI_1_AWLEN;
  wire [2:0]S02_AXI_1_AWPROT;
  wire S02_AXI_1_AWREADY;
  wire [2:0]S02_AXI_1_AWSIZE;
  wire S02_AXI_1_AWVALID;
  wire S02_AXI_1_BREADY;
  wire [1:0]S02_AXI_1_BRESP;
  wire S02_AXI_1_BVALID;
  wire [31:0]S02_AXI_1_WDATA;
  wire S02_AXI_1_WLAST;
  wire S02_AXI_1_WREADY;
  wire [3:0]S02_AXI_1_WSTRB;
  wire S02_AXI_1_WVALID;
  wire [31:0]axi_pl_ps_M00_AXI_ARADDR;
  wire [1:0]axi_pl_ps_M00_AXI_ARBURST;
  wire [3:0]axi_pl_ps_M00_AXI_ARCACHE;
  wire [1:0]axi_pl_ps_M00_AXI_ARID;
  wire [7:0]axi_pl_ps_M00_AXI_ARLEN;
  wire axi_pl_ps_M00_AXI_ARLOCK;
  wire [2:0]axi_pl_ps_M00_AXI_ARPROT;
  wire [3:0]axi_pl_ps_M00_AXI_ARQOS;
  wire axi_pl_ps_M00_AXI_ARREADY;
  wire [2:0]axi_pl_ps_M00_AXI_ARSIZE;
  wire axi_pl_ps_M00_AXI_ARVALID;
  wire [31:0]axi_pl_ps_M00_AXI_AWADDR;
  wire [1:0]axi_pl_ps_M00_AXI_AWBURST;
  wire [3:0]axi_pl_ps_M00_AXI_AWCACHE;
  wire [1:0]axi_pl_ps_M00_AXI_AWID;
  wire [7:0]axi_pl_ps_M00_AXI_AWLEN;
  wire axi_pl_ps_M00_AXI_AWLOCK;
  wire [2:0]axi_pl_ps_M00_AXI_AWPROT;
  wire [3:0]axi_pl_ps_M00_AXI_AWQOS;
  wire axi_pl_ps_M00_AXI_AWREADY;
  wire [2:0]axi_pl_ps_M00_AXI_AWSIZE;
  wire axi_pl_ps_M00_AXI_AWVALID;
  wire [5:0]axi_pl_ps_M00_AXI_BID;
  wire axi_pl_ps_M00_AXI_BREADY;
  wire [1:0]axi_pl_ps_M00_AXI_BRESP;
  wire axi_pl_ps_M00_AXI_BVALID;
  wire [127:0]axi_pl_ps_M00_AXI_RDATA;
  wire [5:0]axi_pl_ps_M00_AXI_RID;
  wire axi_pl_ps_M00_AXI_RLAST;
  wire axi_pl_ps_M00_AXI_RREADY;
  wire [1:0]axi_pl_ps_M00_AXI_RRESP;
  wire axi_pl_ps_M00_AXI_RVALID;
  wire [127:0]axi_pl_ps_M00_AXI_WDATA;
  wire axi_pl_ps_M00_AXI_WLAST;
  wire axi_pl_ps_M00_AXI_WREADY;
  wire [15:0]axi_pl_ps_M00_AXI_WSTRB;
  wire axi_pl_ps_M00_AXI_WVALID;
  wire [39:0]ps_axi_periph_M00_AXI_ARADDR;
  wire ps_axi_periph_M00_AXI_ARREADY;
  wire ps_axi_periph_M00_AXI_ARVALID;
  wire [39:0]ps_axi_periph_M00_AXI_AWADDR;
  wire ps_axi_periph_M00_AXI_AWREADY;
  wire ps_axi_periph_M00_AXI_AWVALID;
  wire ps_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps_axi_periph_M00_AXI_BRESP;
  wire ps_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps_axi_periph_M00_AXI_RDATA;
  wire ps_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps_axi_periph_M00_AXI_RRESP;
  wire ps_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps_axi_periph_M00_AXI_WDATA;
  wire ps_axi_periph_M00_AXI_WREADY;
  wire ps_axi_periph_M00_AXI_WVALID;
  wire [39:0]ps_axi_periph_M01_AXI_ARADDR;
  wire ps_axi_periph_M01_AXI_ARREADY;
  wire ps_axi_periph_M01_AXI_ARVALID;
  wire [39:0]ps_axi_periph_M01_AXI_AWADDR;
  wire ps_axi_periph_M01_AXI_AWREADY;
  wire ps_axi_periph_M01_AXI_AWVALID;
  wire ps_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps_axi_periph_M01_AXI_BRESP;
  wire ps_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps_axi_periph_M01_AXI_RDATA;
  wire ps_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps_axi_periph_M01_AXI_RRESP;
  wire ps_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps_axi_periph_M01_AXI_WDATA;
  wire ps_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps_axi_periph_M01_AXI_WSTRB;
  wire ps_axi_periph_M01_AXI_WVALID;
  wire [39:0]ps_axi_periph_M02_AXI_ARADDR;
  wire [0:0]ps_axi_periph_M02_AXI_ARREADY;
  wire [0:0]ps_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps_axi_periph_M02_AXI_AWADDR;
  wire [0:0]ps_axi_periph_M02_AXI_AWREADY;
  wire [0:0]ps_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps_axi_periph_M02_AXI_BRESP;
  wire [0:0]ps_axi_periph_M02_AXI_BVALID;
  wire [31:0]ps_axi_periph_M02_AXI_RDATA;
  wire [0:0]ps_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps_axi_periph_M02_AXI_RRESP;
  wire [0:0]ps_axi_periph_M02_AXI_RVALID;
  wire [31:0]ps_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps_axi_periph_M02_AXI_WREADY;
  wire [3:0]ps_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps_axi_periph_M02_AXI_WVALID;
  wire [3:0]ps_irq_concat_dout;
  wire [0:0]ps_rst_75_peripheral_reset;
  wire [39:0]zusp_ps_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zusp_ps_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zusp_ps_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zusp_ps_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zusp_ps_M_AXI_HPM1_FPD_ARLEN;
  wire zusp_ps_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zusp_ps_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zusp_ps_M_AXI_HPM1_FPD_ARQOS;
  wire zusp_ps_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zusp_ps_M_AXI_HPM1_FPD_ARSIZE;
  wire zusp_ps_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zusp_ps_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zusp_ps_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zusp_ps_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zusp_ps_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zusp_ps_M_AXI_HPM1_FPD_AWLEN;
  wire zusp_ps_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zusp_ps_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zusp_ps_M_AXI_HPM1_FPD_AWQOS;
  wire zusp_ps_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zusp_ps_M_AXI_HPM1_FPD_AWSIZE;
  wire zusp_ps_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zusp_ps_M_AXI_HPM1_FPD_BID;
  wire zusp_ps_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zusp_ps_M_AXI_HPM1_FPD_BRESP;
  wire zusp_ps_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zusp_ps_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zusp_ps_M_AXI_HPM1_FPD_RID;
  wire zusp_ps_M_AXI_HPM1_FPD_RLAST;
  wire zusp_ps_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zusp_ps_M_AXI_HPM1_FPD_RRESP;
  wire zusp_ps_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zusp_ps_M_AXI_HPM1_FPD_WDATA;
  wire zusp_ps_M_AXI_HPM1_FPD_WLAST;
  wire zusp_ps_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zusp_ps_M_AXI_HPM1_FPD_WSTRB;
  wire zusp_ps_M_AXI_HPM1_FPD_WVALID;
  wire zusp_ps_pl_clk1;
  wire zusp_ps_pl_resetn0;

  assign In0_1 = In0;
  assign In1_1 = In1;
  assign In2_1 = In2;
  assign In3_1 = In3;
  assign M00_AXI_araddr[39:0] = ps_axi_periph_M00_AXI_ARADDR;
  assign M00_AXI_arvalid = ps_axi_periph_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[39:0] = ps_axi_periph_M00_AXI_AWADDR;
  assign M00_AXI_awvalid = ps_axi_periph_M00_AXI_AWVALID;
  assign M00_AXI_bready = ps_axi_periph_M00_AXI_BREADY;
  assign M00_AXI_rready = ps_axi_periph_M00_AXI_RREADY;
  assign M00_AXI_wdata[31:0] = ps_axi_periph_M00_AXI_WDATA;
  assign M00_AXI_wvalid = ps_axi_periph_M00_AXI_WVALID;
  assign M01_AXI_araddr[39:0] = ps_axi_periph_M01_AXI_ARADDR;
  assign M01_AXI_arvalid = ps_axi_periph_M01_AXI_ARVALID;
  assign M01_AXI_awaddr[39:0] = ps_axi_periph_M01_AXI_AWADDR;
  assign M01_AXI_awvalid = ps_axi_periph_M01_AXI_AWVALID;
  assign M01_AXI_bready = ps_axi_periph_M01_AXI_BREADY;
  assign M01_AXI_rready = ps_axi_periph_M01_AXI_RREADY;
  assign M01_AXI_wdata[31:0] = ps_axi_periph_M01_AXI_WDATA;
  assign M01_AXI_wstrb[3:0] = ps_axi_periph_M01_AXI_WSTRB;
  assign M01_AXI_wvalid = ps_axi_periph_M01_AXI_WVALID;
  assign M02_AXI_araddr[39:0] = ps_axi_periph_M02_AXI_ARADDR;
  assign M02_AXI_arvalid[0] = ps_axi_periph_M02_AXI_ARVALID;
  assign M02_AXI_awaddr[39:0] = ps_axi_periph_M02_AXI_AWADDR;
  assign M02_AXI_awvalid[0] = ps_axi_periph_M02_AXI_AWVALID;
  assign M02_AXI_bready[0] = ps_axi_periph_M02_AXI_BREADY;
  assign M02_AXI_rready[0] = ps_axi_periph_M02_AXI_RREADY;
  assign M02_AXI_wdata[31:0] = ps_axi_periph_M02_AXI_WDATA;
  assign M02_AXI_wstrb[3:0] = ps_axi_periph_M02_AXI_WSTRB;
  assign M02_AXI_wvalid[0] = ps_axi_periph_M02_AXI_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[31:0];
  assign S00_AXI_1_ARBURST = S00_AXI_arburst[1:0];
  assign S00_AXI_1_ARCACHE = S00_AXI_arcache[3:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARSIZE = S00_AXI_arsize[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[31:0];
  assign S00_AXI_1_AWBURST = S00_AXI_awburst[1:0];
  assign S00_AXI_1_AWCACHE = S00_AXI_awcache[3:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWSIZE = S00_AXI_awsize[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[31:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_rdata[31:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S02_AXI_1_AWADDR = S02_AXI_awaddr[31:0];
  assign S02_AXI_1_AWBURST = S02_AXI_awburst[1:0];
  assign S02_AXI_1_AWCACHE = S02_AXI_awcache[3:0];
  assign S02_AXI_1_AWLEN = S02_AXI_awlen[7:0];
  assign S02_AXI_1_AWPROT = S02_AXI_awprot[2:0];
  assign S02_AXI_1_AWSIZE = S02_AXI_awsize[2:0];
  assign S02_AXI_1_AWVALID = S02_AXI_awvalid;
  assign S02_AXI_1_BREADY = S02_AXI_bready;
  assign S02_AXI_1_WDATA = S02_AXI_wdata[31:0];
  assign S02_AXI_1_WLAST = S02_AXI_wlast;
  assign S02_AXI_1_WSTRB = S02_AXI_wstrb[3:0];
  assign S02_AXI_1_WVALID = S02_AXI_wvalid;
  assign S02_AXI_awready = S02_AXI_1_AWREADY;
  assign S02_AXI_bresp[1:0] = S02_AXI_1_BRESP;
  assign S02_AXI_bvalid = S02_AXI_1_BVALID;
  assign S02_AXI_wready = S02_AXI_1_WREADY;
  assign clk_50 = zusp_ps_pl_clk1;
  assign clk_75 = ACLK_1;
  assign peripheral_reset[0] = ps_rst_75_peripheral_reset;
  assign perph_aresetn_75[0] = M00_ARESETN_1;
  assign ps_axi_periph_M00_AXI_ARREADY = M00_AXI_arready;
  assign ps_axi_periph_M00_AXI_AWREADY = M00_AXI_awready;
  assign ps_axi_periph_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign ps_axi_periph_M00_AXI_BVALID = M00_AXI_bvalid;
  assign ps_axi_periph_M00_AXI_RDATA = M00_AXI_rdata[31:0];
  assign ps_axi_periph_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign ps_axi_periph_M00_AXI_RVALID = M00_AXI_rvalid;
  assign ps_axi_periph_M00_AXI_WREADY = M00_AXI_wready;
  assign ps_axi_periph_M01_AXI_ARREADY = M01_AXI_arready;
  assign ps_axi_periph_M01_AXI_AWREADY = M01_AXI_awready;
  assign ps_axi_periph_M01_AXI_BRESP = M01_AXI_bresp[1:0];
  assign ps_axi_periph_M01_AXI_BVALID = M01_AXI_bvalid;
  assign ps_axi_periph_M01_AXI_RDATA = M01_AXI_rdata[31:0];
  assign ps_axi_periph_M01_AXI_RRESP = M01_AXI_rresp[1:0];
  assign ps_axi_periph_M01_AXI_RVALID = M01_AXI_rvalid;
  assign ps_axi_periph_M01_AXI_WREADY = M01_AXI_wready;
  assign ps_axi_periph_M02_AXI_ARREADY = M02_AXI_arready[0];
  assign ps_axi_periph_M02_AXI_AWREADY = M02_AXI_awready[0];
  assign ps_axi_periph_M02_AXI_BRESP = M02_AXI_bresp[1:0];
  assign ps_axi_periph_M02_AXI_BVALID = M02_AXI_bvalid[0];
  assign ps_axi_periph_M02_AXI_RDATA = M02_AXI_rdata[31:0];
  assign ps_axi_periph_M02_AXI_RRESP = M02_AXI_rresp[1:0];
  assign ps_axi_periph_M02_AXI_RVALID = M02_AXI_rvalid[0];
  assign ps_axi_periph_M02_AXI_WREADY = M02_AXI_wready[0];
  ACL_axi_pl_ps_0 axi_pl_ps
       (.ACLK(ACLK_1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(ACLK_1),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(axi_pl_ps_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_pl_ps_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_pl_ps_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_pl_ps_M00_AXI_ARID),
        .M00_AXI_arlen(axi_pl_ps_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_pl_ps_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_pl_ps_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_pl_ps_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_pl_ps_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_pl_ps_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_pl_ps_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_pl_ps_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_pl_ps_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_pl_ps_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_pl_ps_M00_AXI_AWID),
        .M00_AXI_awlen(axi_pl_ps_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_pl_ps_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_pl_ps_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_pl_ps_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_pl_ps_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_pl_ps_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_pl_ps_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_pl_ps_M00_AXI_BID),
        .M00_AXI_bready(axi_pl_ps_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_pl_ps_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_pl_ps_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_pl_ps_M00_AXI_RDATA),
        .M00_AXI_rid(axi_pl_ps_M00_AXI_RID),
        .M00_AXI_rlast(axi_pl_ps_M00_AXI_RLAST),
        .M00_AXI_rready(axi_pl_ps_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_pl_ps_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_pl_ps_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_pl_ps_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_pl_ps_M00_AXI_WLAST),
        .M00_AXI_wready(axi_pl_ps_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_pl_ps_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_pl_ps_M00_AXI_WVALID),
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(M00_ARESETN_1),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_1_ARCACHE),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_1_AWCACHE),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .S01_ACLK(ACLK_1),
        .S01_ARESETN(M00_ARESETN_1),
        .S01_AXI_araddr(S01_AXI_1_ARADDR),
        .S01_AXI_arburst(S01_AXI_1_ARBURST),
        .S01_AXI_arcache(S01_AXI_1_ARCACHE),
        .S01_AXI_arlen(S01_AXI_1_ARLEN),
        .S01_AXI_arprot(S01_AXI_1_ARPROT),
        .S01_AXI_arready(S01_AXI_1_ARREADY),
        .S01_AXI_arsize(S01_AXI_1_ARSIZE),
        .S01_AXI_arvalid(S01_AXI_1_ARVALID),
        .S01_AXI_rdata(S01_AXI_1_RDATA),
        .S01_AXI_rlast(S01_AXI_1_RLAST),
        .S01_AXI_rready(S01_AXI_1_RREADY),
        .S01_AXI_rresp(S01_AXI_1_RRESP),
        .S01_AXI_rvalid(S01_AXI_1_RVALID),
        .S02_ACLK(ACLK_1),
        .S02_ARESETN(M00_ARESETN_1),
        .S02_AXI_awaddr(S02_AXI_1_AWADDR),
        .S02_AXI_awburst(S02_AXI_1_AWBURST),
        .S02_AXI_awcache(S02_AXI_1_AWCACHE),
        .S02_AXI_awlen(S02_AXI_1_AWLEN),
        .S02_AXI_awprot(S02_AXI_1_AWPROT),
        .S02_AXI_awready(S02_AXI_1_AWREADY),
        .S02_AXI_awsize(S02_AXI_1_AWSIZE),
        .S02_AXI_awvalid(S02_AXI_1_AWVALID),
        .S02_AXI_bready(S02_AXI_1_BREADY),
        .S02_AXI_bresp(S02_AXI_1_BRESP),
        .S02_AXI_bvalid(S02_AXI_1_BVALID),
        .S02_AXI_wdata(S02_AXI_1_WDATA),
        .S02_AXI_wlast(S02_AXI_1_WLAST),
        .S02_AXI_wready(S02_AXI_1_WREADY),
        .S02_AXI_wstrb(S02_AXI_1_WSTRB),
        .S02_AXI_wvalid(S02_AXI_1_WVALID));
  ACL_ps_axi_periph_0 ps_axi_periph
       (.ACLK(ACLK_1),
        .ARESETN(ARESETN_1),
        .M00_ACLK(ACLK_1),
        .M00_ARESETN(M00_ARESETN_1),
        .M00_AXI_araddr(ps_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(ps_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(ACLK_1),
        .M01_ARESETN(M00_ARESETN_1),
        .M01_AXI_araddr(ps_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(ps_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(ps_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(ACLK_1),
        .M02_ARESETN(M00_ARESETN_1),
        .M02_AXI_araddr(ps_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(ps_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(ps_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(ps_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(ps_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(ps_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(ps_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(ps_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(ps_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(ps_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(ps_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(ps_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(ps_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(ps_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(ps_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(ps_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(ps_axi_periph_M02_AXI_WVALID),
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(M00_ARESETN_1),
        .S00_AXI_araddr(S00_AXI_2_ARADDR),
        .S00_AXI_arburst(S00_AXI_2_ARBURST),
        .S00_AXI_arcache(S00_AXI_2_ARCACHE),
        .S00_AXI_arid(S00_AXI_2_ARID),
        .S00_AXI_arlen(S00_AXI_2_ARLEN),
        .S00_AXI_arlock(S00_AXI_2_ARLOCK),
        .S00_AXI_arprot(S00_AXI_2_ARPROT),
        .S00_AXI_arqos(S00_AXI_2_ARQOS),
        .S00_AXI_arready(S00_AXI_2_ARREADY),
        .S00_AXI_arsize(S00_AXI_2_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_2_ARVALID),
        .S00_AXI_awaddr(S00_AXI_2_AWADDR),
        .S00_AXI_awburst(S00_AXI_2_AWBURST),
        .S00_AXI_awcache(S00_AXI_2_AWCACHE),
        .S00_AXI_awid(S00_AXI_2_AWID),
        .S00_AXI_awlen(S00_AXI_2_AWLEN),
        .S00_AXI_awlock(S00_AXI_2_AWLOCK),
        .S00_AXI_awprot(S00_AXI_2_AWPROT),
        .S00_AXI_awqos(S00_AXI_2_AWQOS),
        .S00_AXI_awready(S00_AXI_2_AWREADY),
        .S00_AXI_awsize(S00_AXI_2_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_2_AWVALID),
        .S00_AXI_bid(S00_AXI_2_BID),
        .S00_AXI_bready(S00_AXI_2_BREADY),
        .S00_AXI_bresp(S00_AXI_2_BRESP),
        .S00_AXI_bvalid(S00_AXI_2_BVALID),
        .S00_AXI_rdata(S00_AXI_2_RDATA),
        .S00_AXI_rid(S00_AXI_2_RID),
        .S00_AXI_rlast(S00_AXI_2_RLAST),
        .S00_AXI_rready(S00_AXI_2_RREADY),
        .S00_AXI_rresp(S00_AXI_2_RRESP),
        .S00_AXI_rvalid(S00_AXI_2_RVALID),
        .S00_AXI_wdata(S00_AXI_2_WDATA),
        .S00_AXI_wlast(S00_AXI_2_WLAST),
        .S00_AXI_wready(S00_AXI_2_WREADY),
        .S00_AXI_wstrb(S00_AXI_2_WSTRB),
        .S00_AXI_wvalid(S00_AXI_2_WVALID),
        .S01_ACLK(ACLK_1),
        .S01_ARESETN(M00_ARESETN_1),
        .S01_AXI_araddr(zusp_ps_M_AXI_HPM1_FPD_ARADDR),
        .S01_AXI_arburst(zusp_ps_M_AXI_HPM1_FPD_ARBURST),
        .S01_AXI_arcache(zusp_ps_M_AXI_HPM1_FPD_ARCACHE),
        .S01_AXI_arid(zusp_ps_M_AXI_HPM1_FPD_ARID),
        .S01_AXI_arlen(zusp_ps_M_AXI_HPM1_FPD_ARLEN),
        .S01_AXI_arlock(zusp_ps_M_AXI_HPM1_FPD_ARLOCK),
        .S01_AXI_arprot(zusp_ps_M_AXI_HPM1_FPD_ARPROT),
        .S01_AXI_arqos(zusp_ps_M_AXI_HPM1_FPD_ARQOS),
        .S01_AXI_arready(zusp_ps_M_AXI_HPM1_FPD_ARREADY),
        .S01_AXI_arsize(zusp_ps_M_AXI_HPM1_FPD_ARSIZE),
        .S01_AXI_arvalid(zusp_ps_M_AXI_HPM1_FPD_ARVALID),
        .S01_AXI_awaddr(zusp_ps_M_AXI_HPM1_FPD_AWADDR),
        .S01_AXI_awburst(zusp_ps_M_AXI_HPM1_FPD_AWBURST),
        .S01_AXI_awcache(zusp_ps_M_AXI_HPM1_FPD_AWCACHE),
        .S01_AXI_awid(zusp_ps_M_AXI_HPM1_FPD_AWID),
        .S01_AXI_awlen(zusp_ps_M_AXI_HPM1_FPD_AWLEN),
        .S01_AXI_awlock(zusp_ps_M_AXI_HPM1_FPD_AWLOCK),
        .S01_AXI_awprot(zusp_ps_M_AXI_HPM1_FPD_AWPROT),
        .S01_AXI_awqos(zusp_ps_M_AXI_HPM1_FPD_AWQOS),
        .S01_AXI_awready(zusp_ps_M_AXI_HPM1_FPD_AWREADY),
        .S01_AXI_awsize(zusp_ps_M_AXI_HPM1_FPD_AWSIZE),
        .S01_AXI_awvalid(zusp_ps_M_AXI_HPM1_FPD_AWVALID),
        .S01_AXI_bid(zusp_ps_M_AXI_HPM1_FPD_BID),
        .S01_AXI_bready(zusp_ps_M_AXI_HPM1_FPD_BREADY),
        .S01_AXI_bresp(zusp_ps_M_AXI_HPM1_FPD_BRESP),
        .S01_AXI_bvalid(zusp_ps_M_AXI_HPM1_FPD_BVALID),
        .S01_AXI_rdata(zusp_ps_M_AXI_HPM1_FPD_RDATA),
        .S01_AXI_rid(zusp_ps_M_AXI_HPM1_FPD_RID),
        .S01_AXI_rlast(zusp_ps_M_AXI_HPM1_FPD_RLAST),
        .S01_AXI_rready(zusp_ps_M_AXI_HPM1_FPD_RREADY),
        .S01_AXI_rresp(zusp_ps_M_AXI_HPM1_FPD_RRESP),
        .S01_AXI_rvalid(zusp_ps_M_AXI_HPM1_FPD_RVALID),
        .S01_AXI_wdata(zusp_ps_M_AXI_HPM1_FPD_WDATA),
        .S01_AXI_wlast(zusp_ps_M_AXI_HPM1_FPD_WLAST),
        .S01_AXI_wready(zusp_ps_M_AXI_HPM1_FPD_WREADY),
        .S01_AXI_wstrb(zusp_ps_M_AXI_HPM1_FPD_WSTRB),
        .S01_AXI_wvalid(zusp_ps_M_AXI_HPM1_FPD_WVALID));
  ACL_ps_irq_concat_0 ps_irq_concat
       (.In0(In0_1),
        .In1(In1_1),
        .In2(In2_1),
        .In3(In3_1),
        .dout(ps_irq_concat_dout));
  ACL_ps_rst_75_0 ps_rst_75
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zusp_ps_pl_resetn0),
        .interconnect_aresetn(ARESETN_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(M00_ARESETN_1),
        .peripheral_reset(ps_rst_75_peripheral_reset),
        .slowest_sync_clk(ACLK_1));
  ACL_zusp_ps_0 zusp_ps
       (.emio_gpio_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp0_araddr(S00_AXI_2_ARADDR),
        .maxigp0_arburst(S00_AXI_2_ARBURST),
        .maxigp0_arcache(S00_AXI_2_ARCACHE),
        .maxigp0_arid(S00_AXI_2_ARID),
        .maxigp0_arlen(S00_AXI_2_ARLEN),
        .maxigp0_arlock(S00_AXI_2_ARLOCK),
        .maxigp0_arprot(S00_AXI_2_ARPROT),
        .maxigp0_arqos(S00_AXI_2_ARQOS),
        .maxigp0_arready(S00_AXI_2_ARREADY),
        .maxigp0_arsize(S00_AXI_2_ARSIZE),
        .maxigp0_arvalid(S00_AXI_2_ARVALID),
        .maxigp0_awaddr(S00_AXI_2_AWADDR),
        .maxigp0_awburst(S00_AXI_2_AWBURST),
        .maxigp0_awcache(S00_AXI_2_AWCACHE),
        .maxigp0_awid(S00_AXI_2_AWID),
        .maxigp0_awlen(S00_AXI_2_AWLEN),
        .maxigp0_awlock(S00_AXI_2_AWLOCK),
        .maxigp0_awprot(S00_AXI_2_AWPROT),
        .maxigp0_awqos(S00_AXI_2_AWQOS),
        .maxigp0_awready(S00_AXI_2_AWREADY),
        .maxigp0_awsize(S00_AXI_2_AWSIZE),
        .maxigp0_awvalid(S00_AXI_2_AWVALID),
        .maxigp0_bid(S00_AXI_2_BID),
        .maxigp0_bready(S00_AXI_2_BREADY),
        .maxigp0_bresp(S00_AXI_2_BRESP),
        .maxigp0_bvalid(S00_AXI_2_BVALID),
        .maxigp0_rdata(S00_AXI_2_RDATA),
        .maxigp0_rid(S00_AXI_2_RID),
        .maxigp0_rlast(S00_AXI_2_RLAST),
        .maxigp0_rready(S00_AXI_2_RREADY),
        .maxigp0_rresp(S00_AXI_2_RRESP),
        .maxigp0_rvalid(S00_AXI_2_RVALID),
        .maxigp0_wdata(S00_AXI_2_WDATA),
        .maxigp0_wlast(S00_AXI_2_WLAST),
        .maxigp0_wready(S00_AXI_2_WREADY),
        .maxigp0_wstrb(S00_AXI_2_WSTRB),
        .maxigp0_wvalid(S00_AXI_2_WVALID),
        .maxigp1_araddr(zusp_ps_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zusp_ps_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zusp_ps_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zusp_ps_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zusp_ps_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zusp_ps_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zusp_ps_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zusp_ps_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zusp_ps_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zusp_ps_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_arvalid(zusp_ps_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zusp_ps_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zusp_ps_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zusp_ps_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zusp_ps_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zusp_ps_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zusp_ps_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zusp_ps_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zusp_ps_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zusp_ps_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zusp_ps_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awvalid(zusp_ps_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zusp_ps_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zusp_ps_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zusp_ps_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zusp_ps_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zusp_ps_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zusp_ps_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zusp_ps_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zusp_ps_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zusp_ps_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zusp_ps_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zusp_ps_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zusp_ps_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zusp_ps_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zusp_ps_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zusp_ps_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(ACLK_1),
        .maxihpm1_fpd_aclk(ACLK_1),
        .pl_clk0(ACLK_1),
        .pl_clk1(zusp_ps_pl_clk1),
        .pl_ps_irq0(ps_irq_concat_dout),
        .pl_resetn0(zusp_ps_pl_resetn0),
        .saxigp2_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_pl_ps_M00_AXI_ARADDR}),
        .saxigp2_arburst(axi_pl_ps_M00_AXI_ARBURST),
        .saxigp2_arcache(axi_pl_ps_M00_AXI_ARCACHE),
        .saxigp2_arid({1'b0,1'b0,1'b0,1'b0,axi_pl_ps_M00_AXI_ARID}),
        .saxigp2_arlen(axi_pl_ps_M00_AXI_ARLEN),
        .saxigp2_arlock(axi_pl_ps_M00_AXI_ARLOCK),
        .saxigp2_arprot(axi_pl_ps_M00_AXI_ARPROT),
        .saxigp2_arqos(axi_pl_ps_M00_AXI_ARQOS),
        .saxigp2_arready(axi_pl_ps_M00_AXI_ARREADY),
        .saxigp2_arsize(axi_pl_ps_M00_AXI_ARSIZE),
        .saxigp2_aruser(1'b0),
        .saxigp2_arvalid(axi_pl_ps_M00_AXI_ARVALID),
        .saxigp2_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_pl_ps_M00_AXI_AWADDR}),
        .saxigp2_awburst(axi_pl_ps_M00_AXI_AWBURST),
        .saxigp2_awcache(axi_pl_ps_M00_AXI_AWCACHE),
        .saxigp2_awid({1'b0,1'b0,1'b0,1'b0,axi_pl_ps_M00_AXI_AWID}),
        .saxigp2_awlen(axi_pl_ps_M00_AXI_AWLEN),
        .saxigp2_awlock(axi_pl_ps_M00_AXI_AWLOCK),
        .saxigp2_awprot(axi_pl_ps_M00_AXI_AWPROT),
        .saxigp2_awqos(axi_pl_ps_M00_AXI_AWQOS),
        .saxigp2_awready(axi_pl_ps_M00_AXI_AWREADY),
        .saxigp2_awsize(axi_pl_ps_M00_AXI_AWSIZE),
        .saxigp2_awuser(1'b0),
        .saxigp2_awvalid(axi_pl_ps_M00_AXI_AWVALID),
        .saxigp2_bid(axi_pl_ps_M00_AXI_BID),
        .saxigp2_bready(axi_pl_ps_M00_AXI_BREADY),
        .saxigp2_bresp(axi_pl_ps_M00_AXI_BRESP),
        .saxigp2_bvalid(axi_pl_ps_M00_AXI_BVALID),
        .saxigp2_rdata(axi_pl_ps_M00_AXI_RDATA),
        .saxigp2_rid(axi_pl_ps_M00_AXI_RID),
        .saxigp2_rlast(axi_pl_ps_M00_AXI_RLAST),
        .saxigp2_rready(axi_pl_ps_M00_AXI_RREADY),
        .saxigp2_rresp(axi_pl_ps_M00_AXI_RRESP),
        .saxigp2_rvalid(axi_pl_ps_M00_AXI_RVALID),
        .saxigp2_wdata(axi_pl_ps_M00_AXI_WDATA),
        .saxigp2_wlast(axi_pl_ps_M00_AXI_WLAST),
        .saxigp2_wready(axi_pl_ps_M00_AXI_WREADY),
        .saxigp2_wstrb(axi_pl_ps_M00_AXI_WSTRB),
        .saxigp2_wvalid(axi_pl_ps_M00_AXI_WVALID),
        .saxihp0_fpd_aclk(ACLK_1));
endmodule
