-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 16 16:27:01 2025
-- Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_ACL_RTL_top_v1_0_0_0/ACL_ACL_RTL_top_v1_0_0_0_sim_netlist.vhdl
-- Design      : ACL_ACL_RTL_top_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxd is
  port (
    m_axi_rxd_tvalid : out STD_LOGIC;
    m_axi_rxd_tlast : out STD_LOGIC;
    m_axi_rxd_tdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rxd_aclk : in STD_LOGIC;
    m_axi_rxd_tready : in STD_LOGIC;
    m_axi_rxd_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxd : entity is "ACL_RTL_top_v1_0_m_axi_rxd";
end ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxd;

architecture STRUCTURE of ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxd is
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast__0\ : STD_LOGIC;
  signal axis_tvalid_delay_i_1_n_0 : STD_LOGIC;
  signal axis_tvalid_delay_i_2_n_0 : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mst_exec_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal read_pointer : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \stream_data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "init_counter:01,send_stream:10,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "init_counter:01,send_stream:10,idle:00";
  attribute SOFT_HLUTNM of axis_tlast : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \stream_data_out[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \stream_data_out[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \stream_data_out[3]_i_2\ : label is "soft_lutpair2";
begin
\FSM_sequential_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I2 => mst_exec_state(0),
      O => \mst_exec_state__0\(0)
    );
\FSM_sequential_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      O => \mst_exec_state__0\(1)
    );
\FSM_sequential_mst_exec_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(4),
      I4 => count_reg(2),
      O => \FSM_sequential_mst_exec_state[1]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxd_aclk,
      CE => '1',
      D => \mst_exec_state__0\(0),
      Q => mst_exec_state(0),
      R => axis_tvalid_delay_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxd_aclk,
      CE => '1',
      D => \mst_exec_state__0\(1),
      Q => mst_exec_state(1),
      R => axis_tvalid_delay_i_1_n_0
    );
axis_tlast: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_pointer(1),
      I1 => read_pointer(2),
      I2 => read_pointer(0),
      O => \axis_tlast__0\
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => '1',
      D => \axis_tlast__0\,
      Q => m_axi_rxd_tlast,
      R => axis_tvalid_delay_i_1_n_0
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axi_rxd_aresetn,
      O => axis_tvalid_delay_i_1_n_0
    );
axis_tvalid_delay_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      O => axis_tvalid_delay_i_2_n_0
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => '1',
      D => axis_tvalid_delay_i_2_n_0,
      Q => m_axi_rxd_tvalid,
      R => axis_tvalid_delay_i_1_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => plusOp(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => count_reg(3),
      O => plusOp(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      O => count
    );
\count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      I4 => count_reg(4),
      O => plusOp(4)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => count,
      D => plusOp(0),
      Q => count_reg(0),
      R => axis_tvalid_delay_i_1_n_0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => count,
      D => plusOp(1),
      Q => count_reg(1),
      R => axis_tvalid_delay_i_1_n_0
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => count,
      D => \count[2]_i_1_n_0\,
      Q => count_reg(2),
      R => axis_tvalid_delay_i_1_n_0
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => count,
      D => plusOp(3),
      Q => count_reg(3),
      R => axis_tvalid_delay_i_1_n_0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => count,
      D => plusOp(4),
      Q => count_reg(4),
      R => axis_tvalid_delay_i_1_n_0
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxd_aclk,
      CE => tx_en,
      D => \stream_data_out[0]_i_1_n_0\,
      Q => read_pointer(0),
      R => axis_tvalid_delay_i_1_n_0
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxd_aclk,
      CE => tx_en,
      D => \stream_data_out[1]_i_1_n_0\,
      Q => read_pointer(1),
      R => axis_tvalid_delay_i_1_n_0
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxd_aclk,
      CE => tx_en,
      D => \stream_data_out[2]_i_1_n_0\,
      Q => read_pointer(2),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_pointer(0),
      O => \stream_data_out[0]_i_1_n_0\
    );
\stream_data_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer(0),
      I1 => read_pointer(1),
      O => \stream_data_out[1]_i_1_n_0\
    );
\stream_data_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_pointer(0),
      I1 => read_pointer(1),
      I2 => read_pointer(2),
      O => \stream_data_out[2]_i_1_n_0\
    );
\stream_data_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axi_rxd_tready,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      O => tx_en
    );
\stream_data_out[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_pointer(2),
      I1 => read_pointer(0),
      I2 => read_pointer(1),
      O => \stream_data_out[3]_i_2_n_0\
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_rxd_aclk,
      CE => tx_en,
      D => \stream_data_out[0]_i_1_n_0\,
      Q => m_axi_rxd_tdata(0),
      S => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => tx_en,
      D => \stream_data_out[1]_i_1_n_0\,
      Q => m_axi_rxd_tdata(1),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => tx_en,
      D => \stream_data_out[2]_i_1_n_0\,
      Q => m_axi_rxd_tdata(2),
      R => axis_tvalid_delay_i_1_n_0
    );
\stream_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxd_aclk,
      CE => tx_en,
      D => \stream_data_out[3]_i_2_n_0\,
      Q => m_axi_rxd_tdata(3),
      R => axis_tvalid_delay_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxs is
  port (
    m_axi_rxs_tvalid : out STD_LOGIC;
    m_axi_rxs_tlast : out STD_LOGIC;
    m_axi_rxs_tdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rxs_aclk : in STD_LOGIC;
    m_axi_rxs_tready : in STD_LOGIC;
    m_axi_rxs_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxs : entity is "ACL_RTL_top_v1_0_m_axi_rxs";
end ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxs;

architecture STRUCTURE of ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxs is
  signal \FSM_sequential_mst_exec_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal axis_tlast_n_0 : STD_LOGIC;
  signal \axis_tvalid_delay_i_1__0_n_0\ : STD_LOGIC;
  signal \axis_tvalid_delay_i_2__0_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \mst_exec_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \read_pointer_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_pointer_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_pointer_reg_n_0_[2]\ : STD_LOGIC;
  signal \stream_data_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \stream_data_out[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \stream_data_out[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \stream_data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[0]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_2__0\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "init_counter:01,send_stream:10,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "init_counter:01,send_stream:10,idle:00";
  attribute SOFT_HLUTNM of axis_tlast : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[0]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[3]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[4]_i_2__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \stream_data_out[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \stream_data_out[2]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \stream_data_out[3]_i_2\ : label is "soft_lutpair8";
begin
\FSM_sequential_mst_exec_state[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => \FSM_sequential_mst_exec_state[1]_i_2__0_n_0\,
      I2 => mst_exec_state(0),
      O => \mst_exec_state__0\(0)
    );
\FSM_sequential_mst_exec_state[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[1]_i_2__0_n_0\,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      O => \mst_exec_state__0\(1)
    );
\FSM_sequential_mst_exec_state[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(4),
      I4 => count_reg(2),
      O => \FSM_sequential_mst_exec_state[1]_i_2__0_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxs_aclk,
      CE => '1',
      D => \mst_exec_state__0\(0),
      Q => mst_exec_state(0),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxs_aclk,
      CE => '1',
      D => \mst_exec_state__0\(1),
      Q => mst_exec_state(1),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
axis_tlast: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[1]\,
      I1 => \read_pointer_reg_n_0_[2]\,
      I2 => \read_pointer_reg_n_0_[0]\,
      O => axis_tlast_n_0
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => '1',
      D => axis_tlast_n_0,
      Q => m_axi_rxs_tlast,
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\axis_tvalid_delay_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axi_rxs_aresetn,
      O => \axis_tvalid_delay_i_1__0_n_0\
    );
\axis_tvalid_delay_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      O => \axis_tvalid_delay_i_2__0_n_0\
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => '1',
      D => \axis_tvalid_delay_i_2__0_n_0\,
      Q => m_axi_rxs_tvalid,
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \plusOp__0\(0)
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \plusOp__0\(1)
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \count[2]_i_1__0_n_0\
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => count_reg(3),
      O => \plusOp__0\(3)
    );
\count[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => \FSM_sequential_mst_exec_state[1]_i_2__0_n_0\,
      O => count
    );
\count[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      I4 => count_reg(4),
      O => \plusOp__0\(4)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => count,
      D => \plusOp__0\(0),
      Q => count_reg(0),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => count,
      D => \plusOp__0\(1),
      Q => count_reg(1),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => count,
      D => \count[2]_i_1__0_n_0\,
      Q => count_reg(2),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => count,
      D => \plusOp__0\(3),
      Q => count_reg(3),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => count,
      D => \plusOp__0\(4),
      Q => count_reg(4),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxs_aclk,
      CE => tx_en,
      D => \stream_data_out[0]_i_1_n_0\,
      Q => \read_pointer_reg_n_0_[0]\,
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxs_aclk,
      CE => tx_en,
      D => \stream_data_out[1]_i_1__0_n_0\,
      Q => \read_pointer_reg_n_0_[1]\,
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_rxs_aclk,
      CE => tx_en,
      D => \stream_data_out[2]_i_1__0_n_0\,
      Q => \read_pointer_reg_n_0_[2]\,
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\stream_data_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[0]\,
      O => \stream_data_out[0]_i_1_n_0\
    );
\stream_data_out[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[0]\,
      I1 => \read_pointer_reg_n_0_[1]\,
      O => \stream_data_out[1]_i_1__0_n_0\
    );
\stream_data_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[0]\,
      I1 => \read_pointer_reg_n_0_[1]\,
      I2 => \read_pointer_reg_n_0_[2]\,
      O => \stream_data_out[2]_i_1__0_n_0\
    );
\stream_data_out[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => m_axi_rxs_tready,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      O => tx_en
    );
\stream_data_out[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \read_pointer_reg_n_0_[2]\,
      I1 => \read_pointer_reg_n_0_[0]\,
      I2 => \read_pointer_reg_n_0_[1]\,
      O => \stream_data_out[3]_i_2_n_0\
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_rxs_aclk,
      CE => tx_en,
      D => \stream_data_out[0]_i_1_n_0\,
      Q => m_axi_rxs_tdata(0),
      S => \axis_tvalid_delay_i_1__0_n_0\
    );
\stream_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => tx_en,
      D => \stream_data_out[1]_i_1__0_n_0\,
      Q => m_axi_rxs_tdata(1),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\stream_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => tx_en,
      D => \stream_data_out[2]_i_1__0_n_0\,
      Q => m_axi_rxs_tdata(2),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
\stream_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_rxs_aclk,
      CE => tx_en,
      D => \stream_data_out[3]_i_2_n_0\,
      Q => m_axi_rxs_tdata(3),
      R => \axis_tvalid_delay_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_s_axi_rxs is
  port (
    s_axi_rxs_tready : out STD_LOGIC;
    s_axi_rxs_aclk : in STD_LOGIC;
    s_axi_rxs_tvalid : in STD_LOGIC;
    s_axi_rxs_aresetn : in STD_LOGIC;
    s_axi_rxs_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_s_axi_rxs : entity is "ACL_RTL_top_v1_0_s_axi_rxs";
end ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_s_axi_rxs;

architecture STRUCTURE of ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_s_axi_rxs is
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal mst_exec_state_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_rxs_tready\ : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal writes_done_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of mst_exec_state_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair12";
begin
  s_axi_rxs_tready <= \^s_axi_rxs_tready\;
mst_exec_state_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_rxs_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => writes_done_reg_n_0,
      I1 => \^s_axi_rxs_tready\,
      I2 => s_axi_rxs_tvalid,
      O => mst_exec_state_i_2_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_rxs_aclk,
      CE => '1',
      D => mst_exec_state_i_2_n_0,
      Q => \^s_axi_rxs_tready\,
      R => mst_exec_state_i_1_n_0
    );
writes_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => s_axi_rxs_tlast,
      I1 => \^s_axi_rxs_tready\,
      I2 => s_axi_rxs_tvalid,
      I3 => writes_done_reg_n_0,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_rxs_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done_reg_n_0,
      R => mst_exec_state_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0 is
  port (
    s_axi_rxs_tready : out STD_LOGIC;
    m_axi_rxd_tvalid : out STD_LOGIC;
    m_axi_rxd_tdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rxd_tlast : out STD_LOGIC;
    m_axi_rxs_tvalid : out STD_LOGIC;
    m_axi_rxs_tdata : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rxs_tlast : out STD_LOGIC;
    m_axi_rxd_aclk : in STD_LOGIC;
    m_axi_rxs_aclk : in STD_LOGIC;
    s_axi_rxs_aclk : in STD_LOGIC;
    s_axi_rxs_tvalid : in STD_LOGIC;
    m_axi_rxd_tready : in STD_LOGIC;
    m_axi_rxd_aresetn : in STD_LOGIC;
    m_axi_rxs_tready : in STD_LOGIC;
    m_axi_rxs_aresetn : in STD_LOGIC;
    s_axi_rxs_aresetn : in STD_LOGIC;
    s_axi_rxs_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0 : entity is "ACL_RTL_top_v1_0";
end ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0;

architecture STRUCTURE of ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0 is
begin
ACL_RTL_top_v1_0_m_axi_rxd_inst: entity work.ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxd
     port map (
      m_axi_rxd_aclk => m_axi_rxd_aclk,
      m_axi_rxd_aresetn => m_axi_rxd_aresetn,
      m_axi_rxd_tdata(3 downto 0) => m_axi_rxd_tdata(3 downto 0),
      m_axi_rxd_tlast => m_axi_rxd_tlast,
      m_axi_rxd_tready => m_axi_rxd_tready,
      m_axi_rxd_tvalid => m_axi_rxd_tvalid
    );
ACL_RTL_top_v1_0_m_axi_rxs_inst: entity work.ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_m_axi_rxs
     port map (
      m_axi_rxs_aclk => m_axi_rxs_aclk,
      m_axi_rxs_aresetn => m_axi_rxs_aresetn,
      m_axi_rxs_tdata(3 downto 0) => m_axi_rxs_tdata(3 downto 0),
      m_axi_rxs_tlast => m_axi_rxs_tlast,
      m_axi_rxs_tready => m_axi_rxs_tready,
      m_axi_rxs_tvalid => m_axi_rxs_tvalid
    );
ACL_RTL_top_v1_0_s_axi_rxs_inst: entity work.ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0_s_axi_rxs
     port map (
      s_axi_rxs_aclk => s_axi_rxs_aclk,
      s_axi_rxs_aresetn => s_axi_rxs_aresetn,
      s_axi_rxs_tlast => s_axi_rxs_tlast,
      s_axi_rxs_tready => s_axi_rxs_tready,
      s_axi_rxs_tvalid => s_axi_rxs_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_ACL_RTL_top_v1_0_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ACL_ACL_RTL_top_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ACL_ACL_RTL_top_v1_0_0_0 : entity is "ACL_ACL_RTL_top_v1_0_0_0,ACL_RTL_top_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ACL_ACL_RTL_top_v1_0_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of ACL_ACL_RTL_top_v1_0_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of ACL_ACL_RTL_top_v1_0_0_0 : entity is "ACL_RTL_top_v1_0,Vivado 2023.2";
end ACL_ACL_RTL_top_v1_0_0_0;

architecture STRUCTURE of ACL_ACL_RTL_top_v1_0_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_rxd_tdata\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_rxs_tdata\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of m_axi_rxd_aclk : signal is "xilinx.com:signal:clock:1.0 m_axi_rxd_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_axi_rxd_aclk : signal is "XIL_INTERFACENAME m_axi_rxd_aclk, ASSOCIATED_BUSIF m_axi_rxd, ASSOCIATED_RESET m_axi_rxd_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_rxd_aresetn : signal is "xilinx.com:signal:reset:1.0 m_axi_rxd_aresetn RST";
  attribute x_interface_parameter of m_axi_rxd_aresetn : signal is "XIL_INTERFACENAME m_axi_rxd_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axi_rxd_tlast : signal is "xilinx.com:interface:axis:1.0 m_axi_rxd TLAST";
  attribute x_interface_info of m_axi_rxd_tready : signal is "xilinx.com:interface:axis:1.0 m_axi_rxd TREADY";
  attribute x_interface_info of m_axi_rxd_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axi_rxd TVALID";
  attribute x_interface_parameter of m_axi_rxd_tvalid : signal is "XIL_INTERFACENAME m_axi_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axi_rxs_aclk : signal is "xilinx.com:signal:clock:1.0 m_axi_rxs_aclk CLK";
  attribute x_interface_parameter of m_axi_rxs_aclk : signal is "XIL_INTERFACENAME m_axi_rxs_aclk, ASSOCIATED_BUSIF m_axi_rxs, ASSOCIATED_RESET m_axi_rxs_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_rxs_aresetn : signal is "xilinx.com:signal:reset:1.0 m_axi_rxs_aresetn RST";
  attribute x_interface_parameter of m_axi_rxs_aresetn : signal is "XIL_INTERFACENAME m_axi_rxs_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axi_rxs_tlast : signal is "xilinx.com:interface:axis:1.0 m_axi_rxs TLAST";
  attribute x_interface_info of m_axi_rxs_tready : signal is "xilinx.com:interface:axis:1.0 m_axi_rxs TREADY";
  attribute x_interface_info of m_axi_rxs_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axi_rxs TVALID";
  attribute x_interface_parameter of m_axi_rxs_tvalid : signal is "XIL_INTERFACENAME m_axi_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axi_rxd_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_rxd_aclk CLK";
  attribute x_interface_parameter of s_axi_rxd_aclk : signal is "XIL_INTERFACENAME s_axi_rxd_aclk, ASSOCIATED_BUSIF s_axi_rxd, ASSOCIATED_RESET s_axi_rxd_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_rxd_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_rxd_aresetn RST";
  attribute x_interface_parameter of s_axi_rxd_aresetn : signal is "XIL_INTERFACENAME s_axi_rxd_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_rxd_tlast : signal is "xilinx.com:interface:axis:1.0 s_axi_rxd TLAST";
  attribute x_interface_info of s_axi_rxd_tready : signal is "xilinx.com:interface:axis:1.0 s_axi_rxd TREADY";
  attribute x_interface_parameter of s_axi_rxd_tready : signal is "XIL_INTERFACENAME s_axi_rxd, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axi_rxd_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axi_rxd TVALID";
  attribute x_interface_info of s_axi_rxs_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_rxs_aclk CLK";
  attribute x_interface_parameter of s_axi_rxs_aclk : signal is "XIL_INTERFACENAME s_axi_rxs_aclk, ASSOCIATED_BUSIF s_axi_rxs, ASSOCIATED_RESET s_axi_rxs_aresetn, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_rxs_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_rxs_aresetn RST";
  attribute x_interface_parameter of s_axi_rxs_aresetn : signal is "XIL_INTERFACENAME s_axi_rxs_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_rxs_tlast : signal is "xilinx.com:interface:axis:1.0 s_axi_rxs TLAST";
  attribute x_interface_info of s_axi_rxs_tready : signal is "xilinx.com:interface:axis:1.0 s_axi_rxs TREADY";
  attribute x_interface_parameter of s_axi_rxs_tready : signal is "XIL_INTERFACENAME s_axi_rxs, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99990005, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axi_rxs_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axi_rxs TVALID";
  attribute x_interface_info of m_axi_rxd_tdata : signal is "xilinx.com:interface:axis:1.0 m_axi_rxd TDATA";
  attribute x_interface_info of m_axi_rxd_tstrb : signal is "xilinx.com:interface:axis:1.0 m_axi_rxd TSTRB";
  attribute x_interface_info of m_axi_rxs_tdata : signal is "xilinx.com:interface:axis:1.0 m_axi_rxs TDATA";
  attribute x_interface_info of m_axi_rxs_tstrb : signal is "xilinx.com:interface:axis:1.0 m_axi_rxs TSTRB";
  attribute x_interface_info of s_axi_rxd_tdata : signal is "xilinx.com:interface:axis:1.0 s_axi_rxd TDATA";
  attribute x_interface_info of s_axi_rxd_tstrb : signal is "xilinx.com:interface:axis:1.0 s_axi_rxd TSTRB";
  attribute x_interface_info of s_axi_rxs_tdata : signal is "xilinx.com:interface:axis:1.0 s_axi_rxs TDATA";
  attribute x_interface_info of s_axi_rxs_tstrb : signal is "xilinx.com:interface:axis:1.0 s_axi_rxs TSTRB";
begin
  m_axi_rxd_tdata(31) <= \<const0>\;
  m_axi_rxd_tdata(30) <= \<const0>\;
  m_axi_rxd_tdata(29) <= \<const0>\;
  m_axi_rxd_tdata(28) <= \<const0>\;
  m_axi_rxd_tdata(27) <= \<const0>\;
  m_axi_rxd_tdata(26) <= \<const0>\;
  m_axi_rxd_tdata(25) <= \<const0>\;
  m_axi_rxd_tdata(24) <= \<const0>\;
  m_axi_rxd_tdata(23) <= \<const0>\;
  m_axi_rxd_tdata(22) <= \<const0>\;
  m_axi_rxd_tdata(21) <= \<const0>\;
  m_axi_rxd_tdata(20) <= \<const0>\;
  m_axi_rxd_tdata(19) <= \<const0>\;
  m_axi_rxd_tdata(18) <= \<const0>\;
  m_axi_rxd_tdata(17) <= \<const0>\;
  m_axi_rxd_tdata(16) <= \<const0>\;
  m_axi_rxd_tdata(15) <= \<const0>\;
  m_axi_rxd_tdata(14) <= \<const0>\;
  m_axi_rxd_tdata(13) <= \<const0>\;
  m_axi_rxd_tdata(12) <= \<const0>\;
  m_axi_rxd_tdata(11) <= \<const0>\;
  m_axi_rxd_tdata(10) <= \<const0>\;
  m_axi_rxd_tdata(9) <= \<const0>\;
  m_axi_rxd_tdata(8) <= \<const0>\;
  m_axi_rxd_tdata(7) <= \<const0>\;
  m_axi_rxd_tdata(6) <= \<const0>\;
  m_axi_rxd_tdata(5) <= \<const0>\;
  m_axi_rxd_tdata(4) <= \<const0>\;
  m_axi_rxd_tdata(3 downto 0) <= \^m_axi_rxd_tdata\(3 downto 0);
  m_axi_rxd_tstrb(3) <= \<const1>\;
  m_axi_rxd_tstrb(2) <= \<const1>\;
  m_axi_rxd_tstrb(1) <= \<const1>\;
  m_axi_rxd_tstrb(0) <= \<const1>\;
  m_axi_rxs_tdata(31) <= \<const0>\;
  m_axi_rxs_tdata(30) <= \<const0>\;
  m_axi_rxs_tdata(29) <= \<const0>\;
  m_axi_rxs_tdata(28) <= \<const0>\;
  m_axi_rxs_tdata(27) <= \<const0>\;
  m_axi_rxs_tdata(26) <= \<const0>\;
  m_axi_rxs_tdata(25) <= \<const0>\;
  m_axi_rxs_tdata(24) <= \<const0>\;
  m_axi_rxs_tdata(23) <= \<const0>\;
  m_axi_rxs_tdata(22) <= \<const0>\;
  m_axi_rxs_tdata(21) <= \<const0>\;
  m_axi_rxs_tdata(20) <= \<const0>\;
  m_axi_rxs_tdata(19) <= \<const0>\;
  m_axi_rxs_tdata(18) <= \<const0>\;
  m_axi_rxs_tdata(17) <= \<const0>\;
  m_axi_rxs_tdata(16) <= \<const0>\;
  m_axi_rxs_tdata(15) <= \<const0>\;
  m_axi_rxs_tdata(14) <= \<const0>\;
  m_axi_rxs_tdata(13) <= \<const0>\;
  m_axi_rxs_tdata(12) <= \<const0>\;
  m_axi_rxs_tdata(11) <= \<const0>\;
  m_axi_rxs_tdata(10) <= \<const0>\;
  m_axi_rxs_tdata(9) <= \<const0>\;
  m_axi_rxs_tdata(8) <= \<const0>\;
  m_axi_rxs_tdata(7) <= \<const0>\;
  m_axi_rxs_tdata(6) <= \<const0>\;
  m_axi_rxs_tdata(5) <= \<const0>\;
  m_axi_rxs_tdata(4) <= \<const0>\;
  m_axi_rxs_tdata(3 downto 0) <= \^m_axi_rxs_tdata\(3 downto 0);
  m_axi_rxs_tstrb(3) <= \<const1>\;
  m_axi_rxs_tstrb(2) <= \<const1>\;
  m_axi_rxs_tstrb(1) <= \<const1>\;
  m_axi_rxs_tstrb(0) <= \<const1>\;
  s_axi_rxd_tready <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ACL_ACL_RTL_top_v1_0_0_0_ACL_RTL_top_v1_0
     port map (
      m_axi_rxd_aclk => m_axi_rxd_aclk,
      m_axi_rxd_aresetn => m_axi_rxd_aresetn,
      m_axi_rxd_tdata(3 downto 0) => \^m_axi_rxd_tdata\(3 downto 0),
      m_axi_rxd_tlast => m_axi_rxd_tlast,
      m_axi_rxd_tready => m_axi_rxd_tready,
      m_axi_rxd_tvalid => m_axi_rxd_tvalid,
      m_axi_rxs_aclk => m_axi_rxs_aclk,
      m_axi_rxs_aresetn => m_axi_rxs_aresetn,
      m_axi_rxs_tdata(3 downto 0) => \^m_axi_rxs_tdata\(3 downto 0),
      m_axi_rxs_tlast => m_axi_rxs_tlast,
      m_axi_rxs_tready => m_axi_rxs_tready,
      m_axi_rxs_tvalid => m_axi_rxs_tvalid,
      s_axi_rxs_aclk => s_axi_rxs_aclk,
      s_axi_rxs_aresetn => s_axi_rxs_aresetn,
      s_axi_rxs_tlast => s_axi_rxs_tlast,
      s_axi_rxs_tready => s_axi_rxs_tready,
      s_axi_rxs_tvalid => s_axi_rxs_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
