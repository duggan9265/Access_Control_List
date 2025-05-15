/*
 
- This package is designed to create an ethernet frame that is written into and read from the FIFO.vhd etity, in order to
test the operation of the FIFO
 
- Adds padding to meet minimum Ethernet frame size (64 bytes) when required.
*/

package ether_frame_pp_pkg;

  task automatic generate_basic_ipv4_tcp_frame(
      ref logic clk, rst, i_rxd_tvalid, i_rxd_tlast,
      ref logic [31:0] i_rxd_tdata
    );

    logic [31:0] frame_words[0:8]; // total 8 words *UPDATE IF CHANGE NUMBER OF FRAME WORDS*
    logic [31:0] no_data = 32'hXXXX_XXXX;
    localparam int FRAME_WORD_COUNT = 9;
    localparam int REST_OF_FRAME = 200;// 380; //EThernet frame max is 380 words


    // Ethernet Header (Dest MAC + Src MAC + Ethertype = 14 bytes)
    frame_words[0] = 32'h8000_207A; // MAC dest [47:16]
    frame_words[1] = 32'h3F3E_8000; // MAC dest [15:0] + MAC src 1 [47:32]
    frame_words[2] = 32'h2020_3AAE; // MAC src 2 [31:0]
    frame_words[3] = 32'h0800_AAAA;  // IPv4 Ethertype + Version,IHL,DSCP,ECN

    // IPv4 Header (starts at byte 14)
    frame_words[4] = 32'hBBBB_BBBB; // Total Length, ID
    frame_words[5] = 32'hCCCC_9906; // Flags, Fragment offset,TTL, Protocol=6 (TCP)
    frame_words[6] = 32'hDDDD_DDDD; // Header checksum, source_address 1
    frame_words[7] = 32'hFFFF_BAAA; // Source address 2, dest add 1
    frame_words[8] = 32'hBBBB_CCCC; // dest add. 2 + ?
    
    
      i_rxd_tlast = 1'b0;
      //i_rxd_tdata = 32'h0000_0000;

      for (int i=0; i<FRAME_WORD_COUNT; i++)
      begin
        @(posedge clk);
        #1;
        i_rxd_tvalid = 1'b1;
        i_rxd_tdata = frame_words[i];
      end

      for (int i=FRAME_WORD_COUNT + 1; i<REST_OF_FRAME; i++)
      begin
        @(posedge clk);
        #1;
        if (i == REST_OF_FRAME - 100)
        begin
          i_rxd_tlast = 1'b1;
          #1;
          i_rxd_tdata = $urandom();
        end
        else if (i > REST_OF_FRAME - 100)
        begin
          i_rxd_tlast = 1'b0;
          i_rxd_tvalid = 1'b0;
          #1
           i_rxd_tdata = no_data;
        end
        else
        begin
          i_rxd_tdata = $urandom();
        end
      end

      @(posedge clk);
      i_rxd_tvalid = 1'b0;
      i_rxd_tlast = 1'b0;
      i_rxd_tdata = no_data;

      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
  endtask

endpackage
