// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 16 15:45:16 2025
// Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_axi_eth_0_0/bd_0/ip/ip_6/bd_fd73_c_shift_ram_0_0_stub.v
// Design      : bd_fd73_c_shift_ram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_15,Vivado 2023.2" *)
module bd_fd73_c_shift_ram_0_0(D, CLK, CE, SCLR, Q)
/* synthesis syn_black_box black_box_pad_pin="D[0:0],CE,SCLR,Q[0:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input [0:0]D;
  input CLK /* synthesis syn_isclock = 1 */;
  input CE;
  input SCLR;
  output [0:0]Q;
endmodule
