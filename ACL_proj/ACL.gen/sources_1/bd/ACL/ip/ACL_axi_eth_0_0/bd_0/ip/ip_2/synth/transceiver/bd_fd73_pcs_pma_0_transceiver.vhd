--------------------------------------------------------------------------------
-- Title      : Top-level Transceiver GT wrapper for Ethernet
-- Project    : 1G/2.5G Ethernet PCS/PMA or SGMII LogiCORE
--------------------------------------------------------------------------------
-- File       : bd_fd73_pcs_pma_0_transceiver.vhd
-- Author     : AMD
--------------------------------------------------------------------------------
-- (c) Copyright 2009 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of AMD, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 
--
--
--------------------------------------------------------------------------------
-- Description:  This is the top-level Transceiver GT wrapper. It
--               instantiates the lower-level wrappers produced by
--               the Series-7 FPGA Transceiver GT Wrapper Wizard.
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

library unisim;
use unisim.vcomponents.all;

library gtwizard_ultrascale_v1_7_17;
use gtwizard_ultrascale_v1_7_17.all;

entity bd_fd73_pcs_pma_0_transceiver is
generic
(
    EXAMPLE_SIMULATION                      : integer   := 0          -- Set to 1 for simulation
);
   port (
      mmcm_reset          : out   std_logic;
      data_valid          : in    std_logic;
      independent_clock   : in    std_logic;
      encommaalign        : in    std_logic;
      powerdown           : in    std_logic;
      usrclk              : in    std_logic;
      usrclk2             : in    std_logic;
      rxusrclk            : in    std_logic;
      rxusrclk2           : in    std_logic;
      txreset             : in    std_logic;
      txdata              : in    std_logic_vector (7 downto 0);
      txchardispmode      : in    std_logic;
      txchardispval       : in    std_logic;
      txcharisk           : in    std_logic;
      rxreset             : in    std_logic;
      rxchariscomma       : out   std_logic;
      rxcharisk           : out   std_logic;
      rxclkcorcnt         : out   std_logic_vector (2 downto 0);
      rxdata              : out   std_logic_vector (7 downto 0);
      rxdisperr           : out   std_logic;
      rxnotintable        : out   std_logic;
      rxrundisp           : out   std_logic;
      rxbuferr            : out   std_logic;
      txbuferr            : out   std_logic;
      plllkdet            : out   std_logic;
      txoutclk            : out   std_logic;
      rxoutclk            : out   std_logic;
      txn                 : out   std_logic;
      txp                 : out   std_logic;
      rxn                 : in    std_logic;
      rxp                 : in    std_logic;
      gtrefclk            : in    std_logic;
      gtpowergood         : out   std_logic;
      pmareset            : in    std_logic;
      mmcm_locked         : in    std_logic;
      resetdone           : out   std_logic;
      gt0_rxbyteisaligned_out   : out std_logic;
      gt0_rxbyterealign_out     : out std_logic;
      gt0_rxcommadet_out        : out std_logic;
      gt0_txpolarity_in         : in  std_logic;
      gt0_txdiffctrl_in         : in  std_logic_vector(4 downto 0);
      gt0_txinhibit_in          : in  std_logic;
      gt0_pcsrsvdin_in          : in  std_logic_vector(15 downto 0);
      gt0_txpostcursor_in       : in  std_logic_vector(4 downto 0);
      gt0_txprecursor_in        : in  std_logic_vector(4 downto 0);
      gt0_rxpolarity_in         : in  std_logic;
      gt0_rxdfelpmreset_in      : in  std_logic;
      gt0_rxlpmen_in            : in  std_logic;
      gt0_txprbssel_in          : in  std_logic_vector(2 downto 0);
      gt0_txprbsforceerr_in     : in  std_logic;
      gt0_rxprbscntreset_in     : in  std_logic;
      gt0_rxprbserr_out         : out std_logic;
      gt0_rxprbssel_in          : in  std_logic_vector(2 downto 0);
      gt0_loopback_in           : in  std_logic_vector(2 downto 0);
      gt0_txresetdone_out       : out std_logic;
      gt0_rxresetdone_out       : out std_logic;
      gt0_eyescanreset_in       : in  std_logic;
      gt0_eyescandataerror_out  : out std_logic;
      gt0_eyescantrigger_in     : in  std_logic;
      gt0_rxcdrhold_in          : in  std_logic;
      gt0_drpaddr_in            : in  std_logic_vector(9 downto 0);
      gt0_drpclk_in             : in  std_logic;
      gt0_drpdi_in              : in  std_logic_vector(15 downto 0);
      gt0_drpdo_out             : out std_logic_vector(15 downto 0);
      gt0_drpen_in              : in  std_logic;
      gt0_drprdy_out            : out std_logic;
      gt0_drpwe_in              : in  std_logic;
      gt0_txpmareset_in         : in  std_logic;
      gt0_txpcsreset_in         : in  std_logic;
      gt0_rxpmareset_in         : in  std_logic;
      gt0_rxpcsreset_in         : in  std_logic;
      gt0_rxbufreset_in         : in  std_logic;
      gt0_rxpmaresetdone_out    : out std_logic;
      gt0_rxbufstatus_out       : out std_logic_vector(2 downto 0);
      gt0_txbufstatus_out       : out std_logic_vector(1 downto 0);
      gt0_rxrate_in             : in  std_logic_vector(2 downto 0);
      gt0_cpllrefclksel_in      : in  std_logic_vector(2 downto 0);
      gt0_gtrefclk1_in          : in  std_logic;
      gt0_dmonitorout_out       : out std_logic_vector(15 downto 0)        
 
   );
end bd_fd73_pcs_pma_0_transceiver;


architecture wrapper of bd_fd73_pcs_pma_0_transceiver is


   attribute DowngradeIPIdentifiedWarnings: string;
   attribute DowngradeIPIdentifiedWarnings of wrapper : architecture is "yes";

 --------------------------------------------------------------------------
 -- Component declaration for the transceiver container
 --------------------------------------------------------------------------
     component bd_fd73_pcs_pma_0_gt
  port(
    cplllock_out : out std_logic_vector(0 downto 0);
    cpllrefclksel_in : in std_logic_vector(2 downto 0);
    dmonitorout_out : out std_logic_vector(15 downto 0);
    drpaddr_in : in std_logic_vector(9 downto 0);
    drpclk_in : in std_logic_vector(0 downto 0);
    drpdi_in : in std_logic_vector(15 downto 0);
    drpdo_out : out std_logic_vector(15 downto 0);
    drpen_in : in std_logic_vector(0 downto 0);
    drprdy_out : out std_logic_vector(0 downto 0);
    drpwe_in : in std_logic_vector(0 downto 0);
    eyescandataerror_out : out std_logic_vector(0 downto 0);
    eyescanreset_in : in std_logic_vector(0 downto 0);
    eyescantrigger_in : in std_logic_vector(0 downto 0);
    gthrxn_in : in std_logic_vector(0 downto 0);
    gthrxp_in : in std_logic_vector(0 downto 0);
    gthtxn_out : out std_logic_vector(0 downto 0);
    gthtxp_out : out std_logic_vector(0 downto 0);
    gtpowergood_out : out std_logic_vector(0 downto 0);
    gtrefclk0_in : in std_logic_vector(0 downto 0);
    gtrefclk1_in : in std_logic_vector(0 downto 0);
    gtwiz_buffbypass_rx_done_out : out std_logic_vector(0 downto 0);
    gtwiz_buffbypass_rx_error_out : out std_logic_vector(0 downto 0);
    gtwiz_buffbypass_rx_reset_in : in std_logic_vector(0 downto 0);
    gtwiz_buffbypass_rx_start_user_in : in std_logic_vector(0 downto 0);
    gtwiz_reset_all_in : in std_logic_vector(0 downto 0);
    gtwiz_reset_clk_freerun_in : in std_logic_vector(0 downto 0);
    gtwiz_reset_rx_cdr_stable_out : out std_logic_vector(0 downto 0);
    gtwiz_reset_rx_datapath_in : in std_logic_vector(0 downto 0);
    gtwiz_reset_rx_done_out : out std_logic_vector(0 downto 0);
    gtwiz_reset_rx_pll_and_datapath_in : in std_logic_vector(0 downto 0);
    gtwiz_reset_tx_datapath_in : in std_logic_vector(0 downto 0);
    gtwiz_reset_tx_done_out : out std_logic_vector(0 downto 0);
    gtwiz_reset_tx_pll_and_datapath_in : in std_logic_vector(0 downto 0);
    gtwiz_userclk_rx_active_in : in std_logic_vector(0 downto 0);
    gtwiz_userclk_tx_active_in : in std_logic_vector(0 downto 0);
    gtwiz_userclk_tx_reset_in : in std_logic_vector(0 downto 0);
    gtwiz_userdata_rx_out : out std_logic_vector(15 downto 0);
    gtwiz_userdata_tx_in : in std_logic_vector(15 downto 0);
    loopback_in : in std_logic_vector(2 downto 0);
    pcsrsvdin_in : in std_logic_vector(15 downto 0);
    rx8b10ben_in : in std_logic_vector(0 downto 0);
    rxbyteisaligned_out : out std_logic_vector(0 downto 0);
    rxbyterealign_out : out std_logic_vector(0 downto 0);
    rxcdrhold_in : in std_logic_vector(0 downto 0);
    rxcommadet_out : out std_logic_vector(0 downto 0);
    rxcommadeten_in : in std_logic_vector(0 downto 0);
    rxctrl0_out : out std_logic_vector(15 downto 0);
    rxctrl1_out : out std_logic_vector(15 downto 0);
    rxctrl2_out : out std_logic_vector(7 downto 0);
    rxctrl3_out : out std_logic_vector(7 downto 0);
    rxdfelpmreset_in : in std_logic_vector(0 downto 0);
    rxlpmen_in : in std_logic_vector(0 downto 0);
    rxmcommaalignen_in : in std_logic_vector(0 downto 0);
    rxoutclk_out : out std_logic_vector(0 downto 0);
    rxpcommaalignen_in : in std_logic_vector(0 downto 0);
    rxpcsreset_in : in std_logic_vector(0 downto 0);
    rxpd_in : in std_logic_vector(1 downto 0);
    rxpmareset_in : in std_logic_vector(0 downto 0);
    rxpmaresetdone_out : out std_logic_vector(0 downto 0);
    rxpolarity_in : in std_logic_vector(0 downto 0);
    rxprbscntreset_in : in std_logic_vector(0 downto 0);
    rxprbserr_out : out std_logic_vector(0 downto 0);
    rxprbssel_in : in std_logic_vector(3 downto 0);
    rxrate_in : in std_logic_vector(2 downto 0);
    rxresetdone_out : out std_logic_vector(0 downto 0);
    rxusrclk2_in : in std_logic_vector(0 downto 0);
    rxusrclk_in : in std_logic_vector(0 downto 0);
    tx8b10ben_in : in std_logic_vector(0 downto 0);
    txbufstatus_out : out std_logic_vector(1 downto 0);
    txctrl0_in : in std_logic_vector(15 downto 0);
    txctrl1_in : in std_logic_vector(15 downto 0);
    txctrl2_in : in std_logic_vector(7 downto 0);
    txdiffctrl_in : in std_logic_vector(4 downto 0);
    txelecidle_in : in std_logic_vector(0 downto 0);
    txinhibit_in : in std_logic_vector(0 downto 0);
    txoutclk_out : out std_logic_vector(0 downto 0);
    txpcsreset_in : in std_logic_vector(0 downto 0);
    txpd_in : in std_logic_vector(1 downto 0);
    txpmareset_in : in std_logic_vector(0 downto 0);
    txpmaresetdone_out : out std_logic_vector(0 downto 0);
    txpolarity_in : in std_logic_vector(0 downto 0);
    txpostcursor_in : in std_logic_vector(4 downto 0);
    txprbsforceerr_in : in std_logic_vector(0 downto 0);
    txprbssel_in : in std_logic_vector(3 downto 0);
    txprecursor_in : in std_logic_vector(4 downto 0);
    txprgdivresetdone_out : out std_logic_vector(0 downto 0);
    txresetdone_out : out std_logic_vector(0 downto 0);
    txusrclk2_in : in std_logic_vector(0 downto 0);
    txusrclk_in : in std_logic_vector(0 downto 0)
  );  end component;


   -----------------------------------------------------------------------------
   -- Component Declaration for the Receiver Elastic Buffer
   -----------------------------------------------------------------------------

  component bd_fd73_pcs_pma_0_rx_elastic_buffer
   port (
      -- Signals received from the Transceiver on RXRECCLK.
      rxrecclk                  : in  std_logic;
      rxrecreset                : in  std_logic;
      rxchariscomma_rec         : in  std_logic_vector(1 downto 0);
      rxcharisk_rec             : in  std_logic_vector(1 downto 0);
      rxdisperr_rec             : in  std_logic_vector(1 downto 0);
      rxnotintable_rec          : in  std_logic_vector(1 downto 0);
      rxrundisp_rec             : in  std_logic_vector(1 downto 0);
      rxdata_rec                : in  std_logic_vector(15 downto 0);

      -- Signals reclocked onto RXUSRCLK2.
      rxusrclk2                 : in  std_logic;
      rxreset                   : in  std_logic;
      rxchariscomma_usr         : out std_logic;
      rxcharisk_usr             : out std_logic;
      rxdisperr_usr             : out std_logic;
      rxnotintable_usr          : out std_logic;
      rxrundisp_usr             : out std_logic;
      rxclkcorcnt_usr           : out std_logic_vector(2 downto 0);
      rxbuferr                  : out std_logic;
      rxdata_usr                : out std_logic_vector(7 downto 0)
   );
  end component;




   -----------------------------------------------------------------------------
   -- Component declaration for the reset synchroniser
   -----------------------------------------------------------------------------
   component bd_fd73_pcs_pma_0_reset_sync
   port (
      reset_in                   : in  std_logic;
      clk                        : in  std_logic;
      reset_out                  : out std_logic
   );
   end component;


   -----------------------------------------------------------------------------
   -- Signal declarations
   -----------------------------------------------------------------------------

   signal cplllock               : std_logic;

   signal txbufstatus            : std_logic_vector(1 downto 0);
   signal txbufstatus_reg        : std_logic_vector(1 downto 0);

    -- signal used to control sampling during bus width conversions
   signal toggle                 : std_logic := '0';

   -- signals reclocked onto the 62.5MHz userclk source of the GT transceiver
   signal rxreset_rec            : std_logic;

   -- Register transmitter signals from the core
   signal txdata_reg            : std_logic_vector (7 downto 0);
   signal txchardispmode_reg    : std_logic;
   signal txchardispval_reg     : std_logic;
   signal txcharisk_reg         : std_logic;

   -- Signals for data bus width doubling on the transmitter path from the core
   -- to the GT transceiver
   signal txdata_double          : std_logic_vector (15 downto 0);
   signal txchardispmode_double  : std_logic_vector (1 downto 0);
   signal txchardispval_double   : std_logic_vector (1 downto 0);
   signal txcharisk_double       : std_logic_vector (1 downto 0);

   -- Double width signals reclocked onto the 62.5MHz userclk source of the GT
   -- transceiver
   signal txdata_int             : std_logic_vector (15 downto 0);
   signal txchardispmode_int     : std_logic_vector (1 downto 0);
   signal txchardispval_int      : std_logic_vector (1 downto 0);
   signal txcharisk_int          : std_logic_vector (1 downto 0);

   -- Signals for GT data reception
   signal rxchariscomma_rec      : std_logic_vector(1 downto 0);
   signal rxnotintable_rec       : std_logic_vector(1 downto 0);
   signal rxcharisk_rec          : std_logic_vector(1 downto 0);
   signal rxdisperr_rec          : std_logic_vector(1 downto 0);
   signal rxdata_rec             : std_logic_vector(15 downto 0);
   signal encommaalign_rec       : std_logic;

   -- Signals for powerdown
   signal txpowerdown_int        : std_logic_vector(1 downto 0);
   signal rxpowerdown_int        : std_logic_vector(1 downto 0);
   signal txpowerdown_reg        : std_logic := '0';
   signal txpowerdown_double     : std_logic := '0';
   signal txpowerdown            : std_logic := '0';
   signal rxpowerdown_reg        : std_logic := '0';
   signal rxresetdone_out_d1  : std_logic; 
   signal gtwiz_buffbypass_rx_start_user_in_d1 : std_logic;
   signal gtwiz_buffbypass_rx_start_user_in_d2 : std_logic;
   signal gtwiz_buffbypass_rx_start_user_in_d3 : std_logic;
   signal gtwiz_buffbypass_rx_start_user_in_d4 : std_logic;
   signal gtwiz_buffbypass_rx_start_user_in_d5 : std_logic;
   signal gtwiz_buffbypass_rx_start_user_in_d6 : std_logic;

  signal cplllock_out : std_logic;
  signal cplllock_out_int : std_logic_vector(0 downto 0);
  signal cpllrefclksel_in : std_logic_vector(2 downto 0);
  signal dmonitorout_out : std_logic_vector(15 downto 0);
  signal drpaddr_in : std_logic_vector(9 downto 0);
  signal drpclk_in : std_logic;
  signal drpclk_in_int : std_logic_vector(0 downto 0);
  signal drpdi_in : std_logic_vector(15 downto 0);
  signal drpdo_out : std_logic_vector(15 downto 0);
  signal drpen_in : std_logic;
  signal drpen_in_int : std_logic_vector(0 downto 0);
  signal drprdy_out : std_logic;
  signal drprdy_out_int : std_logic_vector(0 downto 0);
  signal drpwe_in : std_logic;
  signal drpwe_in_int : std_logic_vector(0 downto 0);
  signal eyescandataerror_out : std_logic;
  signal eyescandataerror_out_int : std_logic_vector(0 downto 0);
  signal eyescanreset_in : std_logic;
  signal eyescanreset_in_int : std_logic_vector(0 downto 0);
  signal eyescantrigger_in : std_logic;
  signal eyescantrigger_in_int : std_logic_vector(0 downto 0);
  signal gthrxn_in : std_logic;
  signal gthrxn_in_int : std_logic_vector(0 downto 0);
  signal gthrxp_in : std_logic;
  signal gthrxp_in_int : std_logic_vector(0 downto 0);
  signal gthtxn_out : std_logic;
  signal gthtxn_out_int : std_logic_vector(0 downto 0);
  signal gthtxp_out : std_logic;
  signal gthtxp_out_int : std_logic_vector(0 downto 0);
  signal gtpowergood_out : std_logic;
  signal gtpowergood_out_int : std_logic_vector(0 downto 0);
  signal gtrefclk0_in : std_logic;
  signal gtrefclk0_in_int : std_logic_vector(0 downto 0);
  signal gtrefclk1_in : std_logic;
  signal gtrefclk1_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_buffbypass_rx_done_out : std_logic;
  signal gtwiz_buffbypass_rx_done_out_int : std_logic_vector(0 downto 0);
  signal gtwiz_buffbypass_rx_error_out : std_logic;
  signal gtwiz_buffbypass_rx_error_out_int : std_logic_vector(0 downto 0);
  signal gtwiz_buffbypass_rx_reset_in : std_logic;
  signal gtwiz_buffbypass_rx_reset_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_buffbypass_rx_start_user_in : std_logic;
  signal gtwiz_buffbypass_rx_start_user_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_reset_all_in : std_logic;
  signal gtwiz_reset_all_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_reset_clk_freerun_in : std_logic;
  signal gtwiz_reset_clk_freerun_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_reset_rx_cdr_stable_out : std_logic;
  signal gtwiz_reset_rx_cdr_stable_out_int : std_logic_vector(0 downto 0);
  signal gtwiz_reset_rx_datapath_in : std_logic;
  signal gtwiz_reset_rx_datapath_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_reset_rx_done_out : std_logic;
  signal gtwiz_reset_rx_done_out_int : std_logic_vector(0 downto 0);
  signal gtwiz_reset_rx_pll_and_datapath_in : std_logic;
  signal gtwiz_reset_rx_pll_and_datapath_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_reset_tx_datapath_in : std_logic;
  signal gtwiz_reset_tx_datapath_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_reset_tx_done_out : std_logic;
  signal gtwiz_reset_tx_done_out_int : std_logic_vector(0 downto 0);
  signal gtwiz_reset_tx_pll_and_datapath_in : std_logic;
  signal gtwiz_reset_tx_pll_and_datapath_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_userclk_rx_active_in : std_logic;
  signal gtwiz_userclk_rx_active_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_userclk_tx_active_in : std_logic;
  signal gtwiz_userclk_tx_active_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_userclk_tx_reset_in : std_logic;
  signal gtwiz_userclk_tx_reset_in_int : std_logic_vector(0 downto 0);
  signal gtwiz_userdata_rx_out : std_logic_vector(15 downto 0);
  signal gtwiz_userdata_tx_in : std_logic_vector(15 downto 0);
  signal loopback_in : std_logic_vector(2 downto 0);
  signal pcsrsvdin_in : std_logic_vector(15 downto 0);
  signal rx8b10ben_in : std_logic;
  signal rx8b10ben_in_int : std_logic_vector(0 downto 0);
  signal rxbyteisaligned_out : std_logic;
  signal rxbyteisaligned_out_int : std_logic_vector(0 downto 0);
  signal rxbyterealign_out : std_logic;
  signal rxbyterealign_out_int : std_logic_vector(0 downto 0);
  signal rxcdrhold_in : std_logic;
  signal rxcdrhold_in_int : std_logic_vector(0 downto 0);
  signal rxcommadet_out : std_logic;
  signal rxcommadet_out_int : std_logic_vector(0 downto 0);
  signal rxcommadeten_in : std_logic;
  signal rxcommadeten_in_int : std_logic_vector(0 downto 0);
  signal rxctrl0_out : std_logic_vector(15 downto 0);
  signal rxctrl1_out : std_logic_vector(15 downto 0);
  signal rxctrl2_out : std_logic_vector(7 downto 0);
  signal rxctrl3_out : std_logic_vector(7 downto 0);
  signal rxdfelpmreset_in : std_logic;
  signal rxdfelpmreset_in_int : std_logic_vector(0 downto 0);
  signal rxlpmen_in : std_logic;
  signal rxlpmen_in_int : std_logic_vector(0 downto 0);
  signal rxmcommaalignen_in : std_logic;
  signal rxmcommaalignen_in_int : std_logic_vector(0 downto 0);
  signal rxoutclk_out : std_logic;
  signal rxoutclk_out_int : std_logic_vector(0 downto 0);
  signal rxpcommaalignen_in : std_logic;
  signal rxpcommaalignen_in_int : std_logic_vector(0 downto 0);
  signal rxpcsreset_in : std_logic;
  signal rxpcsreset_in_int : std_logic_vector(0 downto 0);
  signal rxpd_in : std_logic_vector(1 downto 0);
  signal rxpmareset_in : std_logic;
  signal rxpmareset_in_int : std_logic_vector(0 downto 0);
  signal rxpmaresetdone_out : std_logic;
  signal rxpmaresetdone_out_int : std_logic_vector(0 downto 0);
  signal rxpolarity_in : std_logic;
  signal rxpolarity_in_int : std_logic_vector(0 downto 0);
  signal rxprbscntreset_in : std_logic;
  signal rxprbscntreset_in_int : std_logic_vector(0 downto 0);
  signal rxprbserr_out : std_logic;
  signal rxprbserr_out_int : std_logic_vector(0 downto 0);
  signal rxprbssel_in : std_logic_vector(3 downto 0);
  signal rxrate_in : std_logic_vector(2 downto 0);
  signal rxresetdone_out : std_logic;
  signal rxresetdone_out_int : std_logic_vector(0 downto 0);
  signal rxusrclk2_in : std_logic;
  signal rxusrclk2_in_int : std_logic_vector(0 downto 0);
  signal rxusrclk_in : std_logic;
  signal rxusrclk_in_int : std_logic_vector(0 downto 0);
  signal tx8b10ben_in : std_logic;
  signal tx8b10ben_in_int : std_logic_vector(0 downto 0);
  signal txbufstatus_out : std_logic_vector(1 downto 0);
  signal txctrl0_in : std_logic_vector(15 downto 0);
  signal txctrl1_in : std_logic_vector(15 downto 0);
  signal txctrl2_in : std_logic_vector(7 downto 0);
  signal txdiffctrl_in : std_logic_vector(4 downto 0);
  signal txelecidle_in : std_logic;
  signal txelecidle_in_int : std_logic_vector(0 downto 0);
  signal txinhibit_in : std_logic;
  signal txinhibit_in_int : std_logic_vector(0 downto 0);
  signal txoutclk_out : std_logic;
  signal txoutclk_out_int : std_logic_vector(0 downto 0);
  signal txpcsreset_in : std_logic;
  signal txpcsreset_in_int : std_logic_vector(0 downto 0);
  signal txpd_in : std_logic_vector(1 downto 0);
  signal txpmareset_in : std_logic;
  signal txpmareset_in_int : std_logic_vector(0 downto 0);
  signal txpmaresetdone_out : std_logic;
  signal txpmaresetdone_out_int : std_logic_vector(0 downto 0);
  signal txpolarity_in : std_logic;
  signal txpolarity_in_int : std_logic_vector(0 downto 0);
  signal txpostcursor_in : std_logic_vector(4 downto 0);
  signal txprbsforceerr_in : std_logic;
  signal txprbsforceerr_in_int : std_logic_vector(0 downto 0);
  signal txprbssel_in : std_logic_vector(3 downto 0);
  signal txprecursor_in : std_logic_vector(4 downto 0);
  signal txprgdivresetdone_out : std_logic;
  signal txprgdivresetdone_out_int : std_logic_vector(0 downto 0);
  signal txresetdone_out : std_logic;
  signal txresetdone_out_int : std_logic_vector(0 downto 0);
  signal txusrclk2_in : std_logic;
  signal txusrclk2_in_int : std_logic_vector(0 downto 0);
  signal txusrclk_in : std_logic;
  signal txusrclk_in_int : std_logic_vector(0 downto 0);


begin

   txpowerdown_int <= txpowerdown & txpowerdown;
   rxpowerdown_int <= rxpowerdown_reg & rxpowerdown_reg;
   -- rxpowerdown given on usrclk2 since since recclk stops at powerdown hence there will be an issue in clearing of powerdown

  process (rxusrclk2)
  begin
    if rxusrclk2'event and rxusrclk2= '1' then
      rxresetdone_out_d1 <=  rxresetdone_out;
      gtwiz_buffbypass_rx_start_user_in_d1    <= rxresetdone_out and (not rxresetdone_out_d1);
      gtwiz_buffbypass_rx_start_user_in_d2    <= gtwiz_buffbypass_rx_start_user_in_d1;
      gtwiz_buffbypass_rx_start_user_in_d3    <= gtwiz_buffbypass_rx_start_user_in_d2;
      gtwiz_buffbypass_rx_start_user_in_d4    <= gtwiz_buffbypass_rx_start_user_in_d3;
      gtwiz_buffbypass_rx_start_user_in_d5    <= gtwiz_buffbypass_rx_start_user_in_d4;
      gtwiz_buffbypass_rx_start_user_in_d6    <= gtwiz_buffbypass_rx_start_user_in_d5;
    end if;
  end process;   
   -----------------------------------------------------------------------------
   -- The core works from a 125MHz clock source, the GT transceiver fabric
   -- interface works from a 62.5MHz clock source.  The following signals
   -- sourced by the core therefore need to be reclocked onto the 62.5MHz
   -- clock
   -----------------------------------------------------------------------------

   -- Reclock encommaalign
   reclock_encommaalign : bd_fd73_pcs_pma_0_reset_sync
   port map(
      clk       => rxusrclk2,
      reset_in  => encommaalign,
      reset_out => encommaalign_rec
   );


   -- Reclock rxreset
   reclock_rxreset : bd_fd73_pcs_pma_0_reset_sync
   port map(
      clk       => rxusrclk2,
      reset_in  => rxreset,
      reset_out => rxreset_rec
   );


   -----------------------------------------------------------------------------
   -- toggle signal used to control sampling during bus width conversions
   -----------------------------------------------------------------------------

  process (usrclk2)
  begin
    if usrclk2'event and usrclk2= '1' then
        toggle      <= not toggle;
    end if;
  end process;



   -----------------------------------------------------------------------------
   -- The core works from a 125MHz clock source, the GT transceiver fabric
   -- interface works from a 62.5MHz clock source.  The following signals
   -- sourced by the core therefore need to be converted to double width, then
   -- resampled on the GT's 62.5MHz clock
   -----------------------------------------------------------------------------

  -- Reclock the transmitter signals
  process (usrclk2)
  begin
    if usrclk2'event and usrclk2= '1' then
      if txreset = '1' then
        txdata_reg         <= X"00";
        txchardispmode_reg <= '0';
        txchardispval_reg  <= '0';
        txcharisk_reg      <= '0';
        txpowerdown_reg    <= '0';
      else
        txdata_reg         <= txdata;
        txchardispmode_reg <= txchardispmode;
        txchardispval_reg  <= txchardispval;
        txcharisk_reg      <= txcharisk;
        txpowerdown_reg    <= powerdown;
      end if;
    end if;
  end process;


  -- Double the data width
  process (usrclk2)
  begin
    if usrclk2'event and usrclk2= '1' then
      if txreset = '1' then
        txdata_double                <= X"0000";
        txchardispmode_double        <= "00";
        txchardispval_double         <= "00";
        txcharisk_double             <= "00";
        txpowerdown_double           <= '0';
      else
        if toggle = '0' then
          txdata_double(7 downto 0)  <= txdata_reg;
          txchardispmode_double(0)   <= txchardispmode_reg;
          txchardispval_double(0)    <= txchardispval_reg;
          txcharisk_double(0)        <= txcharisk_reg;
          txdata_double(15 downto 8) <= txdata;
          txchardispmode_double(1)   <= txchardispmode;
          txchardispval_double(1)    <= txchardispval;
          txcharisk_double(1)        <= txcharisk;
        end if;
        txpowerdown_double           <= txpowerdown_reg;
      end if;
    end if;
  end process;


  -- Cross the clock domain.  Both clock domains are frequency related and are
  -- derived from the same MMCM: the AMD tools will accont for this
  process (usrclk)
  begin
    if usrclk'event and usrclk= '1' then
      txdata_int         <= txdata_double;
      txchardispmode_int <= txchardispmode_double;
      txchardispval_int  <= txchardispval_double;
      txcharisk_int      <= txcharisk_double;
      txbufstatus_reg    <= txbufstatus;
      txpowerdown        <= txpowerdown_double;
    end if;
  end process;
 gtwiz_buffbypass_rx_reset_in         <= not rxresetdone_out_d1;
 gtwiz_buffbypass_rx_start_user_in    <= gtwiz_buffbypass_rx_start_user_in_d6;
 mmcm_reset                           <= not cplllock_out;
 gtwiz_userclk_tx_active_in           <= mmcm_locked;
 gtwiz_userclk_tx_reset_in            <= '0';
 gtwiz_userclk_rx_active_in           <= rxpmaresetdone_out;
 gtwiz_reset_clk_freerun_in           <= independent_clock;
 gtwiz_reset_all_in                   <= pmareset;
 gtwiz_reset_tx_pll_and_datapath_in   <= '0'; 
 gtwiz_reset_tx_datapath_in           <= txreset and gtwiz_reset_tx_done_out;
 gtwiz_reset_rx_pll_and_datapath_in   <= '0';
 gtwiz_reset_rx_datapath_in           <= rxreset and gtwiz_reset_rx_done_out;
 gthrxn_in                            <= rxn;
 gthrxp_in                            <= rxp;
 gtrefclk0_in                         <= gtrefclk;
 loopback_in                          <= gt0_loopback_in;
 rx8b10ben_in                         <= '1';
 rxcommadeten_in                      <= '1';
 rxmcommaalignen_in                   <= encommaalign_rec;
 rxpcommaalignen_in                   <= encommaalign_rec;
 rxpd_in                              <= rxpowerdown_int;
 rxusrclk_in                          <= rxusrclk;
-- portmapping rxuserclk2 to rxuserclk because when rx_gmii_clk_src is RXOUTCLK rxuserclk should be connected to
-- rxuserclk2 , in all other modes rxuserclk and rxuserclk2 are essentially same
 rxusrclk2_in                         <= rxusrclk;
 tx8b10ben_in                         <= '1';
 txdiffctrl_in                        <= gt0_txdiffctrl_in;
 txinhibit_in                         <= gt0_txinhibit_in;
 pcsrsvdin_in                         <= gt0_pcsrsvdin_in;
 txctrl0_in(1 downto 0)               <= txchardispval_int;
 txctrl1_in(1 downto 0)               <= txchardispmode_int;
 txctrl2_in(1 downto 0)               <= txcharisk_int;
 txctrl0_in(15 downto 2)              <= "00000000000000";
 txctrl1_in(15 downto 2)              <= "00000000000000";
 txctrl2_in(7 downto 2)               <= "000000";
 gtwiz_userdata_tx_in                 <= txdata_int;
 txelecidle_in                        <= txpowerdown_int(0);
 txpd_in                              <= txpowerdown_int;
 txusrclk_in                          <= usrclk;
 txusrclk2_in                         <= usrclk;
 cplllock                             <= cplllock_out;
 txn                                  <= gthtxn_out;
 txp                                  <= gthtxp_out;
 txbufstatus                          <= txbufstatus_out;
 rxcharisk_rec                        <= rxctrl0_out(1 downto 0);
 rxdisperr_rec                        <= rxctrl1_out(1 downto 0);
 rxchariscomma_rec                    <= rxctrl2_out(1 downto 0);
 rxnotintable_rec                     <= rxctrl3_out(1 downto 0);
 rxdata_rec                           <= gtwiz_userdata_rx_out;
 rxoutclk                             <= rxoutclk_out;
 txoutclk                             <= txoutclk_out;
 gtpowergood                          <= gtpowergood_out;
 resetdone                            <= gtwiz_reset_tx_done_out and gtwiz_reset_rx_done_out and gtwiz_buffbypass_rx_done_out;

 gt0_rxbyteisaligned_out              <= rxbyteisaligned_out;
 gt0_rxbyterealign_out                <= rxbyterealign_out;
 gt0_rxcommadet_out                   <= rxcommadet_out;
 txpolarity_in                        <= gt0_txpolarity_in;    
 txpostcursor_in                      <= gt0_txpostcursor_in;    
 txprecursor_in                       <= gt0_txprecursor_in;    
 rxpolarity_in                        <= gt0_rxpolarity_in;    
 rxdfelpmreset_in                     <= gt0_rxdfelpmreset_in;    
 rxlpmen_in                           <= gt0_rxlpmen_in;    
 txprbssel_in(2 downto 0)             <= gt0_txprbssel_in;    
 txprbsforceerr_in                    <= gt0_txprbsforceerr_in;    
 rxprbscntreset_in                    <= gt0_rxprbscntreset_in;    
 gt0_rxprbserr_out                    <= rxprbserr_out;    
 rxprbssel_in(2 downto 0)             <= gt0_rxprbssel_in;    
 rxprbssel_in(3)                      <= '0';
 txprbssel_in(3)                      <= '0';
 gt0_txresetdone_out                  <=  txresetdone_out;    
 gt0_rxresetdone_out                  <=  rxresetdone_out;    
 eyescanreset_in                      <=  gt0_eyescanreset_in;    
 gt0_eyescandataerror_out             <=  eyescandataerror_out;   
 eyescantrigger_in                    <=  gt0_eyescantrigger_in;    
 rxcdrhold_in                         <=  gt0_rxcdrhold_in;    
 drpaddr_in                           <=  gt0_drpaddr_in;
 drpclk_in                            <=  gt0_drpclk_in;
 drpdi_in                             <=  gt0_drpdi_in;
 gt0_drpdo_out                        <=  drpdo_out;
 drpen_in                             <=  gt0_drpen_in;
 gt0_drprdy_out                       <=  drprdy_out;
 drpwe_in                             <=  gt0_drpwe_in;    
 txpmareset_in                        <= gt0_txpmareset_in;   
 txpcsreset_in                        <= gt0_txpcsreset_in;   
 rxpmareset_in                        <= gt0_rxpmareset_in;   
 rxpcsreset_in                        <= gt0_rxpcsreset_in;   
 gt0_rxpmaresetdone_out               <= rxpmaresetdone_out;   
 gt0_rxbufstatus_out                  <= "000";   
 gt0_txbufstatus_out                  <= txbufstatus_out;   
 rxrate_in                            <= gt0_rxrate_in;   
 cpllrefclksel_in                     <= gt0_cpllrefclksel_in;
 gtrefclk1_in                         <= gt0_gtrefclk1_in;
 gt0_dmonitorout_out                  <= dmonitorout_out;

 
  -- Map single bits to unit-length vectors...
  cplllock_out <= cplllock_out_int(0);
  drpclk_in_int(0) <= drpclk_in;
  drpen_in_int(0) <= drpen_in;
  drprdy_out <= drprdy_out_int(0);
  drpwe_in_int(0) <= drpwe_in;
  eyescandataerror_out <= eyescandataerror_out_int(0);
  eyescanreset_in_int(0) <= eyescanreset_in;
  eyescantrigger_in_int(0) <= eyescantrigger_in;
  gthrxn_in_int(0) <= gthrxn_in;
  gthrxp_in_int(0) <= gthrxp_in;
  gthtxn_out <= gthtxn_out_int(0);
  gthtxp_out <= gthtxp_out_int(0);
  gtpowergood_out <= gtpowergood_out_int(0);
  gtrefclk0_in_int(0) <= gtrefclk0_in;
  gtrefclk1_in_int(0) <= gtrefclk1_in;
  gtwiz_buffbypass_rx_done_out <= gtwiz_buffbypass_rx_done_out_int(0);
  gtwiz_buffbypass_rx_error_out <= gtwiz_buffbypass_rx_error_out_int(0);
  gtwiz_buffbypass_rx_reset_in_int(0) <= gtwiz_buffbypass_rx_reset_in;
  gtwiz_buffbypass_rx_start_user_in_int(0) <= gtwiz_buffbypass_rx_start_user_in;
  gtwiz_reset_all_in_int(0) <= gtwiz_reset_all_in;
  gtwiz_reset_clk_freerun_in_int(0) <= gtwiz_reset_clk_freerun_in;
  gtwiz_reset_rx_cdr_stable_out <= gtwiz_reset_rx_cdr_stable_out_int(0);
  gtwiz_reset_rx_datapath_in_int(0) <= gtwiz_reset_rx_datapath_in;
  gtwiz_reset_rx_done_out <= gtwiz_reset_rx_done_out_int(0);
  gtwiz_reset_rx_pll_and_datapath_in_int(0) <= gtwiz_reset_rx_pll_and_datapath_in;
  gtwiz_reset_tx_datapath_in_int(0) <= gtwiz_reset_tx_datapath_in;
  gtwiz_reset_tx_done_out <= gtwiz_reset_tx_done_out_int(0);
  gtwiz_reset_tx_pll_and_datapath_in_int(0) <= gtwiz_reset_tx_pll_and_datapath_in;
  gtwiz_userclk_rx_active_in_int(0) <= gtwiz_userclk_rx_active_in;
  gtwiz_userclk_tx_active_in_int(0) <= gtwiz_userclk_tx_active_in;
  gtwiz_userclk_tx_reset_in_int(0) <= gtwiz_userclk_tx_reset_in;
  rx8b10ben_in_int(0) <= rx8b10ben_in;
  rxbyteisaligned_out <= rxbyteisaligned_out_int(0);
  rxbyterealign_out <= rxbyterealign_out_int(0);
  rxcdrhold_in_int(0) <= rxcdrhold_in;
  rxcommadet_out <= rxcommadet_out_int(0);
  rxcommadeten_in_int(0) <= rxcommadeten_in;
  rxdfelpmreset_in_int(0) <= rxdfelpmreset_in;
  rxlpmen_in_int(0) <= rxlpmen_in;
  rxmcommaalignen_in_int(0) <= rxmcommaalignen_in;
  rxoutclk_out <= rxoutclk_out_int(0);
  rxpcommaalignen_in_int(0) <= rxpcommaalignen_in;
  rxpcsreset_in_int(0) <= rxpcsreset_in;
  rxpmareset_in_int(0) <= rxpmareset_in;
  rxpmaresetdone_out <= rxpmaresetdone_out_int(0);
  rxpolarity_in_int(0) <= rxpolarity_in;
  rxprbscntreset_in_int(0) <= rxprbscntreset_in;
  rxprbserr_out <= rxprbserr_out_int(0);
  rxresetdone_out <= rxresetdone_out_int(0);
  rxusrclk2_in_int(0) <= rxusrclk2_in;
  rxusrclk_in_int(0) <= rxusrclk_in;
  tx8b10ben_in_int(0) <= tx8b10ben_in;
  txelecidle_in_int(0) <= txelecidle_in;
  txinhibit_in_int(0) <= txinhibit_in;
  txoutclk_out <= txoutclk_out_int(0);
  txpcsreset_in_int(0) <= txpcsreset_in;
  txpmareset_in_int(0) <= txpmareset_in;
  txpmaresetdone_out <= txpmaresetdone_out_int(0);
  txpolarity_in_int(0) <= txpolarity_in;
  txprbsforceerr_in_int(0) <= txprbsforceerr_in;
  txprgdivresetdone_out <= txprgdivresetdone_out_int(0);
  txresetdone_out <= txresetdone_out_int(0);
  txusrclk2_in_int(0) <= txusrclk2_in;
  txusrclk_in_int(0) <= txusrclk_in;


  -- Instance of GT
  bd_fd73_pcs_pma_0_gt_i : bd_fd73_pcs_pma_0_gt
  port map(
    cplllock_out => cplllock_out_int,
    cpllrefclksel_in => cpllrefclksel_in,
    dmonitorout_out => dmonitorout_out,
    drpaddr_in => drpaddr_in,
    drpclk_in => drpclk_in_int,
    drpdi_in => drpdi_in,
    drpdo_out => drpdo_out,
    drpen_in => drpen_in_int,
    drprdy_out => drprdy_out_int,
    drpwe_in => drpwe_in_int,
    eyescandataerror_out => eyescandataerror_out_int,
    eyescanreset_in => eyescanreset_in_int,
    eyescantrigger_in => eyescantrigger_in_int,
    gthrxn_in => gthrxn_in_int,
    gthrxp_in => gthrxp_in_int,
    gthtxn_out => gthtxn_out_int,
    gthtxp_out => gthtxp_out_int,
    gtpowergood_out => gtpowergood_out_int,
    gtrefclk0_in => gtrefclk0_in_int,
    gtrefclk1_in => gtrefclk1_in_int,
    gtwiz_buffbypass_rx_done_out => gtwiz_buffbypass_rx_done_out_int,
    gtwiz_buffbypass_rx_error_out => gtwiz_buffbypass_rx_error_out_int,
    gtwiz_buffbypass_rx_reset_in => gtwiz_buffbypass_rx_reset_in_int,
    gtwiz_buffbypass_rx_start_user_in => gtwiz_buffbypass_rx_start_user_in_int,
    gtwiz_reset_all_in => gtwiz_reset_all_in_int,
    gtwiz_reset_clk_freerun_in => gtwiz_reset_clk_freerun_in_int,
    gtwiz_reset_rx_cdr_stable_out => gtwiz_reset_rx_cdr_stable_out_int,
    gtwiz_reset_rx_datapath_in => gtwiz_reset_rx_datapath_in_int,
    gtwiz_reset_rx_done_out => gtwiz_reset_rx_done_out_int,
    gtwiz_reset_rx_pll_and_datapath_in => gtwiz_reset_rx_pll_and_datapath_in_int,
    gtwiz_reset_tx_datapath_in => gtwiz_reset_tx_datapath_in_int,
    gtwiz_reset_tx_done_out => gtwiz_reset_tx_done_out_int,
    gtwiz_reset_tx_pll_and_datapath_in => gtwiz_reset_tx_pll_and_datapath_in_int,
    gtwiz_userclk_rx_active_in => gtwiz_userclk_rx_active_in_int,
    gtwiz_userclk_tx_active_in => gtwiz_userclk_tx_active_in_int,
    gtwiz_userclk_tx_reset_in => gtwiz_userclk_tx_reset_in_int,
    gtwiz_userdata_rx_out => gtwiz_userdata_rx_out,
    gtwiz_userdata_tx_in => gtwiz_userdata_tx_in,
    loopback_in => loopback_in,
    pcsrsvdin_in => pcsrsvdin_in,
    rx8b10ben_in => rx8b10ben_in_int,
    rxbyteisaligned_out => rxbyteisaligned_out_int,
    rxbyterealign_out => rxbyterealign_out_int,
    rxcdrhold_in => rxcdrhold_in_int,
    rxcommadet_out => rxcommadet_out_int,
    rxcommadeten_in => rxcommadeten_in_int,
    rxctrl0_out => rxctrl0_out,
    rxctrl1_out => rxctrl1_out,
    rxctrl2_out => rxctrl2_out,
    rxctrl3_out => rxctrl3_out,
    rxdfelpmreset_in => rxdfelpmreset_in_int,
    rxlpmen_in => rxlpmen_in_int,
    rxmcommaalignen_in => rxmcommaalignen_in_int,
    rxoutclk_out => rxoutclk_out_int,
    rxpcommaalignen_in => rxpcommaalignen_in_int,
    rxpcsreset_in => rxpcsreset_in_int,
    rxpd_in => rxpd_in,
    rxpmareset_in => rxpmareset_in_int,
    rxpmaresetdone_out => rxpmaresetdone_out_int,
    rxpolarity_in => rxpolarity_in_int,
    rxprbscntreset_in => rxprbscntreset_in_int,
    rxprbserr_out => rxprbserr_out_int,
    rxprbssel_in => rxprbssel_in,
    rxrate_in => rxrate_in,
    rxresetdone_out => rxresetdone_out_int,
    rxusrclk2_in => rxusrclk2_in_int,
    rxusrclk_in => rxusrclk_in_int,
    tx8b10ben_in => tx8b10ben_in_int,
    txbufstatus_out => txbufstatus_out,
    txctrl0_in => txctrl0_in,
    txctrl1_in => txctrl1_in,
    txctrl2_in => txctrl2_in,
    txdiffctrl_in => txdiffctrl_in,
    txelecidle_in => txelecidle_in_int,
    txinhibit_in => txinhibit_in_int,
    txoutclk_out => txoutclk_out_int,
    txpcsreset_in => txpcsreset_in_int,
    txpd_in => txpd_in,
    txpmareset_in => txpmareset_in_int,
    txpmaresetdone_out => txpmaresetdone_out_int,
    txpolarity_in => txpolarity_in_int,
    txpostcursor_in => txpostcursor_in,
    txprbsforceerr_in => txprbsforceerr_in_int,
    txprbssel_in => txprbssel_in,
    txprecursor_in => txprecursor_in,
    txprgdivresetdone_out => txprgdivresetdone_out_int,
    txresetdone_out => txresetdone_out_int,
    txusrclk2_in => txusrclk2_in_int,
    txusrclk_in => txusrclk_in_int
  );



  -- Reclock the transceiver signals

  process (usrclk2)
  begin
    if usrclk2'event and usrclk2= '1' then
      if txreset = '1' then
        rxpowerdown_reg    <=  '0';
      else
        rxpowerdown_reg    <= powerdown;
      end if;
    end if;
  end process;


   -- Instantiate the RX elastic buffer. This performs clock
   -- correction on the incoming data to cope with differences
   -- between the user clock and the clock recovered from the data.
   rx_elastic_buffer_inst : bd_fd73_pcs_pma_0_rx_elastic_buffer port map (

     -- Signals from the GTX on rxrecclk
     rxrecclk          => rxusrclk2,
     rxrecreset        => rxreset_rec,
     rxchariscomma_rec => rxchariscomma_rec,
     rxcharisk_rec     => rxcharisk_rec,
     rxdisperr_rec     => rxdisperr_rec,
     rxnotintable_rec  => rxnotintable_rec,
     rxrundisp_rec     => "00",
     rxdata_rec        => rxdata_rec,

     -- Signals reclocked onto usrclk2
     rxusrclk2         => usrclk2,
     rxreset           => rxreset,
     rxchariscomma_usr => rxchariscomma,
     rxcharisk_usr     => rxcharisk,
     rxdisperr_usr     => rxdisperr,
     rxnotintable_usr  => rxnotintable,
     rxrundisp_usr     => rxrundisp,
     rxclkcorcnt_usr   => rxclkcorcnt,
     rxbuferr          => rxbuferr,
     rxdata_usr        => rxdata
   );


   -- Output the PLL locked status
   plllkdet <= cplllock;

   -- Decode the GT transceiver buffer status signals
   process (usrclk2)
   begin
     if usrclk2'event and usrclk2= '1' then
       txbuferr    <= txbufstatus_reg(1);
     end if;
   end process;

end wrapper;
