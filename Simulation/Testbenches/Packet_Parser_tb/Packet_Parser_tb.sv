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
  logic [C_s_axis_rxd_TDATA_WIDTH - 1:0] i_rx_tdata;
  //Outputs
  logic [C_s_axis_rxd_TDATA_WIDTH - 1 :0] o_rxd_tdata;
  logic o_rxd_tready, o_fifo_invalid;

  //Instatiate the DUT
  packet_parser DUT(
         .clk(clk),
         .rst(rst),
         .i_rxd_tvalid(i_rxd_tvalid),         
         .i_rxd_tlast(i_rxd_tlast),
         .i_rx_tdata(i_rx_tdata),
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
    //generate_ethernet_frame(clk,i_rx_data,i_rxd_tvalid,rst,i_rxd_tlast);
    generate_full_ethernet_frame_pp(
        clk, rst, i_rxd_tvalid,i_rxd_tlast, i_rxd_tdata    
    );

    // Monitor outputs
    $monitor("Time=%0t clk=%b rst=%b i_rxd_tvalid=%b i_rd_valid=%b i_rx_data=%h i_rxd_tlast=%b o_data=%h o_wr_cnt=%h o_rxd_tready=%b",
             $time, clk, rst, i_rxd_tvalid, i_rd_valid, i_rx_data, i_rxd_tlast, o_data, o_wr_cnt, o_rxd_tready);

  end

endmodule:packet_parser_tb