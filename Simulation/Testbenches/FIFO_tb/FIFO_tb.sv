//Test bench for the FIFO

module fifo_tb;

`timescale 1s/1ns
//`include "fifo_tb_tasks_pkg.sv" //pulls in the source code textually. Not needed oly need to import

import control_sig_tasks_pkg::*; //::* imports everything from the package
import generate_data_pkg::*;
import generate_etherframe_pkg::*;

  //Define parameters
  parameter clk_period = 6.4;
  parameter C_s_axis_rxd_TDATA_WIDTH = 32;
  parameter fifo_depth = 9;

  //Inputs
  logic clk;
  logic rst;
  logic i_rxd_tvalid;
  logic i_rd_valid;
  logic i_rxd_tlast;
  logic i_fifo_invalid;
  logic [C_s_axis_rxd_TDATA_WIDTH - 1:0] i_rx_data;
  //Outputs
  logic [C_s_axis_rxd_TDATA_WIDTH - 1 :0] o_data;
  logic [fifo_depth-1:0] o_wr_cnt;
  logic o_rxd_tready;

  //Instatiate the DUT
  fifo DUT(
         .clk(clk),
         .rst(rst),
         .i_rxd_tvalid(i_rxd_tvalid),
         .i_rd_valid(i_rd_valid),
         .i_rxd_tlast(i_rxd_tlast),
         .i_fifo_invalid(i_fifo_invalid),
         .i_rx_data(i_rx_data),
         .o_data(o_data),
         .o_wr_cnt(o_wr_cnt),
         .o_rxd_tready(o_rxd_tready)
       );

  //Clock Generation
  always #((clk_period/2)) clk = ~clk;

  // Use the task in your simulation
  initial begin
    clk=0;
    //i_rx_data     = 32'h00000000;
    i_rxd_tvalid  = 1'b0;
    i_rxd_tlast    = 1'b0;
    i_rd_valid = 0; 
    i_fifo_invalid = 1;
    rst=1'b0;
    #5;
    //rst=1'b1;
    reset(rst);  // Call the reset task
    #10;
    rmv_reset(rst);
    //generate_ethernet_frame(clk,i_rx_data,i_rxd_tvalid,rst,i_rxd_tlast);
    generate_full_ethernet_frame(
        clk, i_rx_data, i_rxd_tvalid,i_rxd_tlast,i_rd_valid, i_fifo_invalid    
    );

    // Monitor outputs
    $monitor("Time=%0t clk=%b rst=%b i_rxd_tvalid=%b i_rd_valid=%b i_rx_data=%h i_rxd_tlast=%b o_data=%h o_wr_cnt=%h o_rxd_tready=%b",
             $time, clk, rst, i_rxd_tvalid, i_rd_valid, i_rx_data, i_rxd_tlast, o_data, o_wr_cnt, o_rxd_tready);

  end

endmodule:fifo_tb
