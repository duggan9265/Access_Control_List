/*
 
- This package is designed to create an ethernet frame that is written into and read from the FIFO.vhd etity, in order to
test the operation of the FIFO
 
- Adds padding to meet minimum Ethernet frame size (64 bytes) when required.
*/

package generate_etherframe_pkg;

  task automatic generate_full_ethernet_frame(
      ref logic clk,
      ref logic [31:0] i_rx_data,
      ref logic i_rxd_tvalid, //write control
      ref logic i_rx_tlast, //for when last byte is written
      ref logic i_rd_valid, // high to read data
      ref logic i_fifo_invalid, //low to read data
      input logic [47:0] dest_mac = 48'h001422012345,
      input logic [47:0] src_mac = 48'h0014226789AB,
      input logic [15:0] ether_type = 16'h0800
    );
    // Constants
    localparam MAX_PAYLOAD_SIZE = 1500;
    localparam HEADER_SIZE = 14; // MAC headers + EtherType
    localparam FRAME_SIZE = HEADER_SIZE + MAX_PAYLOAD_SIZE;

    // Frame storage
    logic [7:0] frame_data[FRAME_SIZE];
    int byte_idx;

    // 1. Build frame in memory
    // Destination MAC (6 bytes)
    frame_data[0] = dest_mac[47:40];
    frame_data[1] = dest_mac[39:32];
    frame_data[2] = dest_mac[31:24];
    frame_data[3] = dest_mac[23:16];
    frame_data[4] = dest_mac[15:8];
    frame_data[5] = dest_mac[7:0];

    // Source MAC (6 bytes)
    frame_data[6] = src_mac[47:40];
    frame_data[7] = src_mac[39:32];
    frame_data[8] = src_mac[31:24];
    frame_data[9] = src_mac[23:16];
    frame_data[10] = src_mac[15:8];
    frame_data[11] = src_mac[7:0];

    // EtherType (2 bytes)
    frame_data[12] = ether_type[15:8];
    frame_data[13] = ether_type[7:0];

    // Payload (1500 bytes)
    // Filled with incrementing pattern
    for (int i = 0; i < MAX_PAYLOAD_SIZE; i++)
    begin
      frame_data[HEADER_SIZE + i] = i % 256; //header size is 14
    end

    // Transmit frame 32 bits at a time
    i_rxd_tvalid = 1'b1;
    byte_idx = 0;

    while (byte_idx < FRAME_SIZE)
    begin
      logic [31:0] current_word;
      int bytes_remaining = FRAME_SIZE - byte_idx;

      // Construct 32-bit word
      case (bytes_remaining)
        1:
          current_word = {frame_data[byte_idx], 24'h0};
        2:
          current_word = {frame_data[byte_idx], frame_data[byte_idx+1], 16'h0};
        3:
          current_word = {frame_data[byte_idx], frame_data[byte_idx+1],
                          frame_data[byte_idx+2], 8'h0};
        default:
          current_word = {frame_data[byte_idx], frame_data[byte_idx+1],
                          frame_data[byte_idx+2], frame_data[byte_idx+3]};
      endcase

      @(posedge clk);
      i_rx_data = current_word;

      // Set tlast on last transfer
      if (bytes_remaining <= 4)
      begin
        i_rx_tlast = 1'b1;
      end

      byte_idx += 4;
    end

    // End of frame
    @(posedge clk);
    i_rxd_tvalid = 1'b0;
    i_rx_tlast = 1'b0;

    $display("[Jumbo Frame] Sent %0d byte Ethernet frame", FRAME_SIZE);
  endtask
endpackage
