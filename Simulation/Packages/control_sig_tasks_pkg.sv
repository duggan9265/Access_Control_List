/* Package contains some basic tasks for asserting and deasserting control signals for the FIFO*/


package control_sig_tasks_pkg;
  // Tasks for asserting and deasserting reset.
  task automatic reset (ref logic clk,rst); //called by reference, type of argument is logic, the argument i.e. signal is the rst.
    @(posedge clk);
    #1;
    rst = 0; //Rst is active low
  endtask
  ;

  task automatic rmv_reset (ref logic clk, rst); //deassert
    @(posedge clk);
    #1;
    rst = 1;
  endtask
  ;


  // Asserting/deasserting i_rxd_tvalid_high. Allow writing of data to FIFO.
  task automatic i_rxd_tvalid_high (ref logic i_rxd_tvalid); //assert
    i_rxd_tvalid = 1;
  endtask
  ;

  task automatic i_rxd_tvalid_low (ref logic i_rxd_tvalid); //deassert
    i_rxd_tvalid = 0;
  endtask
  ;

  // Asserting/deasserting i_rd_valid_high. To allow reading of data from FIFO.
  task automatic i_rd_valid_high (ref logic i_rd_valid); //assert
    i_rd_valid = 1;
  endtask
  ;

  task automatic i_rd_valid_low (ref logic i_rd_valid); //deassert
    i_rd_valid = 0;
  endtask
  ;

  // Asserting/deasserting i_rxd_tlast.
  task automatic i_rxd_tlast_high (ref logic i_rxd_tlast); //assert
    i_rxd_tlast = 1;
  endtask
  ;

  task automatic i_rxd_tlast_low (ref logic i_rxd_tlast); //deassert
    i_rxd_tlast = 0;
  endtask
  ;

  //// Tasks for asserting/deasserting i_fifo_invalid. To test if invalid causes output of all 0's.
  task automatic i_fifo_invalid_high (ref logic i_fifo_invalid); //assert
    i_fifo_invalid = 1;
  endtask
  ;

  task automatic i_fifo_invalid_low (ref logic i_fifo_invalid); //deassert
    i_fifo_invalid = 0;
  endtask
  ;

endpackage
