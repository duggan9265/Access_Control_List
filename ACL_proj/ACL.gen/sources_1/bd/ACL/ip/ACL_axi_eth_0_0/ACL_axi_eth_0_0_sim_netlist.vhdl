-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 16 15:51:02 2025
-- Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_axi_eth_0_0/ACL_axi_eth_0_0_sim_netlist.vhdl
-- Design      : ACL_axi_eth_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_axi_eth_0_0_bd_fd73 is
  port (
    axi_rxd_arstn : in STD_LOGIC;
    axi_rxs_arstn : in STD_LOGIC;
    axi_txc_arstn : in STD_LOGIC;
    axi_txd_arstn : in STD_LOGIC;
    axis_clk : in STD_LOGIC;
    gtpowergood : out STD_LOGIC;
    gtref_clk_out : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axis_rxd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxd_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxd_tlast : out STD_LOGIC;
    m_axis_rxd_tready : in STD_LOGIC;
    m_axis_rxd_tvalid : out STD_LOGIC;
    m_axis_rxs_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxs_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxs_tlast : out STD_LOGIC;
    m_axis_rxs_tready : in STD_LOGIC;
    m_axis_rxs_tvalid : out STD_LOGIC;
    mac_irq : out STD_LOGIC;
    mdio_mdc : out STD_LOGIC;
    mdio_mdio_i : in STD_LOGIC;
    mdio_mdio_o : out STD_LOGIC;
    mdio_mdio_t : out STD_LOGIC;
    mgt_clk_clk_n : in STD_LOGIC;
    mgt_clk_clk_p : in STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    pma_reset_out : out STD_LOGIC;
    ref_clk : in STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_lite_clk : in STD_LOGIC;
    s_axi_lite_resetn : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axis_txc_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txc_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txc_tlast : in STD_LOGIC;
    s_axis_txc_tready : out STD_LOGIC;
    s_axis_txc_tvalid : in STD_LOGIC;
    s_axis_txd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txd_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txd_tlast : in STD_LOGIC;
    s_axis_txd_tready : out STD_LOGIC;
    s_axis_txd_tvalid : in STD_LOGIC;
    sgmii_rxn : in STD_LOGIC;
    sgmii_rxp : in STD_LOGIC;
    sgmii_txn : out STD_LOGIC;
    sgmii_txp : out STD_LOGIC;
    signal_detect : in STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    userclk_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ACL_axi_eth_0_0_bd_fd73 : entity is "bd_fd73";
  attribute hw_handoff : string;
  attribute hw_handoff of ACL_axi_eth_0_0_bd_fd73 : entity is "ACL_axi_eth_0_0.hwdef";
end ACL_axi_eth_0_0_bd_fd73;

architecture STRUCTURE of ACL_axi_eth_0_0_bd_fd73 is
  component ACL_axi_eth_0_0_bd_fd73_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component ACL_axi_eth_0_0_bd_fd73_c_counter_binary_0_0;
  component ACL_axi_eth_0_0_bd_fd73_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ACL_axi_eth_0_0_bd_fd73_c_shift_ram_0_0;
  component ACL_axi_eth_0_0_bd_fd73_eth_buf_0 is
  port (
    INTERRUPT : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    EMAC_CLIENT_AUTONEG_INT : in STD_LOGIC;
    EMAC_RESET_DONE_INT : in STD_LOGIC;
    EMAC_RX_DCM_LOCKED_INT : in STD_LOGIC;
    PCSPMA_STATUS_VECTOR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI_STR_TXD_ACLK : in STD_LOGIC;
    AXI_STR_TXD_ARESETN : in STD_LOGIC;
    AXI_STR_TXD_TVALID : in STD_LOGIC;
    AXI_STR_TXD_TREADY : out STD_LOGIC;
    AXI_STR_TXD_TLAST : in STD_LOGIC;
    AXI_STR_TXD_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_STR_TXD_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_TXC_ACLK : in STD_LOGIC;
    AXI_STR_TXC_ARESETN : in STD_LOGIC;
    AXI_STR_TXC_TVALID : in STD_LOGIC;
    AXI_STR_TXC_TREADY : out STD_LOGIC;
    AXI_STR_TXC_TLAST : in STD_LOGIC;
    AXI_STR_TXC_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_STR_TXC_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXD_ACLK : in STD_LOGIC;
    AXI_STR_RXD_ARESETN : in STD_LOGIC;
    AXI_STR_RXD_VALID : out STD_LOGIC;
    AXI_STR_RXD_READY : in STD_LOGIC;
    AXI_STR_RXD_LAST : out STD_LOGIC;
    AXI_STR_RXD_KEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_STR_RXD_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    AXI_STR_RXS_ACLK : in STD_LOGIC;
    AXI_STR_RXS_ARESETN : in STD_LOGIC;
    AXI_STR_RXS_VALID : out STD_LOGIC;
    AXI_STR_RXS_READY : in STD_LOGIC;
    AXI_STR_RXS_LAST : out STD_LOGIC;
    AXI_STR_RXS_KEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AXI_STR_RXS_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pause_req : out STD_LOGIC;
    pause_val : out STD_LOGIC_VECTOR ( 16 to 31 );
    S_AXI_2TEMAC_AWADDR : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_2TEMAC_AWVALID : out STD_LOGIC;
    S_AXI_2TEMAC_AWREADY : in STD_LOGIC;
    S_AXI_2TEMAC_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_2TEMAC_WVALID : out STD_LOGIC;
    S_AXI_2TEMAC_WREADY : in STD_LOGIC;
    S_AXI_2TEMAC_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_2TEMAC_BVALID : in STD_LOGIC;
    S_AXI_2TEMAC_BREADY : out STD_LOGIC;
    S_AXI_2TEMAC_ARADDR : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_2TEMAC_ARVALID : out STD_LOGIC;
    S_AXI_2TEMAC_ARREADY : in STD_LOGIC;
    S_AXI_2TEMAC_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_2TEMAC_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_2TEMAC_RVALID : in STD_LOGIC;
    S_AXI_2TEMAC_RREADY : out STD_LOGIC;
    RX_CLK_ENABLE_IN : in STD_LOGIC;
    rx_statistics_vector : in STD_LOGIC_VECTOR ( 27 downto 0 );
    rx_statistics_valid : in STD_LOGIC;
    rx_mac_aclk : in STD_LOGIC;
    rx_reset : in STD_LOGIC;
    rx_axis_mac_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_axis_mac_tvalid : in STD_LOGIC;
    rx_axis_mac_tlast : in STD_LOGIC;
    rx_axis_mac_tuser : in STD_LOGIC;
    tx_ifg_delay : out STD_LOGIC_VECTOR ( 24 to 31 );
    tx_mac_aclk : in STD_LOGIC;
    tx_reset : in STD_LOGIC;
    tx_axis_mac_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_mac_tvalid : out STD_LOGIC;
    tx_axis_mac_tlast : out STD_LOGIC;
    tx_axis_mac_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    tx_axis_mac_tready : in STD_LOGIC;
    speed_is_10_100 : in STD_LOGIC;
    RESET2PCSPMA : out STD_LOGIC;
    RESET2TEMACn : out STD_LOGIC;
    PHY_RST_N : out STD_LOGIC;
    mdio_i_top : in STD_LOGIC;
    mdio_o_top : out STD_LOGIC;
    mdio_t_top : out STD_LOGIC;
    mdc_top : out STD_LOGIC;
    mdio_t_pcspma : in STD_LOGIC;
    mdio_o_pcspma : in STD_LOGIC;
    mdio_i_temac : out STD_LOGIC;
    mdio_o_temac : in STD_LOGIC;
    mdio_t_temac : in STD_LOGIC;
    mdc_temac : in STD_LOGIC;
    GTX_CLK : in STD_LOGIC
  );
  end component ACL_axi_eth_0_0_bd_fd73_eth_buf_0;
  component ACL_axi_eth_0_0_bd_fd73_mac_0 is
  port (
    gtx_clk : in STD_LOGIC;
    glbl_rstn : in STD_LOGIC;
    rx_axi_rstn : in STD_LOGIC;
    tx_axi_rstn : in STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 27 downto 0 );
    rx_statistics_valid : out STD_LOGIC;
    rx_mac_aclk : out STD_LOGIC;
    rx_reset : out STD_LOGIC;
    rx_axis_mac_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_axis_mac_tvalid : out STD_LOGIC;
    rx_axis_mac_tlast : out STD_LOGIC;
    rx_axis_mac_tuser : out STD_LOGIC;
    rx_axis_filter_tuser : out STD_LOGIC_VECTOR ( 4 downto 0 );
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 31 downto 0 );
    tx_statistics_valid : out STD_LOGIC;
    tx_mac_aclk : out STD_LOGIC;
    tx_reset : out STD_LOGIC;
    tx_axis_mac_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_mac_tvalid : in STD_LOGIC;
    tx_axis_mac_tlast : in STD_LOGIC;
    tx_axis_mac_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_axis_mac_tready : out STD_LOGIC;
    pause_req : in STD_LOGIC;
    pause_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_enable : in STD_LOGIC;
    speedis100 : out STD_LOGIC;
    speedis10100 : out STD_LOGIC;
    gmii_txd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : out STD_LOGIC;
    gmii_tx_er : out STD_LOGIC;
    gmii_rxd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : in STD_LOGIC;
    gmii_rx_er : in STD_LOGIC;
    mdio_i : in STD_LOGIC;
    mdio_o : out STD_LOGIC;
    mdio_t : out STD_LOGIC;
    mdc : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_resetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    mac_irq : out STD_LOGIC
  );
  end component ACL_axi_eth_0_0_bd_fd73_mac_0;
  component ACL_axi_eth_0_0_bd_fd73_pcs_pma_0 is
  port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    sgmii_clk_r : out STD_LOGIC;
    sgmii_clk_f : out STD_LOGIC;
    sgmii_clk_en : out STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    ext_mdc : out STD_LOGIC;
    ext_mdio_i : in STD_LOGIC;
    ext_mdio_o : out STD_LOGIC;
    ext_mdio_t : out STD_LOGIC;
    mdio_t_in : in STD_LOGIC;
    mdc : in STD_LOGIC;
    mdio_i : in STD_LOGIC;
    mdio_o : out STD_LOGIC;
    mdio_t : out STD_LOGIC;
    phyaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    configuration_valid : in STD_LOGIC;
    an_interrupt : out STD_LOGIC;
    an_adv_config_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    an_adv_config_val : in STD_LOGIC;
    an_restart_config : in STD_LOGIC;
    speed_is_10_100 : in STD_LOGIC;
    speed_is_100 : in STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    gtpowergood : out STD_LOGIC;
    signal_detect : in STD_LOGIC
  );
  end component ACL_axi_eth_0_0_bd_fd73_pcs_pma_0;
  component ACL_axi_eth_0_0_bd_fd73_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ACL_axi_eth_0_0_bd_fd73_util_vector_logic_0_0;
  signal SCLR : STD_LOGIC;
  signal c_counter_binary_0_THRESH0 : STD_LOGIC;
  signal eth_buf_RESET2PCSPMA : STD_LOGIC;
  signal eth_buf_RESET2TEMACn : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_ARADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal eth_buf_S_AXI_2TEMAC_ARREADY : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_ARVALID : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_AWADDR : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal eth_buf_S_AXI_2TEMAC_AWREADY : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_AWVALID : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_BREADY : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal eth_buf_S_AXI_2TEMAC_BVALID : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal eth_buf_S_AXI_2TEMAC_RREADY : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal eth_buf_S_AXI_2TEMAC_RVALID : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal eth_buf_S_AXI_2TEMAC_WREADY : STD_LOGIC;
  signal eth_buf_S_AXI_2TEMAC_WVALID : STD_LOGIC;
  signal eth_buf_TX_AXIS_MAC_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal eth_buf_TX_AXIS_MAC_TLAST : STD_LOGIC;
  signal eth_buf_TX_AXIS_MAC_TREADY : STD_LOGIC;
  signal eth_buf_TX_AXIS_MAC_TUSER : STD_LOGIC;
  signal eth_buf_TX_AXIS_MAC_TVALID : STD_LOGIC;
  signal eth_buf_pause_req : STD_LOGIC;
  signal eth_buf_pause_val : STD_LOGIC_VECTOR ( 16 to 31 );
  signal eth_buf_tx_ifg_delay : STD_LOGIC_VECTOR ( 24 to 31 );
  signal mac_gmii_RXD : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mac_gmii_RX_DV : STD_LOGIC;
  signal mac_gmii_RX_ER : STD_LOGIC;
  signal mac_gmii_TXD : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mac_gmii_TX_EN : STD_LOGIC;
  signal mac_gmii_TX_ER : STD_LOGIC;
  signal mac_m_axis_rx_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mac_m_axis_rx_TLAST : STD_LOGIC;
  signal mac_m_axis_rx_TUSER : STD_LOGIC;
  signal mac_m_axis_rx_TVALID : STD_LOGIC;
  signal mac_mdc : STD_LOGIC;
  signal mac_mdio_o : STD_LOGIC;
  signal mac_mdio_t : STD_LOGIC;
  signal mac_rx_mac_aclk : STD_LOGIC;
  signal mac_rx_reset : STD_LOGIC;
  signal mac_rx_statistics_valid : STD_LOGIC;
  signal mac_rx_statistics_vector : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal mac_speedis100 : STD_LOGIC;
  signal mac_speedis10100 : STD_LOGIC;
  signal mac_tx_mac_aclk : STD_LOGIC;
  signal mac_tx_reset : STD_LOGIC;
  signal \^mmcm_locked_out\ : STD_LOGIC;
  signal pcs_pma_an_interrupt : STD_LOGIC;
  signal pcs_pma_mdio_o : STD_LOGIC;
  signal pcs_pma_resetdone : STD_LOGIC;
  signal pcs_pma_sgmii_clk_en : STD_LOGIC;
  signal pcs_pma_status_vector : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^userclk2_out\ : STD_LOGIC;
  signal NLW_c_counter_binary_0_Q_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_eth_buf_PHY_RST_N_UNCONNECTED : STD_LOGIC;
  signal NLW_eth_buf_mdc_top_UNCONNECTED : STD_LOGIC;
  signal NLW_eth_buf_mdio_i_temac_UNCONNECTED : STD_LOGIC;
  signal NLW_eth_buf_mdio_o_top_UNCONNECTED : STD_LOGIC;
  signal NLW_eth_buf_mdio_t_top_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_tx_statistics_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_mac_rx_axis_filter_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_mac_tx_statistics_vector_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_pcs_pma_gmii_isolate_UNCONNECTED : STD_LOGIC;
  signal NLW_pcs_pma_mdio_t_UNCONNECTED : STD_LOGIC;
  signal NLW_pcs_pma_sgmii_clk_f_UNCONNECTED : STD_LOGIC;
  signal NLW_pcs_pma_sgmii_clk_r_UNCONNECTED : STD_LOGIC;
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of c_counter_binary_0 : label is "c_counter_binary_v12_0_17,Vivado 2023.2";
  attribute syn_black_box : string;
  attribute syn_black_box of c_counter_binary_0 : label is "TRUE";
  attribute X_CORE_INFO of c_shift_ram_0 : label is "c_shift_ram_v12_0_15,Vivado 2023.2";
  attribute syn_black_box of c_shift_ram_0 : label is "TRUE";
  attribute X_CORE_INFO of eth_buf : label is "axi_ethernet_buffer_v2_0_24,Vivado 2023.2";
  attribute syn_black_box of eth_buf : label is "TRUE";
  attribute X_CORE_INFO of mac : label is "bd_fd73_mac_0_block,Vivado 2023.2";
  attribute syn_black_box of mac : label is "TRUE";
  attribute X_CORE_INFO of pcs_pma : label is "gig_ethernet_pcs_pma_v16_2_15,Vivado 2023.2";
  attribute syn_black_box of pcs_pma : label is "TRUE";
  attribute X_CORE_INFO of util_vector_logic_0 : label is "util_vector_logic_v2_0_3_util_vector_logic,Vivado 2023.2";
  attribute syn_black_box of util_vector_logic_0 : label is "TRUE";
  attribute x_interface_info : string;
  attribute x_interface_info of axi_rxd_arstn : signal is "xilinx.com:signal:reset:1.0 RST.AXI_RXD_ARSTN RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axi_rxd_arstn : signal is "XIL_INTERFACENAME RST.AXI_RXD_ARSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of axi_rxs_arstn : signal is "xilinx.com:signal:reset:1.0 RST.AXI_RXS_ARSTN RST";
  attribute x_interface_parameter of axi_rxs_arstn : signal is "XIL_INTERFACENAME RST.AXI_RXS_ARSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of axi_txc_arstn : signal is "xilinx.com:signal:reset:1.0 RST.AXI_TXC_ARSTN RST";
  attribute x_interface_parameter of axi_txc_arstn : signal is "XIL_INTERFACENAME RST.AXI_TXC_ARSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of axi_txd_arstn : signal is "xilinx.com:signal:reset:1.0 RST.AXI_TXD_ARSTN RST";
  attribute x_interface_parameter of axi_txd_arstn : signal is "XIL_INTERFACENAME RST.AXI_TXD_ARSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of axis_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AXIS_CLK CLK";
  attribute x_interface_parameter of axis_clk : signal is "XIL_INTERFACENAME CLK.AXIS_CLK, ASSOCIATED_BUSIF m_axis_rxd:m_axis_rxs:s_axis_txc:s_axis_txd, ASSOCIATED_RESET axi_rxd_arstn:axi_rxs_arstn:axi_txc_arstn:axi_txd_arstn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of gtref_clk_out : signal is "xilinx.com:signal:clock:1.0 CLK.GTREF_CLK_OUT CLK";
  attribute x_interface_parameter of gtref_clk_out : signal is "XIL_INTERFACENAME CLK.GTREF_CLK_OUT, CLK_DOMAIN bd_fd73_pcs_pma_0_gtrefclk_out, FREQ_HZ 156250000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute x_interface_info of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT";
  attribute x_interface_parameter of interrupt : signal is "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute x_interface_info of m_axis_rxd_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TLAST";
  attribute x_interface_info of m_axis_rxd_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TREADY";
  attribute x_interface_info of m_axis_rxd_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TVALID";
  attribute x_interface_info of m_axis_rxs_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TLAST";
  attribute x_interface_info of m_axis_rxs_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TREADY";
  attribute x_interface_info of m_axis_rxs_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TVALID";
  attribute x_interface_info of mac_irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.MAC_IRQ INTERRUPT";
  attribute x_interface_parameter of mac_irq : signal is "XIL_INTERFACENAME INTR.MAC_IRQ, PortWidth 1, SENSITIVITY EDGE_RISING";
  attribute x_interface_info of mdio_mdc : signal is "xilinx.com:interface:mdio:1.0 mdio MDC";
  attribute x_interface_parameter of mdio_mdc : signal is "XIL_INTERFACENAME mdio, CAN_DEBUG false";
  attribute x_interface_info of mdio_mdio_i : signal is "xilinx.com:interface:mdio:1.0 mdio MDIO_I";
  attribute x_interface_info of mdio_mdio_o : signal is "xilinx.com:interface:mdio:1.0 mdio MDIO_O";
  attribute x_interface_info of mdio_mdio_t : signal is "xilinx.com:interface:mdio:1.0 mdio MDIO_T";
  attribute x_interface_info of mgt_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_N";
  attribute x_interface_parameter of mgt_clk_clk_n : signal is "XIL_INTERFACENAME mgt_clk, CAN_DEBUG false, FREQ_HZ 100000000, TYPE ETH_MGT_CLK";
  attribute x_interface_info of mgt_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_P";
  attribute x_interface_info of pma_reset_out : signal is "xilinx.com:signal:reset:1.0 RST.PMA_RESET_OUT RST";
  attribute x_interface_parameter of pma_reset_out : signal is "XIL_INTERFACENAME RST.PMA_RESET_OUT, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of ref_clk : signal is "xilinx.com:signal:clock:1.0 CLK.REF_CLK CLK";
  attribute x_interface_parameter of ref_clk : signal is "XIL_INTERFACENAME CLK.REF_CLK, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 1000000, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of rxuserclk2_out : signal is "xilinx.com:signal:clock:1.0 CLK.RXUSERCLK2_OUT CLK";
  attribute x_interface_parameter of rxuserclk2_out : signal is "XIL_INTERFACENAME CLK.RXUSERCLK2_OUT, CLK_DOMAIN bd_fd73_pcs_pma_0_rxuserclk2_out, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute x_interface_info of rxuserclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.RXUSERCLK_OUT CLK";
  attribute x_interface_parameter of rxuserclk_out : signal is "XIL_INTERFACENAME CLK.RXUSERCLK_OUT, CLK_DOMAIN bd_fd73_pcs_pma_0_rxuserclk_out, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_lite_clk : signal is "xilinx.com:signal:clock:1.0 CLK.S_AXI_LITE_CLK CLK";
  attribute x_interface_parameter of s_axi_lite_clk : signal is "XIL_INTERFACENAME CLK.S_AXI_LITE_CLK, ASSOCIATED_BUSIF s_axi, ASSOCIATED_CLKEN CE, ASSOCIATED_RESET s_axi_lite_resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of s_axi_lite_resetn : signal is "xilinx.com:signal:reset:1.0 RST.S_AXI_LITE_RESETN RST";
  attribute x_interface_parameter of s_axi_lite_resetn : signal is "XIL_INTERFACENAME RST.S_AXI_LITE_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of s_axis_txc_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TLAST";
  attribute x_interface_info of s_axis_txc_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TREADY";
  attribute x_interface_info of s_axis_txc_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TVALID";
  attribute x_interface_info of s_axis_txd_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TLAST";
  attribute x_interface_info of s_axis_txd_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TREADY";
  attribute x_interface_info of s_axis_txd_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TVALID";
  attribute x_interface_info of sgmii_rxn : signal is "xilinx.com:interface:sgmii:1.0 sgmii RXN";
  attribute x_interface_info of sgmii_rxp : signal is "xilinx.com:interface:sgmii:1.0 sgmii RXP";
  attribute x_interface_info of sgmii_txn : signal is "xilinx.com:interface:sgmii:1.0 sgmii TXN";
  attribute x_interface_info of sgmii_txp : signal is "xilinx.com:interface:sgmii:1.0 sgmii TXP";
  attribute x_interface_info of userclk2_out : signal is "xilinx.com:signal:clock:1.0 CLK.USERCLK2_OUT CLK";
  attribute x_interface_parameter of userclk2_out : signal is "XIL_INTERFACENAME CLK.USERCLK2_OUT, CLK_DOMAIN bd_fd73_pcs_pma_0_userclk2_out, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute x_interface_info of userclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.USERCLK_OUT CLK";
  attribute x_interface_parameter of userclk_out : signal is "XIL_INTERFACENAME CLK.USERCLK_OUT, CLK_DOMAIN bd_fd73_pcs_pma_0_userclk_out, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0";
  attribute x_interface_info of m_axis_rxd_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TDATA";
  attribute x_interface_parameter of m_axis_rxd_tdata : signal is "XIL_INTERFACENAME m_axis_rxd, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute x_interface_info of m_axis_rxd_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TKEEP";
  attribute x_interface_info of m_axis_rxs_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TDATA";
  attribute x_interface_parameter of m_axis_rxs_tdata : signal is "XIL_INTERFACENAME m_axis_rxs, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute x_interface_info of m_axis_rxs_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TKEEP";
  attribute x_interface_info of phy_rst_n : signal is "xilinx.com:signal:reset:1.0 RST.PHY_RST_N RST";
  attribute x_interface_parameter of phy_rst_n : signal is "XIL_INTERFACENAME RST.PHY_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_parameter of s_axi_araddr : signal is "XIL_INTERFACENAME s_axi, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute x_interface_info of s_axis_txc_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TDATA";
  attribute x_interface_parameter of s_axis_txc_tdata : signal is "XIL_INTERFACENAME s_axis_txc, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute x_interface_info of s_axis_txc_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TKEEP";
  attribute x_interface_info of s_axis_txd_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TDATA";
  attribute x_interface_parameter of s_axis_txd_tdata : signal is "XIL_INTERFACENAME s_axis_txd, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
  attribute x_interface_info of s_axis_txd_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TKEEP";
begin
  mmcm_locked_out <= \^mmcm_locked_out\;
  userclk2_out <= \^userclk2_out\;
c_counter_binary_0: component ACL_axi_eth_0_0_bd_fd73_c_counter_binary_0_0
     port map (
      CLK => s_axi_lite_clk,
      Q(23 downto 0) => NLW_c_counter_binary_0_Q_UNCONNECTED(23 downto 0),
      SCLR => SCLR,
      THRESH0 => c_counter_binary_0_THRESH0
    );
c_shift_ram_0: component ACL_axi_eth_0_0_bd_fd73_c_shift_ram_0_0
     port map (
      CE => c_counter_binary_0_THRESH0,
      CLK => s_axi_lite_clk,
      D(0) => '1',
      Q(0) => phy_rst_n(0),
      SCLR => SCLR
    );
eth_buf: component ACL_axi_eth_0_0_bd_fd73_eth_buf_0
     port map (
      AXI_STR_RXD_ACLK => axis_clk,
      AXI_STR_RXD_ARESETN => axi_rxd_arstn,
      AXI_STR_RXD_DATA(31 downto 0) => m_axis_rxd_tdata(31 downto 0),
      AXI_STR_RXD_KEEP(3 downto 0) => m_axis_rxd_tkeep(3 downto 0),
      AXI_STR_RXD_LAST => m_axis_rxd_tlast,
      AXI_STR_RXD_READY => m_axis_rxd_tready,
      AXI_STR_RXD_VALID => m_axis_rxd_tvalid,
      AXI_STR_RXS_ACLK => axis_clk,
      AXI_STR_RXS_ARESETN => axi_rxs_arstn,
      AXI_STR_RXS_DATA(31 downto 0) => m_axis_rxs_tdata(31 downto 0),
      AXI_STR_RXS_KEEP(3 downto 0) => m_axis_rxs_tkeep(3 downto 0),
      AXI_STR_RXS_LAST => m_axis_rxs_tlast,
      AXI_STR_RXS_READY => m_axis_rxs_tready,
      AXI_STR_RXS_VALID => m_axis_rxs_tvalid,
      AXI_STR_TXC_ACLK => axis_clk,
      AXI_STR_TXC_ARESETN => axi_txc_arstn,
      AXI_STR_TXC_TDATA(31 downto 0) => s_axis_txc_tdata(31 downto 0),
      AXI_STR_TXC_TKEEP(3 downto 0) => s_axis_txc_tkeep(3 downto 0),
      AXI_STR_TXC_TLAST => s_axis_txc_tlast,
      AXI_STR_TXC_TREADY => s_axis_txc_tready,
      AXI_STR_TXC_TVALID => s_axis_txc_tvalid,
      AXI_STR_TXD_ACLK => axis_clk,
      AXI_STR_TXD_ARESETN => axi_txd_arstn,
      AXI_STR_TXD_TDATA(31 downto 0) => s_axis_txd_tdata(31 downto 0),
      AXI_STR_TXD_TKEEP(3 downto 0) => s_axis_txd_tkeep(3 downto 0),
      AXI_STR_TXD_TLAST => s_axis_txd_tlast,
      AXI_STR_TXD_TREADY => s_axis_txd_tready,
      AXI_STR_TXD_TVALID => s_axis_txd_tvalid,
      EMAC_CLIENT_AUTONEG_INT => pcs_pma_an_interrupt,
      EMAC_RESET_DONE_INT => pcs_pma_resetdone,
      EMAC_RX_DCM_LOCKED_INT => \^mmcm_locked_out\,
      GTX_CLK => \^userclk2_out\,
      INTERRUPT => interrupt,
      PCSPMA_STATUS_VECTOR(15 downto 0) => pcs_pma_status_vector(15 downto 0),
      PHY_RST_N => NLW_eth_buf_PHY_RST_N_UNCONNECTED,
      RESET2PCSPMA => eth_buf_RESET2PCSPMA,
      RESET2TEMACn => eth_buf_RESET2TEMACn,
      RX_CLK_ENABLE_IN => pcs_pma_sgmii_clk_en,
      S_AXI_2TEMAC_ARADDR(11 downto 0) => eth_buf_S_AXI_2TEMAC_ARADDR(11 downto 0),
      S_AXI_2TEMAC_ARREADY => eth_buf_S_AXI_2TEMAC_ARREADY,
      S_AXI_2TEMAC_ARVALID => eth_buf_S_AXI_2TEMAC_ARVALID,
      S_AXI_2TEMAC_AWADDR(11 downto 0) => eth_buf_S_AXI_2TEMAC_AWADDR(11 downto 0),
      S_AXI_2TEMAC_AWREADY => eth_buf_S_AXI_2TEMAC_AWREADY,
      S_AXI_2TEMAC_AWVALID => eth_buf_S_AXI_2TEMAC_AWVALID,
      S_AXI_2TEMAC_BREADY => eth_buf_S_AXI_2TEMAC_BREADY,
      S_AXI_2TEMAC_BRESP(1 downto 0) => eth_buf_S_AXI_2TEMAC_BRESP(1 downto 0),
      S_AXI_2TEMAC_BVALID => eth_buf_S_AXI_2TEMAC_BVALID,
      S_AXI_2TEMAC_RDATA(31 downto 0) => eth_buf_S_AXI_2TEMAC_RDATA(31 downto 0),
      S_AXI_2TEMAC_RREADY => eth_buf_S_AXI_2TEMAC_RREADY,
      S_AXI_2TEMAC_RRESP(1 downto 0) => eth_buf_S_AXI_2TEMAC_RRESP(1 downto 0),
      S_AXI_2TEMAC_RVALID => eth_buf_S_AXI_2TEMAC_RVALID,
      S_AXI_2TEMAC_WDATA(31 downto 0) => eth_buf_S_AXI_2TEMAC_WDATA(31 downto 0),
      S_AXI_2TEMAC_WREADY => eth_buf_S_AXI_2TEMAC_WREADY,
      S_AXI_2TEMAC_WVALID => eth_buf_S_AXI_2TEMAC_WVALID,
      S_AXI_ACLK => s_axi_lite_clk,
      S_AXI_ARADDR(17 downto 0) => s_axi_araddr(17 downto 0),
      S_AXI_ARESETN => s_axi_lite_resetn,
      S_AXI_ARREADY => s_axi_arready,
      S_AXI_ARVALID => s_axi_arvalid,
      S_AXI_AWADDR(17 downto 0) => s_axi_awaddr(17 downto 0),
      S_AXI_AWREADY => s_axi_awready,
      S_AXI_AWVALID => s_axi_awvalid,
      S_AXI_BREADY => s_axi_bready,
      S_AXI_BRESP(1 downto 0) => s_axi_bresp(1 downto 0),
      S_AXI_BVALID => s_axi_bvalid,
      S_AXI_RDATA(31 downto 0) => s_axi_rdata(31 downto 0),
      S_AXI_RREADY => s_axi_rready,
      S_AXI_RRESP(1 downto 0) => s_axi_rresp(1 downto 0),
      S_AXI_RVALID => s_axi_rvalid,
      S_AXI_WDATA(31 downto 0) => s_axi_wdata(31 downto 0),
      S_AXI_WREADY => s_axi_wready,
      S_AXI_WSTRB(3 downto 0) => s_axi_wstrb(3 downto 0),
      S_AXI_WVALID => s_axi_wvalid,
      mdc_temac => '1',
      mdc_top => NLW_eth_buf_mdc_top_UNCONNECTED,
      mdio_i_temac => NLW_eth_buf_mdio_i_temac_UNCONNECTED,
      mdio_i_top => '1',
      mdio_o_pcspma => '0',
      mdio_o_temac => '1',
      mdio_o_top => NLW_eth_buf_mdio_o_top_UNCONNECTED,
      mdio_t_pcspma => '0',
      mdio_t_temac => '1',
      mdio_t_top => NLW_eth_buf_mdio_t_top_UNCONNECTED,
      pause_req => eth_buf_pause_req,
      pause_val(16 to 31) => eth_buf_pause_val(16 to 31),
      rx_axis_mac_tdata(7 downto 0) => mac_m_axis_rx_TDATA(7 downto 0),
      rx_axis_mac_tlast => mac_m_axis_rx_TLAST,
      rx_axis_mac_tuser => mac_m_axis_rx_TUSER,
      rx_axis_mac_tvalid => mac_m_axis_rx_TVALID,
      rx_mac_aclk => mac_rx_mac_aclk,
      rx_reset => mac_rx_reset,
      rx_statistics_valid => mac_rx_statistics_valid,
      rx_statistics_vector(27 downto 0) => mac_rx_statistics_vector(27 downto 0),
      speed_is_10_100 => mac_speedis10100,
      tx_axis_mac_tdata(7 downto 0) => eth_buf_TX_AXIS_MAC_TDATA(7 downto 0),
      tx_axis_mac_tlast => eth_buf_TX_AXIS_MAC_TLAST,
      tx_axis_mac_tready => eth_buf_TX_AXIS_MAC_TREADY,
      tx_axis_mac_tuser(0) => eth_buf_TX_AXIS_MAC_TUSER,
      tx_axis_mac_tvalid => eth_buf_TX_AXIS_MAC_TVALID,
      tx_ifg_delay(24 to 31) => eth_buf_tx_ifg_delay(24 to 31),
      tx_mac_aclk => mac_tx_mac_aclk,
      tx_reset => mac_tx_reset
    );
mac: component ACL_axi_eth_0_0_bd_fd73_mac_0
     port map (
      clk_enable => pcs_pma_sgmii_clk_en,
      glbl_rstn => eth_buf_RESET2TEMACn,
      gmii_rx_dv => mac_gmii_RX_DV,
      gmii_rx_er => mac_gmii_RX_ER,
      gmii_rxd(7 downto 0) => mac_gmii_RXD(7 downto 0),
      gmii_tx_en => mac_gmii_TX_EN,
      gmii_tx_er => mac_gmii_TX_ER,
      gmii_txd(7 downto 0) => mac_gmii_TXD(7 downto 0),
      gtx_clk => \^userclk2_out\,
      mac_irq => mac_irq,
      mdc => mac_mdc,
      mdio_i => pcs_pma_mdio_o,
      mdio_o => mac_mdio_o,
      mdio_t => mac_mdio_t,
      pause_req => eth_buf_pause_req,
      pause_val(15) => eth_buf_pause_val(16),
      pause_val(14) => eth_buf_pause_val(17),
      pause_val(13) => eth_buf_pause_val(18),
      pause_val(12) => eth_buf_pause_val(19),
      pause_val(11) => eth_buf_pause_val(20),
      pause_val(10) => eth_buf_pause_val(21),
      pause_val(9) => eth_buf_pause_val(22),
      pause_val(8) => eth_buf_pause_val(23),
      pause_val(7) => eth_buf_pause_val(24),
      pause_val(6) => eth_buf_pause_val(25),
      pause_val(5) => eth_buf_pause_val(26),
      pause_val(4) => eth_buf_pause_val(27),
      pause_val(3) => eth_buf_pause_val(28),
      pause_val(2) => eth_buf_pause_val(29),
      pause_val(1) => eth_buf_pause_val(30),
      pause_val(0) => eth_buf_pause_val(31),
      rx_axi_rstn => eth_buf_RESET2TEMACn,
      rx_axis_filter_tuser(4 downto 0) => NLW_mac_rx_axis_filter_tuser_UNCONNECTED(4 downto 0),
      rx_axis_mac_tdata(7 downto 0) => mac_m_axis_rx_TDATA(7 downto 0),
      rx_axis_mac_tlast => mac_m_axis_rx_TLAST,
      rx_axis_mac_tuser => mac_m_axis_rx_TUSER,
      rx_axis_mac_tvalid => mac_m_axis_rx_TVALID,
      rx_mac_aclk => mac_rx_mac_aclk,
      rx_reset => mac_rx_reset,
      rx_statistics_valid => mac_rx_statistics_valid,
      rx_statistics_vector(27 downto 0) => mac_rx_statistics_vector(27 downto 0),
      s_axi_aclk => s_axi_lite_clk,
      s_axi_araddr(11 downto 0) => eth_buf_S_AXI_2TEMAC_ARADDR(11 downto 0),
      s_axi_arready => eth_buf_S_AXI_2TEMAC_ARREADY,
      s_axi_arvalid => eth_buf_S_AXI_2TEMAC_ARVALID,
      s_axi_awaddr(11 downto 0) => eth_buf_S_AXI_2TEMAC_AWADDR(11 downto 0),
      s_axi_awready => eth_buf_S_AXI_2TEMAC_AWREADY,
      s_axi_awvalid => eth_buf_S_AXI_2TEMAC_AWVALID,
      s_axi_bready => eth_buf_S_AXI_2TEMAC_BREADY,
      s_axi_bresp(1 downto 0) => eth_buf_S_AXI_2TEMAC_BRESP(1 downto 0),
      s_axi_bvalid => eth_buf_S_AXI_2TEMAC_BVALID,
      s_axi_rdata(31 downto 0) => eth_buf_S_AXI_2TEMAC_RDATA(31 downto 0),
      s_axi_resetn => s_axi_lite_resetn,
      s_axi_rready => eth_buf_S_AXI_2TEMAC_RREADY,
      s_axi_rresp(1 downto 0) => eth_buf_S_AXI_2TEMAC_RRESP(1 downto 0),
      s_axi_rvalid => eth_buf_S_AXI_2TEMAC_RVALID,
      s_axi_wdata(31 downto 0) => eth_buf_S_AXI_2TEMAC_WDATA(31 downto 0),
      s_axi_wready => eth_buf_S_AXI_2TEMAC_WREADY,
      s_axi_wvalid => eth_buf_S_AXI_2TEMAC_WVALID,
      speedis100 => mac_speedis100,
      speedis10100 => mac_speedis10100,
      tx_axi_rstn => eth_buf_RESET2TEMACn,
      tx_axis_mac_tdata(7 downto 0) => eth_buf_TX_AXIS_MAC_TDATA(7 downto 0),
      tx_axis_mac_tlast => eth_buf_TX_AXIS_MAC_TLAST,
      tx_axis_mac_tready => eth_buf_TX_AXIS_MAC_TREADY,
      tx_axis_mac_tuser(0) => eth_buf_TX_AXIS_MAC_TUSER,
      tx_axis_mac_tvalid => eth_buf_TX_AXIS_MAC_TVALID,
      tx_ifg_delay(7) => eth_buf_tx_ifg_delay(24),
      tx_ifg_delay(6) => eth_buf_tx_ifg_delay(25),
      tx_ifg_delay(5) => eth_buf_tx_ifg_delay(26),
      tx_ifg_delay(4) => eth_buf_tx_ifg_delay(27),
      tx_ifg_delay(3) => eth_buf_tx_ifg_delay(28),
      tx_ifg_delay(2) => eth_buf_tx_ifg_delay(29),
      tx_ifg_delay(1) => eth_buf_tx_ifg_delay(30),
      tx_ifg_delay(0) => eth_buf_tx_ifg_delay(31),
      tx_mac_aclk => mac_tx_mac_aclk,
      tx_reset => mac_tx_reset,
      tx_statistics_valid => NLW_mac_tx_statistics_valid_UNCONNECTED,
      tx_statistics_vector(31 downto 0) => NLW_mac_tx_statistics_vector_UNCONNECTED(31 downto 0)
    );
pcs_pma: component ACL_axi_eth_0_0_bd_fd73_pcs_pma_0
     port map (
      an_adv_config_val => '0',
      an_adv_config_vector(15 downto 0) => B"0000000000000000",
      an_interrupt => pcs_pma_an_interrupt,
      an_restart_config => '0',
      configuration_valid => '1',
      configuration_vector(4 downto 0) => B"10000",
      ext_mdc => mdio_mdc,
      ext_mdio_i => mdio_mdio_i,
      ext_mdio_o => mdio_mdio_o,
      ext_mdio_t => mdio_mdio_t,
      gmii_isolate => NLW_pcs_pma_gmii_isolate_UNCONNECTED,
      gmii_rx_dv => mac_gmii_RX_DV,
      gmii_rx_er => mac_gmii_RX_ER,
      gmii_rxd(7 downto 0) => mac_gmii_RXD(7 downto 0),
      gmii_tx_en => mac_gmii_TX_EN,
      gmii_tx_er => mac_gmii_TX_ER,
      gmii_txd(7 downto 0) => mac_gmii_TXD(7 downto 0),
      gtpowergood => gtpowergood,
      gtrefclk_n => mgt_clk_clk_n,
      gtrefclk_out => gtref_clk_out,
      gtrefclk_p => mgt_clk_clk_p,
      independent_clock_bufg => ref_clk,
      mdc => mac_mdc,
      mdio_i => mac_mdio_o,
      mdio_o => pcs_pma_mdio_o,
      mdio_t => NLW_pcs_pma_mdio_t_UNCONNECTED,
      mdio_t_in => mac_mdio_t,
      mmcm_locked_out => \^mmcm_locked_out\,
      phyaddr(4 downto 0) => B"00010",
      pma_reset_out => pma_reset_out,
      reset => eth_buf_RESET2PCSPMA,
      resetdone => pcs_pma_resetdone,
      rxn => sgmii_rxn,
      rxp => sgmii_rxp,
      rxuserclk2_out => rxuserclk2_out,
      rxuserclk_out => rxuserclk_out,
      sgmii_clk_en => pcs_pma_sgmii_clk_en,
      sgmii_clk_f => NLW_pcs_pma_sgmii_clk_f_UNCONNECTED,
      sgmii_clk_r => NLW_pcs_pma_sgmii_clk_r_UNCONNECTED,
      signal_detect => signal_detect,
      speed_is_100 => mac_speedis100,
      speed_is_10_100 => mac_speedis10100,
      status_vector(15 downto 0) => pcs_pma_status_vector(15 downto 0),
      txn => sgmii_txn,
      txp => sgmii_txp,
      userclk2_out => \^userclk2_out\,
      userclk_out => userclk_out
    );
util_vector_logic_0: component ACL_axi_eth_0_0_bd_fd73_util_vector_logic_0_0
     port map (
      Op1(0) => s_axi_lite_resetn,
      Res(0) => SCLR
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_axi_eth_0_0 is
  port (
    s_axi_lite_resetn : in STD_LOGIC;
    s_axi_lite_clk : in STD_LOGIC;
    mac_irq : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axi_txd_arstn : in STD_LOGIC;
    axi_txc_arstn : in STD_LOGIC;
    axi_rxd_arstn : in STD_LOGIC;
    axi_rxs_arstn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    signal_detect : in STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    gtpowergood : out STD_LOGIC;
    phy_rst_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ref_clk : in STD_LOGIC;
    gtref_clk_out : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axis_txc_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txc_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txc_tlast : in STD_LOGIC;
    s_axis_txc_tready : out STD_LOGIC;
    s_axis_txc_tvalid : in STD_LOGIC;
    s_axis_txd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_txd_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_txd_tlast : in STD_LOGIC;
    s_axis_txd_tready : out STD_LOGIC;
    s_axis_txd_tvalid : in STD_LOGIC;
    m_axis_rxd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxd_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxd_tlast : out STD_LOGIC;
    m_axis_rxd_tready : in STD_LOGIC;
    m_axis_rxd_tvalid : out STD_LOGIC;
    m_axis_rxs_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_rxs_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_rxs_tlast : out STD_LOGIC;
    m_axis_rxs_tready : in STD_LOGIC;
    m_axis_rxs_tvalid : out STD_LOGIC;
    sgmii_rxn : in STD_LOGIC;
    sgmii_rxp : in STD_LOGIC;
    sgmii_txn : out STD_LOGIC;
    sgmii_txp : out STD_LOGIC;
    mdio_mdc : out STD_LOGIC;
    mdio_mdio_i : in STD_LOGIC;
    mdio_mdio_o : out STD_LOGIC;
    mdio_mdio_t : out STD_LOGIC;
    mgt_clk_clk_n : in STD_LOGIC;
    mgt_clk_clk_p : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ACL_axi_eth_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ACL_axi_eth_0_0 : entity is "ACL_axi_eth_0_0,bd_fd73,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ACL_axi_eth_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ACL_axi_eth_0_0 : entity is "bd_fd73,Vivado 2023.2";
end ACL_axi_eth_0_0;

architecture STRUCTURE of ACL_axi_eth_0_0 is
  attribute hw_handoff : string;
  attribute hw_handoff of U0 : label is "ACL_axi_eth_0_0.hwdef";
  attribute x_interface_info : string;
  attribute x_interface_info of axi_rxd_arstn : signal is "xilinx.com:signal:reset:1.0 RST.axi_rxd_arstn RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of axi_rxd_arstn : signal is "XIL_INTERFACENAME RST.axi_rxd_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of axi_rxs_arstn : signal is "xilinx.com:signal:reset:1.0 RST.axi_rxs_arstn RST";
  attribute x_interface_parameter of axi_rxs_arstn : signal is "XIL_INTERFACENAME RST.axi_rxs_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of axi_txc_arstn : signal is "xilinx.com:signal:reset:1.0 RST.axi_txc_arstn RST";
  attribute x_interface_parameter of axi_txc_arstn : signal is "XIL_INTERFACENAME RST.axi_txc_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of axi_txd_arstn : signal is "xilinx.com:signal:reset:1.0 RST.axi_txd_arstn RST";
  attribute x_interface_parameter of axi_txd_arstn : signal is "XIL_INTERFACENAME RST.axi_txd_arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of axis_clk : signal is "xilinx.com:signal:clock:1.0 CLK.axis_clk CLK";
  attribute x_interface_parameter of axis_clk : signal is "XIL_INTERFACENAME CLK.axis_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF m_axis_rxd:m_axis_rxs:s_axis_txc:s_axis_txd, ASSOCIATED_RESET axi_rxd_arstn:axi_rxs_arstn:axi_txc_arstn:axi_txd_arstn, INSERT_VIP 0";
  attribute x_interface_info of gtref_clk_out : signal is "xilinx.com:signal:clock:1.0 CLK.gtref_clk_out CLK";
  attribute x_interface_parameter of gtref_clk_out : signal is "XIL_INTERFACENAME CLK.gtref_clk_out, FREQ_HZ 156250000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_gtrefclk_out, INSERT_VIP 0";
  attribute x_interface_info of interrupt : signal is "xilinx.com:signal:interrupt:1.0 INTR.interrupt INTERRUPT";
  attribute x_interface_parameter of interrupt : signal is "XIL_INTERFACENAME INTR.interrupt, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  attribute x_interface_info of m_axis_rxd_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TLAST";
  attribute x_interface_info of m_axis_rxd_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TREADY";
  attribute x_interface_info of m_axis_rxd_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TVALID";
  attribute x_interface_info of m_axis_rxs_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TLAST";
  attribute x_interface_info of m_axis_rxs_tready : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TREADY";
  attribute x_interface_info of m_axis_rxs_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TVALID";
  attribute x_interface_info of mac_irq : signal is "xilinx.com:signal:interrupt:1.0 INTR.mac_irq INTERRUPT";
  attribute x_interface_parameter of mac_irq : signal is "XIL_INTERFACENAME INTR.mac_irq, SENSITIVITY EDGE_RISING, PORTWIDTH 1";
  attribute x_interface_info of mdio_mdc : signal is "xilinx.com:interface:mdio:1.0 mdio MDC";
  attribute x_interface_parameter of mdio_mdc : signal is "XIL_INTERFACENAME mdio, CAN_DEBUG false, BOARD.ASSOCIATED_PARAM MDIO_BOARD_INTERFACE";
  attribute x_interface_info of mdio_mdio_i : signal is "xilinx.com:interface:mdio:1.0 mdio MDIO_I";
  attribute x_interface_info of mdio_mdio_o : signal is "xilinx.com:interface:mdio:1.0 mdio MDIO_O";
  attribute x_interface_info of mdio_mdio_t : signal is "xilinx.com:interface:mdio:1.0 mdio MDIO_T";
  attribute x_interface_info of mgt_clk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_N";
  attribute x_interface_parameter of mgt_clk_clk_n : signal is "XIL_INTERFACENAME mgt_clk, CAN_DEBUG false, FREQ_HZ 100000000, TYPE ETH_MGT_CLK, BOARD.ASSOCIATED_PARAM DIFFCLK_BOARD_INTERFACE";
  attribute x_interface_info of mgt_clk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 mgt_clk CLK_P";
  attribute x_interface_info of pma_reset_out : signal is "xilinx.com:signal:reset:1.0 RST.pma_reset_out RST";
  attribute x_interface_parameter of pma_reset_out : signal is "XIL_INTERFACENAME RST.pma_reset_out, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of ref_clk : signal is "xilinx.com:signal:clock:1.0 CLK.ref_clk CLK";
  attribute x_interface_parameter of ref_clk : signal is "XIL_INTERFACENAME CLK.ref_clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 1000000, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of rxuserclk2_out : signal is "xilinx.com:signal:clock:1.0 CLK.rxuserclk2_out CLK";
  attribute x_interface_parameter of rxuserclk2_out : signal is "XIL_INTERFACENAME CLK.rxuserclk2_out, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_rxuserclk2_out, INSERT_VIP 0";
  attribute x_interface_info of rxuserclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.rxuserclk_out CLK";
  attribute x_interface_parameter of rxuserclk_out : signal is "XIL_INTERFACENAME CLK.rxuserclk_out, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_rxuserclk_out, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_lite_clk : signal is "xilinx.com:signal:clock:1.0 CLK.s_axi_lite_clk CLK";
  attribute x_interface_parameter of s_axi_lite_clk : signal is "XIL_INTERFACENAME CLK.s_axi_lite_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_lite_resetn, INSERT_VIP 0, ASSOCIATED_CLKEN CE";
  attribute x_interface_info of s_axi_lite_resetn : signal is "xilinx.com:signal:reset:1.0 RST.s_axi_lite_resetn RST";
  attribute x_interface_parameter of s_axi_lite_resetn : signal is "XIL_INTERFACENAME RST.s_axi_lite_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of s_axis_txc_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TLAST";
  attribute x_interface_info of s_axis_txc_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TREADY";
  attribute x_interface_info of s_axis_txc_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TVALID";
  attribute x_interface_info of s_axis_txd_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TLAST";
  attribute x_interface_info of s_axis_txd_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TREADY";
  attribute x_interface_info of s_axis_txd_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TVALID";
  attribute x_interface_info of sgmii_rxn : signal is "xilinx.com:interface:sgmii:1.0 sgmii RXN";
  attribute x_interface_parameter of sgmii_rxn : signal is "XIL_INTERFACENAME sgmii, BOARD.ASSOCIATED_PARAM ETHERNET_BOARD_INTERFACE";
  attribute x_interface_info of sgmii_rxp : signal is "xilinx.com:interface:sgmii:1.0 sgmii RXP";
  attribute x_interface_info of sgmii_txn : signal is "xilinx.com:interface:sgmii:1.0 sgmii TXN";
  attribute x_interface_info of sgmii_txp : signal is "xilinx.com:interface:sgmii:1.0 sgmii TXP";
  attribute x_interface_info of userclk2_out : signal is "xilinx.com:signal:clock:1.0 CLK.userclk2_out CLK";
  attribute x_interface_parameter of userclk2_out : signal is "XIL_INTERFACENAME CLK.userclk2_out, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_userclk2_out, INSERT_VIP 0";
  attribute x_interface_info of userclk_out : signal is "xilinx.com:signal:clock:1.0 CLK.userclk_out CLK";
  attribute x_interface_parameter of userclk_out : signal is "XIL_INTERFACENAME CLK.userclk_out, FREQ_HZ 62500000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_fd73_pcs_pma_0_userclk_out, INSERT_VIP 0";
  attribute x_interface_info of m_axis_rxd_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TDATA";
  attribute x_interface_parameter of m_axis_rxd_tdata : signal is "XIL_INTERFACENAME m_axis_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_rxd_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_rxd TKEEP";
  attribute x_interface_info of m_axis_rxs_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TDATA";
  attribute x_interface_parameter of m_axis_rxs_tdata : signal is "XIL_INTERFACENAME m_axis_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_rxs_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis_rxs TKEEP";
  attribute x_interface_info of phy_rst_n : signal is "xilinx.com:signal:reset:1.0 RST.phy_rst_n RST";
  attribute x_interface_parameter of phy_rst_n : signal is "XIL_INTERFACENAME RST.phy_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0, BOARD.ASSOCIATED_PARAM PHYRST_BOARD_INTERFACE";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_parameter of s_axi_araddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute x_interface_info of s_axis_txc_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TDATA";
  attribute x_interface_parameter of s_axis_txc_tdata : signal is "XIL_INTERFACENAME s_axis_txc, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_txc_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis_txc TKEEP";
  attribute x_interface_info of s_axis_txd_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TDATA";
  attribute x_interface_parameter of s_axis_txd_tdata : signal is "XIL_INTERFACENAME s_axis_txd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_txd_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis_txd TKEEP";
begin
U0: entity work.ACL_axi_eth_0_0_bd_fd73
     port map (
      axi_rxd_arstn => axi_rxd_arstn,
      axi_rxs_arstn => axi_rxs_arstn,
      axi_txc_arstn => axi_txc_arstn,
      axi_txd_arstn => axi_txd_arstn,
      axis_clk => axis_clk,
      gtpowergood => gtpowergood,
      gtref_clk_out => gtref_clk_out,
      interrupt => interrupt,
      m_axis_rxd_tdata(31 downto 0) => m_axis_rxd_tdata(31 downto 0),
      m_axis_rxd_tkeep(3 downto 0) => m_axis_rxd_tkeep(3 downto 0),
      m_axis_rxd_tlast => m_axis_rxd_tlast,
      m_axis_rxd_tready => m_axis_rxd_tready,
      m_axis_rxd_tvalid => m_axis_rxd_tvalid,
      m_axis_rxs_tdata(31 downto 0) => m_axis_rxs_tdata(31 downto 0),
      m_axis_rxs_tkeep(3 downto 0) => m_axis_rxs_tkeep(3 downto 0),
      m_axis_rxs_tlast => m_axis_rxs_tlast,
      m_axis_rxs_tready => m_axis_rxs_tready,
      m_axis_rxs_tvalid => m_axis_rxs_tvalid,
      mac_irq => mac_irq,
      mdio_mdc => mdio_mdc,
      mdio_mdio_i => mdio_mdio_i,
      mdio_mdio_o => mdio_mdio_o,
      mdio_mdio_t => mdio_mdio_t,
      mgt_clk_clk_n => mgt_clk_clk_n,
      mgt_clk_clk_p => mgt_clk_clk_p,
      mmcm_locked_out => mmcm_locked_out,
      phy_rst_n(0) => phy_rst_n(0),
      pma_reset_out => pma_reset_out,
      ref_clk => ref_clk,
      rxuserclk2_out => rxuserclk2_out,
      rxuserclk_out => rxuserclk_out,
      s_axi_araddr(17 downto 0) => s_axi_araddr(17 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(17 downto 0) => s_axi_awaddr(17 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_lite_clk => s_axi_lite_clk,
      s_axi_lite_resetn => s_axi_lite_resetn,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_txc_tdata(31 downto 0) => s_axis_txc_tdata(31 downto 0),
      s_axis_txc_tkeep(3 downto 0) => s_axis_txc_tkeep(3 downto 0),
      s_axis_txc_tlast => s_axis_txc_tlast,
      s_axis_txc_tready => s_axis_txc_tready,
      s_axis_txc_tvalid => s_axis_txc_tvalid,
      s_axis_txd_tdata(31 downto 0) => s_axis_txd_tdata(31 downto 0),
      s_axis_txd_tkeep(3 downto 0) => s_axis_txd_tkeep(3 downto 0),
      s_axis_txd_tlast => s_axis_txd_tlast,
      s_axis_txd_tready => s_axis_txd_tready,
      s_axis_txd_tvalid => s_axis_txd_tvalid,
      sgmii_rxn => sgmii_rxn,
      sgmii_rxp => sgmii_rxp,
      sgmii_txn => sgmii_txn,
      sgmii_txp => sgmii_txp,
      signal_detect => signal_detect,
      userclk2_out => userclk2_out,
      userclk_out => userclk_out
    );
end STRUCTURE;
