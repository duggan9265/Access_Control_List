// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 16 15:45:16 2025
// Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_axi_eth_0_0/bd_0/ip/ip_6/bd_fd73_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_fd73_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fd73_c_shift_ram_0_0,c_shift_ram_v12_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_15,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_fd73_c_shift_ram_0_0
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bd_fd73_c_shift_ram_0_0_c_shift_ram_v12_0_15 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nIYMPAhhm+jyEUStye8J0UmKLbSuGtxhcXl7DQJzlTepkxlRCFL9BKTXyqmIUBqwAnpzRmLNA+HU
gVNb0EQrhJ9FUIxUvpUfmsEDvCugOtlRKnkTW7RtAMURLxhjLGX5ucP5GlBsD8DfvHqH5KNvZh9p
yHSPlkX819OVUF/woEE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qkwoG9xRafgPkDGdI89jVVnku+waubIQbu4Rm8UIuB9degVF4Fwl4LHP6w3Dt1Oi0wxk4Hmqyb/G
JIIUCxIWzY1ScjbpPUElYWO9ZuB//tktCkEFfXbMx6uedxb5MqiQFOZIfDB7AZLYEuNdUK7/+pwx
ChIIdmHMhCJM5eM2x0mKQhw8ffyIadpcnIzi2sWnYMeQXFsewdk5MGqqMUJCsR9ihBNDtNnttQFC
t0Txid/CY7x2B3N4foq+JAhJodEPlwmzQpvuN9hYvz3C8bXl3n7x+6qTVV5vMPYo8AkV9rA8ZfP0
fij7gKfhDXrBKEeBnAYtKdsu+XSKT0W1MK5JvA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fhoPtERptIUYitsNcqw1AA1YenIpi40GFuIibU5r6v56lBwsOFKFYQdvjg4JzkSQExVPLMvdDwWA
DG/GQK07Yw4Bbayks5UORWaYuesZNUph3YUHI0/CFdbAwYuVtDQVYFbJ1+eHMOiEN679h8nq2r7N
M4k9CGC2wk14hZKtBpE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WJQaq8HMom/jpSS95Al7Vu5euP3Gbaa1slu8VBlGSrPMz5t+8SA3qRmnDO27wVApM5CTwsbC+TSd
visgbFc27jOIEnM3WqnCGlmh6419t4EwPWkG+jnrfXXtcLmvp1wHrgDZKtVQjUE6CuvZXmiCg8RA
Jm1iFe8ZMRVctdTBwvfGBYhgUnraiDN9rl9GYwPFple8IpBoKfRmDqkEV4ubgCX3iXoTY3b5Nu/S
f4Sfl3Xe+g7V2CUIfeztyckgCcvXZMhnDrs5A3x0QhH79pQhcMvkyeui7xGLpn/JdSqhypxNC/rv
brXvr4Wzo34XfgglgyWowzlk3xrtgTG0KFx1GQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rhD9CD89Bmmqux5IGGdZFRpJNfaKrVtBLyxz97OxgKKLvtpBjSfrvnFMWKsoCbEMDlzyIAw0A3C8
R2N+CI0BGY45PLLiAY24nauNQyc74ur45yfewwLIcRM3mOKhPpPv11haf7E/rA7wrY4zgDFjAsCV
aWOLb7g0pZCmdpLFMiCEZu2Zn8jvOHdToUMy4uWMio1kiu4ZbgB+kG9/X0Ph6Ggp//Yw39e2aWox
8rl5Nykmq3YCB5Hu70Wpg3IrLHFwxI/DpSOGb9Wqv1stKD1n+ykaL3Aa9mU3hc1TwujhtwR+JbvJ
rz/PEZXtt5C/zw6B3oZR6JIOO/cSRZIVEW4+yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mhLhsuOstjIcERu1NRtv4MD4QqNltiqulqFILLqF76sJ34mtA1/aYIce4vr1y02KSZn/N806BLjE
hOm/Mklfk+TWSTANIuckzQx+MUL7Dvae98779pu6Q0Dtu9LIbBrwqVOBIdKKpm8ERjDsZ3ZJDEGA
02Acc3HeqyoEJaucbE/cjJIPI2nNf9AHld1FefOCP0a3z91y6Lx1MKEXo0WqXQCTP/TiH5bJpV/z
8i3Ga8LhdMgH4eZhWWyl8pQQh0rYiP77inrMHxA1NGPSpRKeON+996vt/XTVEADzIjXuSkghspr+
DotCpTs2ZC4dxX8I+/FZfEk52TBEor7Zjd7CtA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b0ZvItaRq98CofF9dim5WTrrWXkPmmc3Bv94v1GUhb3A3ececR+bdeNJUZCn/E4WsqFpVlfnrZJG
3iwmnFLQI+GztI8PURNV5PcmScbxsYOJqoUgLISd+UuMUc7qRYrNtEJIPFW4Unes830sDKDNzQYP
aVVXjxqgcaEpfN1At/CanB+Ty4Aqda+XoCKcgK6cpvEJ4qwlUegLL37N32T04wrf8p9CgG5+xEzu
3al1bg54Two5WLtlRdirW1xiIMb/GYXUM4EFDtHJv3gx+s9pC671zR6EwKgaoWfElqnUV6KkfB2Z
ZftT16QA7FO0opLCaKS3Ae/Zva9zGKyh9U/CEA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
aVp/WTURC13wn1ueLCALCVaHB2pohC1dlXFx6ndJc2IifX6b5CWph0glsM2jaReZYwk2vcVlONFr
05JgoEaGo7E7sTj+BKm963nWu8X2Nbf4J6iu53CwcoBbeyE6YHc5Pvoy0GE7uQoEaDLhUIbzVVo0
Ywnm4CoSFDCCReDtmMQW4xX0EjKPjpZe9/OtQ9Sxu6o1HUMJQs4LYn+1/1Cz9J1YMVFh3z7AZ/u3
zHYc+DJOC0iOr8OFdG4BGUe9UyHZFg9sr5reXIhmcxUZRnb586NnHnHRY0+mEX8nO+crbYwpjDmg
B4ZFPEfLOEjfsDWh8HvFkodfpF5Q6ALwdaRtyHPEjn3+//VN4nXSubOGueedtGfNYmB28sJ2BH7v
BHdWzKcUIk5UrFjurlAdjp7lGyDXzXhUWc+Tjws0H5/5+i3sBCOLVXCTgKuq1FHHR1lCClrbQQiy
iDXf0m8Jrsc9X56qb5O7PxdlQ1M2PoJ46/+zAiV2WFBxfw99hYm5iDCD

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kZ2SGERdvlppAJp5nxy6DGeIAcUGxZAYgHcs2sM2m6UaTzMEuoa3aYNEpWRj1Z8gQtlnQcBEEsKE
jrLkSPJXxSUIsleaGpnfhd6lPSs+AyFNJ+zSB1HbGdUgHm0qrxiNQsptOC95FB7Gtiu5wVS1+e94
+Zq8YLO4J0WerfcFYANk5KoKOUTKDOJ+lM2JGAe2ingABVggXbt8JCQQqxiBOK6M4Mm3EcToV1Zy
gCNF/XV9esa78rJ9SVH3k9Q4MdTpEXq6NxPnXbHK6DnQd3W3hR33GirjkXU24nPxDLo83NnjEF34
yEAk8X4B8BrE4DRFWh5WhXWa/AcId0Ehr9uMtA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2112)
`pragma protect data_block
UfafZpOvnhpRM9vC7nmFKQeeOnq4jwEVDfwX6NfK0/4sg7vlP1HeJd3XHR47euOHpi1hO8D/BwsQ
LcMLfkMgDp8GGP8MiskI9XuHYQGpC0qqxZBNl9PxKgsipwHPCEIOs8L7lfUp6i34WhC0xqkcwG/b
Cnks72DeO3kv0/78jYuidMwXNOtbT39aRs61BiT7s4Qe8G3MiibgVrpyi/E0geKWLCfYjVbbhe1D
ajod3KDSdSrM0UtXD5c6PI65/Y93NF/giZRTbY9EKTj6GUzAu6E+qgQn/uBkzKHPWfAjdZ4kraAy
5GX8d1b+kdHs0P9vUCjCKL+SzxEqlZ07nNrzsLJpRFkIm/CBTn0HMXR6vxGMmsjyTRGG4WrBiFQ7
M7h7AOXdbI/S+xliHuHBn6fs5XPkyiYbbYdAbIdKYvAgVWHb76WtwKRFajCQicjjo4qiYJbdH2or
yiNzbSZKcDFlztAUU2Xm8aip6NpmyDpctEPY+BmcB2/FS1n0HqiqThpG4nstA6vg2aOboNDSljXs
vscArImMUHd+t+fmW87TgpG1WAddmY0ISo4yy93QU/E/NI+xxIkrwdbFNU4DMdjAC88URaYtk4c/
BMgcEC3otvn6USZHY4rFUD4KbIf0/BHJ6kFKtHKAFr9cSHQwMsi0OI2hlHsvNtH+vYv6+3verYHc
KRWDHnqiZHxm6e2VO7iushOAEQZYOss1o3zekrX4YQDY9UHDn7RB2h/lHhq4P1JR2U6V1AJk7btw
DpRXcRvF+ALcYQ4i0UEuAOe/7cQK/C66C7Q9RreaUVY/IvLWHljZhamHjchzwNmQHy6/yICweedc
+tG6wMolqX3tpZvqPrBchGZ4HvMGqNS8+VpFMI1taPFWv2APuYF2+tE4L8Sxn/J4TKVlz6REPJx5
eBBJh9320xPJIph/V8FoH1JJIxkKKo+mP3oQwmr4QXBGhFZE8haiwbUwpPMrENI1NVV5dQn5ZoIO
3KKgldLMhBQaMz4H9EOe4gByKrBDrBZNOrf4sI8rm0xCDJDOJUrP4PpkUWiesRUXDf3tuNWaW7DD
Vv2P4aGX9OUzWZxy+D/mAGWuYd/WWT0erJrRgYyGkQphk01p3LRS2HjX9uU7OHgDgZtjd/kUN9xQ
cNZSsZ5kuBWDSQAHIb7yiR/M+fvC6ErseHK2v70sNDwW80CVWjdwDLltnN6S6j8k5+5wjrXWAuBH
J9EaoUNP/Axj5Nj9Xmkx2sxXuQl05u5NXi/H/0fknSm/WdlGQKFaZedIlsd7ty7h//XzL7Qg8Knf
xk0e34quPozXZkZLZvzuanjWbscM2UTH2AgRAggi3r+0sGVFUmuQGjNzqNbShmxn9ARPFlyJL3QW
R9cMvfMyWbBiprh20I5XCwDBcgR8VNJ2J3MT+M7GeqrS9XXA9631ZUQU+G0pYvs7fIlVtcj/UpJQ
eASWBtMVnKfJp3Kfv11DG+2BnVLHxwHOKWxQpdEmXcbGmf6NWjjIpV4xMSumKmkIlWupJmhTMCDy
TM6pjx0Oy6c2LGqvCn/ibnk6/wolbCVKtpHJom9c7KWRegrNmysfdR1fS26PIj8+hPpRC9hMvJap
K7+xJhGZatNtdFicReUEzjjRFfuxKP+2NbXpbuw2hVPYOWNcWbMpuISZW9jXxhXlMm8Ffh9sInin
0ohr5w6oiHAduvlyu7sZO0covH9aSZWkr7geXYfwJOMd+XP8H8HGAgNDh1VZ5bnez2Oa0FoanXIe
9Z5mCt514ZAHcwIdhzENPtlZLHxj5aMaAuZwkZ2rlmle9J50s4keVpKPvCINRV3Q/8eI0Q9W3dol
3/YrmDD49VIsjaU3m78cSNZj/E0C0Gsyxwog1u5SqIbbQEPK9GER/40RcuQp/ZfNSDVrcv/K9jDk
u2XhT+SPeBrgfnE24Z3jEud+d0dlze7v4sfqea4zZ1lXgZKO653b6eGUpfjJMfdn6oL1/DV4MqBU
J8jI+QV/suJkL04JA7MXehjORXhnqVwItz0PrbOm9z2wbXRXpPl3L9tSD4H6v8DygpA9ch7fe6SI
i5pImvgBumK2jWPw+OBSXoNlHwY9EInbu+R6B1fCZKIUTDSrxpfZCBHmGXp2CSXtdw/vEjYBZN4D
M/tOfXmRCpVHRLjeQkjgzyop51k1tJ57n5pWsCCyu0uDuHSbJKr4IHjTxGymiaa7Af7p3c8sleKt
fGvt2AWTIt/B1uMsoJeWw9dNdBEdrSLvDM5puJY/I1ynvHNquIU40R2E7hVmooUFWRWWx8x7TKns
6Zh6k3J2n7QtUr8l0HlryUZBX4Kr7ipAA3ByDEbtP55rWfAmUlQ7b+J5UnzRzzgztsLqq+S1h9RS
OBlJtLBXBooCpb+sQqrNbNA3XmJ4sBsB7g/e9T3We7ck5EVvY19efn5NordWK3+6geZUInYgt+ru
eyoYR2avQa4U5YUcO7e8xHp+WeK16NS2kacEFcDiqtlOkiWN8Vj9OO32EAzLgUxvGKRfDjnUSCpM
BpK1eyGQFQS0eOVs6noc/5RXcY2G5DiQWShus/SpEilRIyUK7C+y0ydfhQ3ClaOWphddWeSEWf4W
UjYUfGLl7eyeB1jbKF75AWm/0ihzxRVeAb9nh1iqRMcD5koDnm470QEzaK3annRdbo+SuE6ePysT
/zM8kElwC0+owHbH+r+GJG4e60gas03SM+xjdgi4taGLdYrck2XC/G+A9we0ulsgx8nhRxuYHpAj
Ffw1OQ33UozEahGksXgmRi0aERRbGIpI9KJMK0kQoO0f/PSuQ/t7sARdGIPOEds6qfVpIlhOeaSN
XKlC
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kqnagRAP6e48sDJ2zjuOcrOBuQhR6ScHGzGHx8zIvw2a9L5stepGefkAy50OOg7U0TNyqgwDyieD
/jxrvYcWXTTby8LsDiT+fqP7cW5b8Y1mfEE6Xcj5ih+flKI+3RbiydbmM46SMuou8kZG8UM0+Ohp
Rurqh1V8nVFoykW/qxs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nvt406RHT+6uTF2EXLGVq8ku654oLn2YWkJVCUSkV0FPT4zQTQL5Bjw7s24+dTcG4KguzUiFJe+N
th0lg5yAlEHq+pL7e66h17TqhOArrHeGHt8eW1aCd6cundJs9uKl8jFcE0Zt3lCYpYNy6FVBcOCW
I+5F+ENykaaQBbLdJkmSnnhsAivTbPpKGlEOZvAnVplAsOxUd8HfqBvwwFO3owgPS86dE2sT0xWG
rTPw2/GzL8jEmaGyit4LWSrFAX5wmD577kWxaEWPvhCpkzVsWlLOe3EtdJoDuacc9q2df0Q8BN9W
lpnbygYc0dEHtxQM603i6qyBarcIeXjnJHtBMw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
l58c2R0Ie09cfPdpmc7Ly2V3W7w8fpJ7uyxhHW0mwe9VCd3m6wH938oNs0/lgLjcDlFu4n5lxtYJ
W9Z3SOaYMVYdWFnUsayHQYRA1KA4huero9n7OiP76CvpwbbqxjDmN1eompprZsse51Sk9IjUEu6l
MDA94b7Oftz2hfTTv6s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OiTL+lIVe4lS3sqNWLaz66d4Ee+AFtPhQCU1VFcK2enoFcrJ5GYWtSnuJe7txR1wi1Tn+ddL9aTD
y9bclO7E4qjCR7TfN6nWWcWQ3Ot91oaUHbWxd9Ao44zZa30bAR+pb6f1anj87VIw/ZES5GrU8A4K
RMvycGQ3qJEnsFOxeSqwT8W2oqU8IyIY93MKyYk/sSaEAzJNd+QJlEe/xrNFzG/bpQEqLMIourxa
n+yVsU7unn7L7EI5B602KM7rhtD0UFXX5ndM7KqYC8ZSpXWBjnoFHnz4+7jfaku2jmOOMoXWPUGN
Vf1Sc6oiVwKmTUh1YinTT6yoy1TjjhWnhJy79w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kzouDzvjjcPQFd0VGmr1D6XJaP8kM0uSJ+XC/C2OVEQxByt8hRy+XozPOeRTz0TjisERkG+ht4tv
sDs4ajl24k5ic6P9NMEJzE3MRUTFUEW2sZAHF5thGHKNmaqH0+IWH6XdvOEWY1y1hk0Ukdhof9vl
U1dA0SCzM+JUzB2VbDOtmCL3OkWCjixhVvxptbZkllVrwJTqYGq8laCAdTLObfza4Z1MBAwnnW2q
EVei00AEd7psIdk4vz5X8wPBM+aviD0nUIRj6B/cxdrILEThbHgdyL5o8RHcvZe2fZqCJ9Yu2gur
YtMESWSiaByNWI0Qh5qdX3+9n/hNoAssqi+Uag==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sCZh7Nm0P6ezfVt6wRs7OoYpV2xbIMfnwiHU0h+tMr+GNlnVLJ4zOC5At+/6CueAQhK/S+zAhCAP
9xd4+Mxl+ZCc+RkXDHGuOtoDhI9Khmo76z0L3/OhtZmliDFTUDHabscx4XX4wLW94pTD9ncc9q9i
8HYQyNzqIxLKPffR04n7gsVWmBIhYfJQFrdNSIJrA5J/C7aBNR51BLdVQmMjHLRDhKPfwCouo1/C
zDyCgnHO9aQJdzSfGtEw9q37njxy/RtUB8XuwD6AX7ZTkJkDCEiNK23ZKe8lR5MS3HnDawHTIY0I
Nu+68qhIUBmQ6PMX170X967hk4EHfi4YHM5NNQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXi1PaG1UybGCV6IyGN7nyy1RrgqWtR5b4OvSNT0tHowpTGgzMQr7eKBY9O6blT6iD/6OE7fswys
hGAC7gc78WkOEu6bQZ7unyN1VnF+nGGHPM7WERERjyG3TIq/zfx7QlpXL8CqssOwM/tnvCjG1PJ+
UFEvvrZxbbJfZJCBsMqq84e+pPdJcWdNLztEN/zSS290Z18mVwB35EN0EYBF2BMrEs8p+aKUZhIv
B4dHCtb7KK7kP7WGQ0mi16u2lYqhoN9k5Uxp3cHUwTY8bs/42H8SkX+gY2C+Gn7ltovT57Phnv/G
bTnZ2nashITh7B0YA+6OUutBojZC00fqrjmz5w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Ky11Pi1H52luKdUeYjIqD4GtvqkpYj11UIUIn2AszzkYu2pSQxeqQvUiYk736bxBArYCy0eSkIZm
jle+Te9axMm53ATDkdazQQKrlavfIj/9maMcT6toxW0qtTtywC+s5277Gp4NL3Z2fuy8KwjesSDf
vc2D/Zn4zs1iCJ+AaXR+zW1kfTgSuDNIXA8cYXqpg4lIPW/cYWNYy7ftSdWo2wvP+O7F5Hh2kMjv
M2xg3JjXjNsdOoFB+PMrIGnO4y7c+DCj9C4So6lBiLGikD7EFgXbY6vSAqCM+KS0SWcrlk8gX8h3
V119aN5QXIKPMQne+lh1ixAPqsmc+kbgPwYNF30QLlw84NxHbefeFXL4XwRgIcNZS4Zr0uIfpAKQ
vm0V7fXZI3A/5BiDl1zxABZULpjRQcPhdkoKVxU76xmItVDRO59g6+tCi7+ElJFcPWKq0XMxStKD
cSjb9zGkQ7LjDsImfMgp5B2mew++oUIXCtBC8cr3If8qQlvd4blaZ1Md

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DIMAxHZeYkzAE/T+DTXRicbXYfFuHE+GRmfeDxgTsHRbg1HZeyIQaqIkilZh+GrQyIPuuLb6B3Sc
6Z+Pxtb3MSq7i5my6GE06p9q6lXveK8Qy+tOFCZNOXBrPzAqSjMPetDUhduxtkXusKvHqqWWwEgn
ElLAQrmNaM99/lzWV9gmYfpQJE5U1KANQnILT7ID4dpcP/FDzSTXPVGjMzoJ0AU4P5nJeeVNRFUL
k37t3nr2Wyy9oe8lpK7TdR6RGw2UWQgy7Y/R2YriQeKSegvy4nfIvtpsQIXFCtAf8m3u6oehKhdb
BFmaOFYlmvD0PnEbE9yF4D7zQtFDrajmr2lUnQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JTF/1pzpRHiUstG+0ksB0T/xtXUazv2LB8Tp0VHoQTknMQwVjo8pu8yum0+c9cb4j8ygrWgSI2Ss
6IsmDIYCQB+/sSTUCTkegiO6hU4kUCyLx9eXr2y8a3FIt3xY0OJPRcKBEiu05vRUTDrQP/NrnbID
689q23aLY+bhpYQZko3oObJMqS/Ak64GnftqhVh+QziSqAZMMWr20H1Kz/zCLLh2qAWEBbXUsO06
rByDdW5akIoU4G154JXEKjeqejLcAdb1VJp+iVO7V577/ZlLFNXyBEvcpQFaWOh/pqhR+RUs7W+v
yAfN+WCzjh1VWKr9CbI5BU5P+99vSmEP/VuRmg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Rt97uLizNuMew2hXdx505b0o/G7VOVdrIwTCKpBHNoT9ezQtxfu1IDEJTYF9BCDQMr6ayKdSs6i0
TJ3gRe5jF/mt2GXygtVqcJVhgBMVp3e4uUbIMGMngPkGrrbMBfX4RH1kCHlBhRlK5ws8ucyL70Js
M1ZEgjzVeZjb//Koh/skM5/HEdCc1WX3MdrYDsZxAOSAgImT2b9IHpqYRIZMg/Qgg4R0CmpiLWQw
9TK8Q6df4K1iAp5LN/Wph6rZJ61+MkbyOcS/7IQ4zQ9pG/P3jOV0Det33iXYlYCxPAdGCXOyg5dj
B8iaO8pwtdJXVQnmzvav3QcnIGA1XFVV+bPi8g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4864)
`pragma protect data_block
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
o5zFTr1DGh309pnlPo3uLF4Fog==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
