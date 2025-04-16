// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Wed Apr 16 15:45:18 2025
// Host        : Lap-DaDu-050 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/ACL_Garden/Access_Control_List/ACL_proj/ACL.gen/sources_1/bd/ACL/ip/ACL_axi_eth_0_0/bd_0/ip/ip_7/bd_fd73_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_fd73_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_fd73_c_counter_binary_0_0,c_counter_binary_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bd_fd73_c_counter_binary_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ACL_zusp_ps_0_pl_clk0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bd_fd73_c_counter_binary_0_0_c_counter_binary_v12_0_17 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eFbqyWxvTxgrA/YtdaoI20/0Oxv6heWR3Rkp9/xOWnvLDdGDhtGJBQqdO4v1RO/kikveHE3JyVBx
OMXM/QBYbcn/QmEMFud4drsy8IbaUwVstP+Mzovw04CY0e6ucHcNG8bkdAhiixaw1DGilwl8tfXo
1/LD/FGivkVY+qD5JIE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZVOEd9Suj8PFYlAHZ5eNfv9g67bFY/Iau3fGJHFAIz/4EbdSAUDaGh/Aj5F/sayLnlRNhD6w+39
N7ODCROvgCW/DEQMBCPz7kcEchwyjzrqkhJexEv0Dz7kFQn1ftmdbnZ6SxsSg0bAUSqDETfwIrDN
VELNGURpq3DjO751fQLkz152JThZlONrPm6SqH+2yq0k/imlDMyhznvq+Up4EXiczfO25/APInqH
9ImfZSrqCiz3p7BNa9t1DtJtjx4nO4g/3qItwAhtZOzSyNgUZUJkS0OgYwLaNbOAMte1lEZ3aCj/
PtYFcVrRv6BV9zObKm5JRWmYYw/qLDjrN9AsCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PTqB7iZsvJeVQbxSYRkkEOB7dur2/Y+zWd7rSI4QgTOZZuY7cx4mymLcNTtY69vWs3+Ir6xtLuRI
kV9wRh0KJKuphJal6eQJChHGu6rp+AHyp8AyhIwGgID1vxyyu7xhU5nl4qM40fYe+ov2uBp5DVP0
GoOHS6Gilji9DRkCQuI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl92noyushAx6EnMgw3oSlb0lEtv202gnVMSNN83+NLaV5DJ/HimKQF470dvcnALDIl0xa3e3Dx2
/s2hBMgu9+fSioH4xbMFQTaBWMjBfDKLVgBkEfT5zBbn1LpjuMEnd/TVHxe/dqXJ8Ev1EIyVB5r3
7KAUvfDL8CretmawtvJtixs8bH8vAxLO4BUzVNbXDL44NeL/PffK31PA74odtZbSUGIq+Gf0nEXP
yEajhFawSXpK6M+iRpsuDwKHS/YxQldY5i8FGvVQrcrDBe3XAh+jjvxUqPhZBRChKpDSo0q7V9L4
JAZoQiGn28UrFoWwrxxP1gsv7sPdry3YTRu8DA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbhPmoTx5e7VcsW2JDC/J/bcPlnz66gRyRCtg0E0qHv9wqViijoH+owrxv0IWMQoDBsXBaeQm2xz
nHRZDc5s+B+JlzwwZQGB8pQM3sXMmxGcH+jeVqy6X8gKOEQFgnIK2FJlAjHpfO0xmJkl3wxWImNr
ADPNoWEMdruR5ksSgKexng6J3lkv4vPYoEvCF+Jq91pp71EIJgPtwlY833cs1Exi28xe2Qo/nzU7
oEFG5gySNEidQa25q1QrCDnSmj7j5wDJg5xzjXYmwWk9873dPWyEXdpFMqjxovIcyph/uXidS1PQ
XxFetrAMjtseoYWmz4Lm4f+rpe89PGRhWXsiZw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u7x25sjZWe79yzU52TdAK1EHhzoxhg0OOXYOwTp455Bu78gqkmKRv90VNHoa9foKyQc+Ui9ovV+f
Mu2Crcme1IbP51J6eQdKys/57qJrcFCxGtJs1Tw7KJ7NffFwkytoqR7pgvmtIH6+qncA8b3aZTLq
uwD9bGF9UFZVZ2XBc83+LRU+GZnNMHOa4eegWtueYHh1zUhGju1xbiGWuhliZ58pcNp6gCDiDv+p
GdiwFDT5RDj1bjrkOecRL2fvOdGLrhdqiTh7mvJeDStjjXiovaCdny21gVHf+dzrpyPE2xGgBinA
czj0D2pyt8plttBhpmMBtLm7Yegb1rHiA1UC4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ax8Nn3y8qIY97tYqs/w6/65Cp2CG+WRyi20ND2JmdKrfZukanonYYzlNsDdtoOeMZdG6gzVR279V
Et2Qz8YBLQmhBZMJ13mNxEOwpSUbc5lUbLJ9CQ+4u6jvStTDzX+odxkCCqHG8GJhSSFPGX+Z3VZc
TdU/OWddzxwk6JO1tiPn+qt2Q8nMj3Ulh7gqAxPMp0gosh6z+Kx5ZXSuVE/EPNyUDXjRSXjnWPwN
NnM94gbzG23dPqFIOG6f2m5ugBmUUghvI75DFpM7vJkXsEWAfZeOV351MLISR26yMaWxONCdGWTQ
DW1hvUkse+kVt5BxF8ft6CnT7VchA/flFKvfPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e/Ry1l/vqJFJqrtAPFKKjxxp0MWhiORDa7WOuKdNY7LaztvYcFdzfNmZDmSuTrj2jPF7WDL6uDC8
FMboEovqCHZ9s014f2WS+jYxvraqlkgyGQ1Q7gAZ6yaBsdSi2RgWdbpy++ECpfVjq8/sYcJl+CZl
ZIsOc7C4BTFh3wysjt9r3cLq/k/dOO8xw2ZAarjqRzjr0h9T3TEzowI/jWVIqkEICEpCsA6k6h2U
oRuVQxQmdtSXmU/Zm/g8I4dj6axYw/zYpYJe2v9s4sy3NCBf/p+z3JFoReqcGYtminQ5ba3zzR5v
mVNiXw+YtQVCe0IsGLqjaEBWcXrs5SNFVYKce0xzBupVSQ0hP5cTBMtcToem7n2nM+9LdhZqlPBl
KimcvX+KrlUbox8H49P1OzL0A8+Eterrfdy0jE2DF+YuIuSAnudKM11WtjqK5yq8zJk5JOHQUQZl
qO7dmmZT95FjGPG/jqS+uYlHdZCNNyQ2l2SbVZw7NPkIJGq5bAKeGsSg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OqTG2QUdaSjYwH6PeUiMov3bCDPXiUvE4U1Z/Vd7xbPVo7tNNwQeTcXKi/ZUR5G1tkEs1OoxIqaH
ytImL/6Ro6liEE5oT3otxdQb1Yz3ukWdnhQpgw3O2DRb5K1R4L7p5QCVIgq+/7f4oNn8VSJ1hT7o
jVMeT5IvgkJXZsqX/2c86iOEUQ/Xha6SVw6W50dS1u8Q/FzR54WBSo0MFMxZWh5Pyf5qnBJKna0d
nVdDHDBFDajINOk8j7Oonu6ynHrhNkyo1IEnNv/ZQPbHo2aynI/MIaO/5etmCQO2m+53okz5H7pu
RWYkE0zXoE1v6jl/QhZyc23SZppXzWGhd1zsRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2416)
`pragma protect data_block
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
x9N/cKUV+1+o9y5eAZ0PaaBANXiqwg==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
ksEefSVwxJ7GZRGfDW/ikJjjKrptVqn8BoUNFE3DbyFfbjY6zlYjVU2CwELAYvgfKaBSrfyMEuMS
jKlgb8yavCVUJwldPyfxtdCTc4Xwwf5euzW2dlEPW6GJ/QR3MDQqWj87hbjhXiaVYBETI5rDAwxs
ag0jDyfGbH7Fx+g9iHA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GUnXggesQ6wFp8A8d+M/2l15nNVdxv4BePG1TQSaW5ydG6gBnt1y3X+nKLPfsAAKMgY0S9HUXdwI
BtWpUk5399XEOzA2bD1xmv0kwgpoz7POYIpgdAx/BCQF4rvktNKhi//x7IGo53UxJVwDFGgSASrO
U5lhhW3AIMh5QGWdNY6U3TzkCUAU/h8BrAIu8xVBUHfzif45XFeiMwPEQ+uf9C38tdN1byBWu1D/
bdHKHLEoQ180FM40kDg21Tnzo1CCw9O7115GHzGr/Y7RqsUoXbHr1346oJXf0hxxsDt9e/cTljtl
4L97UAEqQxYqk45h7XMoUAz/YbWBBiDhQKrR3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iNgUNYpqDDi+BiL6da8RD7fGSSVTBewyOT5AwUszNtVY2QTxMMGmpdt4Wl8wGrjG/+93rEl2nPxj
fVk7z+ka8eUaCXkzXlWBjwMeJ90rJ8KO4FihwKtjjMiQquSLwyNR5pyyZNTkHBdNAkkDc8PkCtch
58pttA9zypiv98tm7zU=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l9wV41MkDixx33FFiTcl/1LF3h1Ssk8tRJ69dtGKsXv9zoUl5Bxiuu/o/WzYfpCq3B5+G2qijP2Z
OIQg8dZnpVNEIlnCHyi/D8CgxGpnjTB9agrcv8p2uJfjEuchqWILowpBGaVDhzCH2CHEpi+ZHflK
AxkMClCs1aA/6Q0ZWIYTncVkAAMhjwkaIom1j7aWSm2i/zWAtmSZoLTcPpp31mhQRIss1MVGJsOR
Sh3metVPfaNOi3KvYM6QrxiVtTHO3a2wssYRgjTs87/jOj8J10HlZpV6TokY4thLe0cPSSEjglvq
P6RT4BZgxEuLA0F8c6+3OkGNR8Kzq00egupHgQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1b99Vg2radkzd2aDsrt07EnR9e4ghAuZTvdCwZ+Rfi+k0hCjhsY9FlMOKqmtC+lX1MNCBSeHgsNL
vC3O2ZjgIz/EMJCZZakXOrMcAGXIynPJrLgl1NY5RYyI0zJywRaKse7wLpCuqecTGBXUl9G57HTW
PPOgFQhib3Ya2IhicH3fARyC1eaTsrN27wBxP2SbDYBj+LDXG4uwVuxMwtLTV+0UvQmmIoppVGpZ
Ua7OYpyUmmyrNO0BBZV5rC+vJvv2uz6EYEInAbf/YvilBXxRCEmPVuo9PJwi37qvELSx0oUJaLW6
SpcXmCGOcObaWn+sWfPSIS9G56CPukLR9CbTsg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hrNBtOO525Y/qYPVt97xz4nxrMCJQmfV2TjTo00Y7cfC33GktlBrkj8AmqRWBwL54BC7INRnv+EM
dUB9k9sPwhzMDNgYx8Xs2o/+fBIofwnwjLpcykEeIl738vyCoa0SoxeK9v3Ks6oRRe19naTyXBZh
SSMXrAfLivnebn00pk2fIzGR0yUlYBnm1wM0LgODxBtx1gf57R3WPAX+iP12db7Jr/J1AtuhOpN3
LTnpRVg++HfBpxysFJlYUWYkMOcIj3QDjVCSVYLaf6+1Ir6izPggk614ydQW49xFI1feXBQmCdZj
GRAjYR+lgC7YQ2AYnnUzYpc0gNszwtpJjNz1kg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nV7nxF322RjcviTHhbV5But2nl7UvqvHOdctqSW5Chm+DWLRVeX5/RuqZiIggqahWMnCxKI8LbWs
tMgeFuwfZEDdkccQY+u8uRg70PK0ubEgM9V9yEadlgOcHGAcGWfEKlOP/4NUztFqY5W8lCjrq6Rw
+hAjup6bYkwhbjs1bYgO80It/T4sXDfmF6EFgGX34uqF+TeyqyfJTzh98ST/I6H9/SdQo/JQxbto
b/urscmiQUqDbmopEJpCzfPQR+MKUxzMhdXFmX6MmzhjsAjc7sUT3GVtsk5lSPK9foIK66/+mX3S
nPsq9e/4M7tDfoV1noDtEdGcaq8//O9/65wEUA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
D8vjA0bcs03atqVGl9n4waeXMx0cq7qqplOEpHoCsxcjrnCmleai/szQA+0wbIEOHR04zff/ikRf
JfA6YDU0wnRfi0x4K705Tkr7rwfpaJC+OTW4mKdBL8Wqm7ecjAreXQZVb6p6QVNaz4TrNairCp5R
5QeCslFvljCeKS+guLuFf441sciBjxYQDawtKwF1Lw0hFVg65PDaIdwzamCMJclhyPZ5oHnSTkFB
ZmjEtufNQD/lGIWS+MkwUVvdra98hC0JnQ8pwRQ/hdATIAIIm0LSL8Uq1X3GrUpk+2+r1a6L8N+l
aCeDJtDzvLPGVOI57FFRQEKUjjBea2T10d8Crvq90r84OEfcooPJz1OYhLGEyem5+xJ+h7KrvSQA
zpj8OngSFSDWg2l5GH1kY9p1qg9fuOMyhWC+tMFVuYTkZAY/gPWq6vpY+1A+1mtMb0fBdk3JiQx9
JRtQR3lE/tLwyB0ggWJJcPniIccaxxv2ixKSQKq3WPCyPMnkcWlLuAES

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FdWuCO7PN7y/dH6CMR4JA05yurwi5lHIUjuk6g7VXrZ9GYhlTKmpCWlV0uGRUBrVMqBEOdEC+Qdo
3z23v5MofUgIVxjUAp/sUgwHIK6W6h79woMKhZ7Q8xOWMPZOLmuapnKFf81WzFnIBNCB6t14gJVU
px/ycQC6omaG/j9kW5E5E5SL6k3JPQazmLq4Xr2LJxBV0vQK7H4f53R4BHTUJa2f4FYma0lxdz44
oyi/sA2g6j+/1BusYznWbR1i4g6N5/yKHaQsVC8avD4Za+oFFIibqpFCH/pXnCw9xbVBmqb/6oXr
bryFUy7yXCVAcYqaw6V/UGRHO3IpM/9pCUt6zA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M4HO+jbaZT6VXHl9/8iOqAYcbfJQiwrfHDZzT6vgbLJl6cTDyUvHgcS5t2zGcry1btczwe3BG93N
otcG7WChZ+yQD2GhvSvKl6/R6fTRkTsQMb+KZ8iIY3SYTi2IEWDDXvXGOT4PU++/Mcs5izrOa9cr
QEZ6aFOprnoxFHsifMKH7+lyIB36LejMiLOXLIs/qeE9ek0gcELLiOPpFdgT+CblsKURWcj7lSDy
LOpj9ZHOi6QSvbE7zyHNo+1bBWu5CRMPYdfxMmyvdMTS3uH46mlbVEAdD81jnhuPF8ZU62ydpv7K
ROvxnKttH2B+O/NJnl7IfB6VSuvw3jfvS+x8RQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pLRBF6ZwjTkt3ZSTw5PGeXKtbraccfUc2a4RqDvgUUi+N8xSfFYUm66wf4axudvFee1TxPTJkx2W
b5c2yGzT8AQDWpHT4YmhX+9aGeisNhDIcXjw3RHSIjMUwJHiD6K5VDbxZ5Y5P5i2nV20spF9ISHb
fruW9mNlO/+bQNDVPhOl30pRQ0rAGPm/0jX6x3ZITqf3r/gH8T8W1GQr3vvTARIFdWGBv0bikCwS
tuXoTrjuwcwHUckG3AEUyze5r7Sq6mM3Ef0VUuGZOx2VobzyP2tA46uYF9b33wnEo6TvY2Yh+fPa
o9KYSdwpMYRgvg52TQTvR3Bjdbnr1jzIcdZ/2w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11808)
`pragma protect data_block
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
YLTXnc7NDNXy
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
