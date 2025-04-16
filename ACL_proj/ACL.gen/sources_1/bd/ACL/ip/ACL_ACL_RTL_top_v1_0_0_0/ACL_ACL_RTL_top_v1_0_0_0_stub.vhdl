-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 16 16:27:01 2025
-- Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_ACL_RTL_top_v1_0_0_0/ACL_ACL_RTL_top_v1_0_0_0_stub.vhdl
-- Design      : ACL_ACL_RTL_top_v1_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ACL_ACL_RTL_top_v1_0_0_0 is
  Port ( 
    s_axi_rxd_aclk : in STD_LOGIC;
    s_axi_rxd_aresetn : in STD_LOGIC;
    s_axi_rxd_tready : out STD_LOGIC;
    s_axi_rxd_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rxd_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rxd_tlast : in STD_LOGIC;
    s_axi_rxd_tvalid : in STD_LOGIC;
    s_axi_rxs_aclk : in STD_LOGIC;
    s_axi_rxs_aresetn : in STD_LOGIC;
    s_axi_rxs_tready : out STD_LOGIC;
    s_axi_rxs_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rxs_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rxs_tlast : in STD_LOGIC;
    s_axi_rxs_tvalid : in STD_LOGIC;
    m_axi_rxd_aclk : in STD_LOGIC;
    m_axi_rxd_aresetn : in STD_LOGIC;
    m_axi_rxd_tvalid : out STD_LOGIC;
    m_axi_rxd_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rxd_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rxd_tlast : out STD_LOGIC;
    m_axi_rxd_tready : in STD_LOGIC;
    m_axi_rxs_aclk : in STD_LOGIC;
    m_axi_rxs_aresetn : in STD_LOGIC;
    m_axi_rxs_tvalid : out STD_LOGIC;
    m_axi_rxs_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rxs_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rxs_tlast : out STD_LOGIC;
    m_axi_rxs_tready : in STD_LOGIC
  );

end ACL_ACL_RTL_top_v1_0_0_0;

architecture stub of ACL_ACL_RTL_top_v1_0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_rxd_aclk,s_axi_rxd_aresetn,s_axi_rxd_tready,s_axi_rxd_tdata[31:0],s_axi_rxd_tstrb[3:0],s_axi_rxd_tlast,s_axi_rxd_tvalid,s_axi_rxs_aclk,s_axi_rxs_aresetn,s_axi_rxs_tready,s_axi_rxs_tdata[31:0],s_axi_rxs_tstrb[3:0],s_axi_rxs_tlast,s_axi_rxs_tvalid,m_axi_rxd_aclk,m_axi_rxd_aresetn,m_axi_rxd_tvalid,m_axi_rxd_tdata[31:0],m_axi_rxd_tstrb[3:0],m_axi_rxd_tlast,m_axi_rxd_tready,m_axi_rxs_aclk,m_axi_rxs_aresetn,m_axi_rxs_tvalid,m_axi_rxs_tdata[31:0],m_axi_rxs_tstrb[3:0],m_axi_rxs_tlast,m_axi_rxs_tready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ACL_RTL_top_v1_0,Vivado 2023.2";
begin
end;
