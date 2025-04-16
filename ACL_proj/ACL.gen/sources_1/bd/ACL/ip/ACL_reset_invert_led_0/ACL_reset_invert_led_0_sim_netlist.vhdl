-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 16 15:22:01 2025
-- Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_reset_invert_led_0/ACL_reset_invert_led_0_sim_netlist.vhdl
-- Design      : ACL_reset_invert_led_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ACL_reset_invert_led_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ACL_reset_invert_led_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ACL_reset_invert_led_0 : entity is "ACL_reset_invert_led_0,util_reduced_logic_v2_0_5_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ACL_reset_invert_led_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ACL_reset_invert_led_0 : entity is "util_reduced_logic_v2_0_5_util_reduced_logic,Vivado 2023.2";
end ACL_reset_invert_led_0;

architecture STRUCTURE of ACL_reset_invert_led_0 is
  signal \^op1\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Res <= \^op1\(0);
  \^op1\(0) <= Op1(0);
end STRUCTURE;
