--------------------------------------------------------------------------------
-- File       : bd_fd73_pcs_pma_0.vhd
-- Author     : AMD Inc.
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
-- Description: This Core Block Level wrapper connects the core to a  
--              Series-7 Transceiver.
--
--              The SGMII adaptation module is provided to convert
--              between 1Gbps and 10/100 Mbps rates.  This is connected
--              to the MAC side of the core to provide a GMII style
--              interface.  When the core is running at 1Gbps speeds,
--              the GMII (8-bitdata pathway) is used at a clock
--              frequency of 125MHz.  When the core is running at
--              100Mbps, a clock frequency of 12.5MHz is used.  When
--              running at 100Mbps speeds, a clock frequency of 1.25MHz
--              is used.
--
--    ----------------------------------------------------------------
--    |                   Core Block Level Wrapper                   |
--    |                                                              |
--    |                                                              |
--    |                  --------------          --------------      |
--    |                  |    Core    |          | Transceiver|      |
--    |                  |            |          |            |      |
--    |    ---------     |            |          |            |      |
--    |    |       |     |            |          |            |      |
--    |    | SGMII |     |            |          |            |      |
--  ------>| Adapt |---->| GMII       |--------->|        TXP |-------->
--    |    | Module|     | Tx         |          |        TXN |      |
--    |    |       |     |            |          |            |      |
--    |    |       |     |            |          |            |      |
--    |    |       |     |            |          |            |      |
--    |    |       |     |            |          |            |      |
--    |    |       |     |            |          |            |      |
--    |    |       |     | GMII       |          |        RXP |      |
--  <------|       |<----| Rx         |<---------|        RXN |<--------
--    |    |       |     |            |          |            |      |
--    |    ---------     --------------          --------------      |
--    |                                                              |
--    ----------------------------------------------------------------
--
--


library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
library gig_ethernet_pcs_pma_v16_2_15;
use gig_ethernet_pcs_pma_v16_2_15.all;



--------------------------------------------------------------------------------
-- The entity declaration for the Core Block wrapper.
--------------------------------------------------------------------------------

entity bd_fd73_pcs_pma_0 is
  generic
(
    EXAMPLE_SIMULATION                      : integer   := 0
);
      port(
      -- Transceiver Interface
      ---------------------

      gtrefclk_p               : in  std_logic;                          
      gtrefclk_n               : in  std_logic;                         


      gtrefclk_out             : out std_logic;                           -- Very high quality clock for GT transceiver.
      
      
      txp                  : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
      txn                  : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
      rxp                  : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
      rxn                  : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.
      resetdone                : out std_logic;                           -- The GT transceiver has completed its reset cycle
      userclk_out              : out std_logic;                           
      userclk2_out             : out std_logic;                           
      rxuserclk_out              : out std_logic;                         
      rxuserclk2_out             : out std_logic;                         
      pma_reset_out            : out std_logic;                           -- transceiver PMA reset signal
      mmcm_locked_out          : out std_logic;                           -- MMCM Locked
      independent_clock_bufg : in std_logic;                   

      -- GMII Interface
      -----------------
      sgmii_clk_r            : out std_logic;              
      sgmii_clk_f            : out std_logic;              
      sgmii_clk_en           : out std_logic;                  -- Clock enable for client MAC
      gmii_txd             : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_tx_er           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.

      ext_mdc                  : out std_logic;                     -- Management Data Clock
      ext_mdio_i               : in std_logic;                     -- Management Data In
      ext_mdio_o               : out std_logic;                    -- Management Data Out
      ext_mdio_t               : out std_logic;                    -- Management Data Tristate
      mdio_t_in                : in std_logic;                     -- Management Data Tristate In
      -- Management: MDIO Interface
      -----------------------------

      mdc                  : in std_logic;                     -- Management Data Clock
      mdio_i               : in std_logic;                     -- Management Data In
      mdio_o               : out std_logic;                    -- Management Data Out
      mdio_t               : out std_logic;                    -- Management Data Tristate
      phyaddr              : in std_logic_vector(4 downto 0);  
      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
      configuration_valid  : in std_logic;                     -- Validation signal for Config vector.


      an_interrupt         : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
      an_adv_config_vector : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
      an_adv_config_val    : in std_logic;                     -- Validation signal for AN ADV
      an_restart_config    : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0

      -- Speed Control
      ----------------
      speed_is_10_100      : in std_logic;                     -- Core should operate at either 10Mbps or 100Mbps speeds
      speed_is_100         : in std_logic;                      -- Core should operate at 100Mbps speed


      -- General IO's
      ---------------
      status_vector        : out std_logic_vector(15 downto 0); -- Core status.
      reset                : in std_logic;                     -- Asynchronous reset for entire core.
     
      gtpowergood           : out std_logic;
      signal_detect         : in std_logic                      -- Input from PMD to indicate presence of optical input.

      );
end bd_fd73_pcs_pma_0;


architecture wrapper of bd_fd73_pcs_pma_0 is

   attribute DowngradeIPIdentifiedWarnings: string;
   attribute DowngradeIPIdentifiedWarnings of wrapper : architecture is "yes";

   component bd_fd73_pcs_pma_0_support
  generic
(
    EXAMPLE_SIMULATION                      : integer   := 0
);
      port(
      -- Transceiver Interface
      ---------------------

      gtrefclk_p               : in  std_logic;                       
      gtrefclk_n               : in  std_logic;                      

      gtrefclk_out             : out std_logic;                        
      
      txp                  : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
      txn                  : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
      rxp                  : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
      rxn                  : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.
      resetdone                : out std_logic;                           -- The GT transceiver has completed its reset cycle
      userclk_out              : out std_logic;                        
      userclk2_out             : out std_logic;                        
      rxuserclk_out              : out std_logic;                      
      rxuserclk2_out             : out std_logic;                       
      independent_clock_bufg : in std_logic;               
      pma_reset_out            : out std_logic;                           -- transceiver PMA reset signal
      mmcm_locked_out          : out std_logic;                           -- MMCM Locked
      -- GMII Interface
      -----------------
      sgmii_clk_r            : out std_logic;                 
      sgmii_clk_f            : out std_logic;                 
      sgmii_clk_en           : out std_logic;                    -- Clock enable for client MAC
      gmii_txd             : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_tx_er           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.

      ext_mdc                  : out std_logic;                     -- Management Data Clock
      ext_mdio_i               : in std_logic;                     -- Management Data In
      ext_mdio_o               : out std_logic;                    -- Management Data Out
      ext_mdio_t               : out std_logic;                    -- Management Data Tristate
      mdio_t_in                : in std_logic;                     -- Management Data Tristate In
      -- Management: MDIO Interface
      -----------------------------

      mdc                  : in std_logic;                     -- Management Data Clock
      mdio_i               : in std_logic;                     -- Management Data In
      mdio_o               : out std_logic;                    -- Management Data Out
      mdio_t               : out std_logic;                    -- Management Data Tristate
      phyaddr              : in std_logic_vector(4 downto 0);  
      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.
      configuration_valid  : in std_logic;                     -- Validation signal for Config vector.


      an_interrupt         : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
      an_adv_config_vector : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
      an_adv_config_val    : in std_logic;                     -- Validation signal for AN ADV
      an_restart_config    : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0

      -- Speed Control
      ----------------
      speed_is_10_100      : in std_logic;                     -- Core should operate at either 10Mbps or 100Mbps speeds
      speed_is_100         : in std_logic;                      -- Core should operate at 100Mbps speed

      -- General IO's
      ---------------
      status_vector        : out std_logic_vector(15 downto 0); -- Core status.
      reset                : in std_logic;                     -- Asynchronous reset for entire core.
  
      gtpowergood          : out std_logic; 
      signal_detect        : in std_logic                      -- Input from PMD to indicate presence of optical input.

      );
   end component;

ATTRIBUTE CORE_GENERATION_INFO : STRING;
ATTRIBUTE CORE_GENERATION_INFO OF wrapper : ARCHITECTURE IS "bd_fd73_pcs_pma_0,gig_ethernet_pcs_pma_v16_2_15,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=16.2,x_ipCoreRevision=15,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,c_elaboration_transient_dir=.,c_component_name=bd_fd73_pcs_pma_0,c_family=zynquplus,c_architecture=zynquplus,c_is_sgmii=true,c_enable_async_sgmii=false,c_enable_async_lvds=false,c_enable_async_lvds_rx_only=false,c_use_transceiver=true,c_use_tbi=false,c_is_2_5g=false,c_use_lvds=false,c_has_an=TRUE,characterization=false,c_has_mdio=TRUE,c_has_axil=false,c_has_ext_mdio=true,c_sgmii_phy_mode=FALSE,c_dynamic_switching=false,c_sgmii_fabric_buffer=true,c_1588=0,gt_rx_byte_width=1,C_EMAC_IF_TEMAC=true,EXAMPLE_SIMULATION=0,c_support_level=true,c_RxNibbleBitslice0Used=false,c_InstantiateBitslice0=false,c_tx_in_upper_nibble=1,c_TxLane0_Placement=DIFF_PAIR_0,c_TxLane1_Placement=DIFF_PAIR_1,c_RxLane0_Placement=DIFF_PAIR_0,c_RxLane1_Placement=DIFF_PAIR_1,c_sub_core_name=bd_fd73_pcs_pma_0_gt,c_transceiver_type=GTHE4,c_gt_type=GTH,c_rx_gmii_clk_src=TXOUTCLK,c_transceivercontrol=false,c_gtinex=false,c_xdevicefamily=xczu9eg,c_clock_selection=Sync,c_gt_dmonitorout_width=16,c_gt_drpaddr_width=10,c_gt_txdiffctrl_width=5,c_gt_rxmonitorout_width=8,c_num_of_lanes=1,c_refclkrate=156.25,c_drpclkrate=50.0,c_gt_loc=X1Y13,c_refclk_src=clk0,c_enable_tx_userclk_reset_port=true,c_8_or_9_family=true,VERSAL_GT_BOARD_FLOW=0}";
ATTRIBUTE X_CORE_INFO : STRING;
ATTRIBUTE X_CORE_INFO OF wrapper: ARCHITECTURE IS "gig_ethernet_pcs_pma_v16_2_15,Vivado 2023.2";

begin



   U0 : bd_fd73_pcs_pma_0_support generic map ( EXAMPLE_SIMULATION            => EXAMPLE_SIMULATION)
      port map(
      -- Transceiver Interface
      ---------------------

      gtrefclk_p               => gtrefclk_p,
      gtrefclk_n               => gtrefclk_n,

      gtrefclk_out             => gtrefclk_out,
      txp                      => txp,
      txn                      => txn,
      rxp                      => rxp,
      rxn                      => rxn,
      resetdone                => resetdone,
      userclk_out              => userclk_out,
      userclk2_out             => userclk2_out,
      rxuserclk_out            => rxuserclk_out,
      rxuserclk2_out           => rxuserclk2_out,
          independent_clock_bufg => independent_clock_bufg,
      pma_reset_out            => pma_reset_out,
      mmcm_locked_out          => mmcm_locked_out,
      -- GMII Interface
      -----------------
      sgmii_clk_r              => sgmii_clk_r,
      sgmii_clk_f              => sgmii_clk_f,
      sgmii_clk_en             => sgmii_clk_en,
      gmii_txd                 => gmii_txd,
      gmii_tx_en               => gmii_tx_en,
      gmii_tx_er               => gmii_tx_er,
      gmii_rxd                 => gmii_rxd,
      gmii_rx_dv               => gmii_rx_dv,
      gmii_rx_er               => gmii_rx_er,
      gmii_isolate             => gmii_isolate,

      ext_mdc                  => ext_mdc     ,
      ext_mdio_i               => ext_mdio_i  ,
      ext_mdio_o               => ext_mdio_o  ,
      ext_mdio_t               => ext_mdio_t  ,
      mdio_t_in                => mdio_t_in   ,
      -- Management: MDIO Interface
      -----------------------------

      mdc                      => mdc,
      mdio_i                   => mdio_i,
      mdio_o                   => mdio_o,
      mdio_t                   => mdio_t,
      phyaddr                  => phyaddr,
      configuration_vector     => configuration_vector,
      configuration_valid      => configuration_valid,


      an_interrupt             => an_interrupt,
      an_adv_config_vector     => an_adv_config_vector,
      an_adv_config_val        => an_adv_config_val,
      an_restart_config        => an_restart_config,

      -- Speed Control
      ----------------
      speed_is_10_100          => speed_is_10_100,
      speed_is_100             => speed_is_100,

      -- General IO's
      ---------------
      status_vector             => status_vector,
      reset                     => reset,

   
   

      gtpowergood          => gtpowergood,
      signal_detect        => signal_detect

      );
end wrapper;

