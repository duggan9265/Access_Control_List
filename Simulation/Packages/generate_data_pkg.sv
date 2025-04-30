
package generate_data_pkg;

task automatic generate_ethernet_frame(
    ref logic clk,
    ref logic [31:0] i_rx_data, 
    ref logic i_rxd_tvalid, 
    ref logic rst, 
    ref logic i_rx_tlast);
    begin
        //declare the logic and set addresses/Ethertype
        logic [47:0] destination_mac;
        logic [47:0] source_mac;
        logic [15:0] ether_type;
        logic [15:0] pad_a, pad_b, pad_c, pad_d;
        destination_mac = 48'h0014_2201_2345;  // Example Destination MAC address
        source_mac = 48'h0014_2267_89AB;       // Example Source MAC address
        ether_type = 16'h0800;                 // EtherType for IPv4
        pad_a = 16'haabb;                      //Random payload
        pad_b = 16'hbbbb; 
        pad_c = 16'hcccc;
        pad_d = 16'hdddd;                      

        // Break the frame into 32-bit chunks. Write each clock cycle
        i_rxd_tvalid = 1;        

        @(posedge clk);        
        i_rx_data = {destination_mac[47:16]}; // First 32 bits: first part of Destination MAC
        
        @(posedge clk);        
        i_rx_data = {destination_mac[15:0], source_mac[47:32] };  // Next 32 bits: last 16 bits of Destination MAC
                                                   // 1st 16 bits of source MAC
        @(posedge clk);        
        i_rx_data = {source_mac[31:0]};       // last 32 bits of source MAC
        
        @(posedge clk);
        i_rx_data = {ether_type, pad_a};             // 16 bits for EtherType

        @(posedge clk);
        i_rx_data = {ether_type, pad_b};             // 16 bits for EtherType
        
        @(posedge clk);
        i_rx_data = {ether_type, pad_c};             // 16 bits for EtherType
        
        @(posedge clk);
        i_rx_data = {ether_type, pad_d};             // 16 bits for EtherType
        i_rx_tlast = 1;

        @(posedge clk);
        i_rxd_tvalid = 0; // Deassert tvalid after sending the last chunk
        i_rx_tlast = 0;
    end
endtask
endpackage