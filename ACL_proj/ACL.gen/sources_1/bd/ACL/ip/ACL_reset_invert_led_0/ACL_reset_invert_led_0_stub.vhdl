-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Apr 16 15:22:01 2025
-- Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_reset_invert_led_0/ACL_reset_invert_led_0_stub.vhdl
-- Design      : ACL_reset_invert_led_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ACL_reset_invert_led_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC
  );

end ACL_reset_invert_led_0;

architecture stub of ACL_reset_invert_led_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_reduced_logic_v2_0_5_util_reduced_logic,Vivado 2023.2";
begin
end;
