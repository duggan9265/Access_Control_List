--------------------------------------------------------------------------------
-- File       : bd_fd73_mac_0.vhd
-- Author     : AMD Inc.
-- -----------------------------------------------------------------------------
-- (c) Copyright 2004-2013 Advanced Micro Devices, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Advanced Micro Devices, Inc. and is protected under U.S. and
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
-- -----------------------------------------------------------------------------
-- Description: This is the wrapper file for the Tri-Mode Ethernet MAC IP.
--
-- This wrapper instantiates the TEMAC core block
--------------------------------------------------------------------------------

library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;

library tri_mode_ethernet_mac_v9_0_29;
use tri_mode_ethernet_mac_v9_0_29.all;

--------------------------------------------------------------------------------
-- The entity declaration for the block level example design.
--------------------------------------------------------------------------------

entity bd_fd73_mac_0 is
 port(
      gtx_clk                    : in  std_logic;
      
      -- asynchronous reset
      glbl_rstn                  : in  std_logic;
      rx_axi_rstn                : in  std_logic;
      tx_axi_rstn                : in  std_logic;


      -- Receiver Interface
      ----------------------------

      rx_statistics_vector       : out std_logic_vector(27 downto 0);
      rx_statistics_valid        : out std_logic;

      rx_mac_aclk                : out std_logic;
      rx_reset                   : out std_logic;
      rx_axis_mac_tdata          : out std_logic_vector(7 downto 0);
      rx_axis_mac_tvalid         : out std_logic;
      rx_axis_mac_tlast          : out std_logic;
      rx_axis_mac_tuser          : out std_logic;
      rx_axis_filter_tuser       : out std_logic_vector(4 downto 0);

      -- Transmitter Interface
      -------------------------------

      tx_ifg_delay               : in  std_logic_vector(7 downto 0);
      tx_statistics_vector       : out std_logic_vector(31 downto 0);
      tx_statistics_valid        : out std_logic;

      tx_mac_aclk                : out std_logic;
      tx_reset                   : out std_logic;
      tx_axis_mac_tdata          : in  std_logic_vector(7 downto 0);
      tx_axis_mac_tvalid         : in  std_logic;
      tx_axis_mac_tlast          : in  std_logic;
      tx_axis_mac_tuser          : in  std_logic_vector(0 downto 0);
      tx_axis_mac_tready         : out std_logic;
      -- MAC Control Interface
      ------------------------
      pause_req                  : in  std_logic;
      pause_val                  : in  std_logic_vector(15 downto 0);

      clk_enable                 : in  std_logic;
      speedis100                 : out std_logic;
      speedis10100               : out std_logic;
      -- GMII Interface
      -----------------
      gmii_txd                   : out std_logic_vector(7 downto 0);
      gmii_tx_en                 : out std_logic;
      gmii_tx_er                 : out std_logic;
      gmii_rxd                   : in  std_logic_vector(7 downto 0);
      gmii_rx_dv                 : in  std_logic;
      gmii_rx_er                 : in  std_logic;

      
      -- MDIO Interface
      -----------------
      mdio_i                     : in  std_logic;
      mdio_o                     : out std_logic;
      mdio_t                     : out std_logic;
      mdc                        : out std_logic;

      -- AXI-Lite Interface
      -----------------
      s_axi_aclk                 : in  std_logic;
      s_axi_resetn               : in  std_logic;

      s_axi_awaddr               : in  std_logic_vector(11 downto 0);
      s_axi_awvalid              : in  std_logic;
      s_axi_awready              : out std_logic;

      s_axi_wdata                : in  std_logic_vector(31 downto 0);
      s_axi_wvalid               : in  std_logic;
      s_axi_wready               : out std_logic;

      s_axi_bresp                : out std_logic_vector(1 downto 0);
      s_axi_bvalid               : out std_logic;
      s_axi_bready               : in  std_logic;

      s_axi_araddr               : in  std_logic_vector(11 downto 0);
      s_axi_arvalid              : in  std_logic;
      s_axi_arready              : out std_logic;

      s_axi_rdata                : out std_logic_vector(31 downto 0);
      s_axi_rresp                : out std_logic_vector(1 downto 0);
      s_axi_rvalid               : out std_logic;
      s_axi_rready               : in  std_logic;

      mac_irq                    : out std_logic

   );
end bd_fd73_mac_0;


architecture wrapper of bd_fd73_mac_0 is

  attribute DowngradeIPIdentifiedWarnings: string;
  attribute DowngradeIPIdentifiedWarnings of wrapper : architecture is "yes";

  ------------------------------------------------------------------------------
  -- Component declaration for the TEMAC core block
  ------------------------------------------------------------------------------
   component bd_fd73_mac_0_block
   port(
      gtx_clk                    : in  std_logic;
      
      -- asynchronous reset
      glbl_rstn                  : in  std_logic;
      rx_axi_rstn                : in  std_logic;
      tx_axi_rstn                : in  std_logic;


      -- Receiver Interface
      ----------------------------

      rx_statistics_vector       : out std_logic_vector(27 downto 0);
      rx_statistics_valid        : out std_logic;

      rx_mac_aclk                : out std_logic;
      rx_reset                   : out std_logic;
      rx_axis_mac_tdata          : out std_logic_vector(7 downto 0);
      rx_axis_mac_tvalid         : out std_logic;
      rx_axis_mac_tlast          : out std_logic;
      rx_axis_mac_tuser          : out std_logic;
      rx_axis_filter_tuser       : out std_logic_vector(4 downto 0);

      -- Transmitter Interface
      -------------------------------

      tx_ifg_delay               : in  std_logic_vector(7 downto 0);
      tx_statistics_vector       : out std_logic_vector(31 downto 0);
      tx_statistics_valid        : out std_logic;

      tx_mac_aclk                : out std_logic;
      tx_reset                   : out std_logic;
      tx_axis_mac_tdata          : in  std_logic_vector(7 downto 0);
      tx_axis_mac_tvalid         : in  std_logic;
      tx_axis_mac_tlast          : in  std_logic;
      tx_axis_mac_tuser          : in  std_logic_vector(0 downto 0);
      tx_axis_mac_tready         : out std_logic;
      -- MAC Control Interface
      ------------------------
      pause_req                  : in  std_logic;
      pause_val                  : in  std_logic_vector(15 downto 0);

      clk_enable                 : in  std_logic;
      speedis100                 : out std_logic;
      speedis10100               : out std_logic;
      -- GMII Interface
      -----------------
      gmii_txd                   : out std_logic_vector(7 downto 0);
      gmii_tx_en                 : out std_logic;
      gmii_tx_er                 : out std_logic;
      gmii_rxd                   : in  std_logic_vector(7 downto 0);
      gmii_rx_dv                 : in  std_logic;
      gmii_rx_er                 : in  std_logic;

      
      -- MDIO Interface
      -----------------
      mdio_i                     : in  std_logic;
      mdio_o                     : out std_logic;
      mdio_t                     : out std_logic;
      mdc                        : out std_logic;

      -- AXI-Lite Interface
      -----------------
      s_axi_aclk                 : in  std_logic;
      s_axi_resetn               : in  std_logic;

      s_axi_awaddr               : in  std_logic_vector(11 downto 0);
      s_axi_awvalid              : in  std_logic;
      s_axi_awready              : out std_logic;

      s_axi_wdata                : in  std_logic_vector(31 downto 0);
      s_axi_wvalid               : in  std_logic;
      s_axi_wready               : out std_logic;

      s_axi_bresp                : out std_logic_vector(1 downto 0);
      s_axi_bvalid               : out std_logic;
      s_axi_bready               : in  std_logic;

      s_axi_araddr               : in  std_logic_vector(11 downto 0);
      s_axi_arvalid              : in  std_logic;
      s_axi_arready              : out std_logic;

      s_axi_rdata                : out std_logic_vector(31 downto 0);
      s_axi_rresp                : out std_logic_vector(1 downto 0);
      s_axi_rvalid               : out std_logic;
      s_axi_rready               : in  std_logic;

      mac_irq                    : out std_logic

   );
   end component;

ATTRIBUTE CORE_GENERATION_INFO : STRING;
ATTRIBUTE CORE_GENERATION_INFO OF wrapper : ARCHITECTURE IS "bd_fd73_mac_0,bd_fd73_mac_0_block,{x_ipProduct=Vivado 2023.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=tri_mode_ethernet_mac,x_ipVersion=9.0,x_ipCoreRevision=29,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,c_component_name=bd_fd73_mac_0,c_physical_interface=INTERNAL,c_half_duplex=false,c_has_host=true,c_has_mdio=true,c_mdio_external=false,c_axilite_freq=150.00,c_add_filter=true,c_at_entries=4,c_family=zynquplus,c_mac_speed=TRI_SPEED,c_int_clk_src=User_Clk2,c_int_mode_type=SGMII,c_has_stats=true,c_num_stats=34,c_cntr_rst=true,c_stats_width=64,c_avb=false,c_1588=0,c_tx_inband_cf_enable=false,c_rx_inband_ts_enable=false,c_tx_tuser_width=1,c_rx_vec_width=79,c_tx_vec_width=79,c_addr_width=12,c_pfc=false,c_mii_io=true,c_data_rate=1_Gbps,x_ipLicense=tri_mode_eth_mac@2015.04(design_linking),x_ipLicense=eth_avb_endpoint@2015.04(design_linking)}";
ATTRIBUTE X_CORE_INFO : STRING;
ATTRIBUTE X_CORE_INFO OF wrapper: ARCHITECTURE IS "bd_fd73_mac_0_block,Vivado 2023.2";

begin

   -----------------------------------------------------------------------------
   -- Instantiate the TEMAC core block
   -----------------------------------------------------------------------------
   U0 : bd_fd73_mac_0_block
   port map (
      gtx_clk                    => gtx_clk,
      
      -- asynchronous reset
      glbl_rstn                  => glbl_rstn,
      rx_axi_rstn                => rx_axi_rstn,
      tx_axi_rstn                => tx_axi_rstn,



      -- Receiver Interface
      ----------------------------
      rx_statistics_vector       => rx_statistics_vector,
      rx_statistics_valid        => rx_statistics_valid,

      rx_mac_aclk                => rx_mac_aclk,
      rx_reset                   => rx_reset,
      rx_axis_mac_tdata          => rx_axis_mac_tdata,
      rx_axis_mac_tvalid         => rx_axis_mac_tvalid,
      rx_axis_mac_tlast          => rx_axis_mac_tlast,
      rx_axis_mac_tuser          => rx_axis_mac_tuser,

      rx_axis_filter_tuser       => rx_axis_filter_tuser,

      -- Transmitter Interface
      -------------------------------
      tx_ifg_delay               => tx_ifg_delay,
      tx_statistics_vector       => tx_statistics_vector,
      tx_statistics_valid        => tx_statistics_valid,

      tx_mac_aclk                => tx_mac_aclk,
      tx_reset                   => tx_reset,
      tx_axis_mac_tdata          => tx_axis_mac_tdata,
      tx_axis_mac_tvalid         => tx_axis_mac_tvalid,
      tx_axis_mac_tlast          => tx_axis_mac_tlast,
      tx_axis_mac_tuser          => tx_axis_mac_tuser,
      tx_axis_mac_tready         => tx_axis_mac_tready,

      -- MAC Control Interface
      ------------------------
      pause_req                  => pause_req,
      pause_val                  => pause_val,

      clk_enable                 => clk_enable,
      speedis100                 => speedis100,
      speedis10100               => speedis10100,
      -- GMII Interface
      -----------------
      gmii_txd                   => gmii_txd,
      gmii_tx_en                 => gmii_tx_en,
      gmii_tx_er                 => gmii_tx_er,
      gmii_rxd                   => gmii_rxd,
      gmii_rx_dv                 => gmii_rx_dv,
      gmii_rx_er                 => gmii_rx_er,


      
      -- MDIO Interface
      -----------------
      mdio_i                     => mdio_i,
      mdio_o                     => mdio_o,
      mdio_t                     => mdio_t,
      mdc                        => mdc,

      -- AXI-Lite Interface
      -----------------
      s_axi_aclk                 => s_axi_aclk,
      s_axi_resetn               => s_axi_resetn,

      s_axi_awaddr               => s_axi_awaddr,
      s_axi_awvalid              => s_axi_awvalid,
      s_axi_awready              => s_axi_awready,

      s_axi_wdata                => s_axi_wdata,
      s_axi_wvalid               => s_axi_wvalid,
      s_axi_wready               => s_axi_wready,

      s_axi_bresp                => s_axi_bresp,
      s_axi_bvalid               => s_axi_bvalid,
      s_axi_bready               => s_axi_bready,

      s_axi_araddr               => s_axi_araddr,
      s_axi_arvalid              => s_axi_arvalid,
      s_axi_arready              => s_axi_arready,

      s_axi_rdata                => s_axi_rdata,
      s_axi_rresp                => s_axi_rresp,
      s_axi_rvalid               => s_axi_rvalid,
      s_axi_rready               => s_axi_rready,

      mac_irq                    => mac_irq

   );


end wrapper;

