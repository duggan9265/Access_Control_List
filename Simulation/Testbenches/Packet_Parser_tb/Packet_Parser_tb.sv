//Test bench for the Packet Parser

module packet_parser_tb;

`timescale 1s/1ns

import control_sig_tasks_pkg::*; //::* imports everything from the package
import ether_frame_pp_pkg::*;

  //Define parameters
  parameter clk_period = 6.4;
  parameter C_s_axis_rxd_TDATA_WIDTH = 32;
  parameter fifo_depth = 9;

  //Inputs
  logic clk, rst, i_rxd_tvalid, i_rxd_tlast;
  logic [C_s_axis_rxd_TDATA_WIDTH - 1:0] i_rxd_tdata;
  //Outputs
  logic [C_s_axis_rxd_TDATA_WIDTH - 1 :0] o_rxd_tdata;
  logic o_rxd_tready, o_fifo_invalid;

  //Instatiate the DUT
  packet_parser DUT(
         .clk(clk),
         .rst(rst),
         .i_rxd_tvalid(i_rxd_tvalid),         
         .i_rxd_tlast(i_rxd_tlast),
         .i_rxd_tdata(i_rxd_tdata),
         .o_rxd_tdata(o_rxd_tdata),
         .o_rxd_tready(o_rxd_tready),
         .o_fifo_invalid(o_fifo_invalid)
       );

  //Clock Generation
  always #((clk_period/2)) clk = ~clk;

  // Use the task in your simulation
  initial begin
    clk=0;
    //i_rxd_tdata     = 32'h00000000;
    i_rxd_tvalid  = 1'b0;
    i_rxd_tlast    = 1'b0;
    rst=1'b0;
    #5;
    //rst=1'b1;
  
    reset(rst);  // Call the reset task
    #10;
    rmv_reset(rst);
   
    //generate_ethernet_frame(clk,i_rxd_tdata,i_rxd_tvalid,rst,i_rxd_tlast);
    generate_basic_ipv4_tcp_frame(
        clk, rst, i_rxd_tvalid,i_rxd_tlast, i_rxd_tdata    
    );

    // Monitor outputs
    $monitor("Time=%0t clk=%b rst=%b i_rxd_tvalid=%b  i_rxd_tdata=%h i_rxd_tlast=%b o_rxd_t_data=%h o_rxd_tready=%b o_fifo_invalid=%b",
             $time, clk, rst, i_rxd_tvalid,  i_rxd_tdata, i_rxd_tlast, o_rxd_tdata, o_rxd_tready, o_fifo_invalid);

  end

endmodule:packet_parser_tb