## ########################################################################################################################
## ##
## # (c) Copyright 2012-2016 Advanced Micro Devices, Inc. All rights reserved.
## #
## # This file contains confidential and proprietary information of Advanced Micro Devices, Inc. and is protected under U.S. and
## # international copyright and other intellectual property laws. 
## #
## # DISCLAIMER
## # This disclaimer is not a license and does not grant any rights to the materials distributed herewith. Except as
## # otherwise provided in a valid license issued to you by Advanced Micro Devices, and to the maximum extent permitted by applicable law:
## # (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES AND
## # CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## # INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Advanced Micro Devices shall not be liable (whether in contract or tort,
## # including negligence, or under any other theory of liability) for any loss or damage of any kind or nature related to,
## # arising under or in connection with these materials, including for any direct, or any indirect, special, incidental, or
## # consequential loss or damage (including loss of data, profits, goodwill, or any type of loss or damage suffered as a
## # result of any action brought by a third party) even if such damage or loss was reasonably foreseeable or Advanced Micro Devices had
## # been advised of the possibility of the same.
## #
## # CRITICAL APPLICATIONS
## # Advanced Micro Devices products are not designed or intended to be fail-safe, or for use in any application requiring fail-safe
## # performance, such as life-support or safety devices or systems, Class III medical devices, nuclear facilities,
## # applications related to the deployment of airbags, or any other applications that could lead to death, personal injury,
## # or severe property or environmental damage (individually and collectively, "Critical Applications"). Customer assumes
## # the sole risk and liability of any use of Advanced Micro Devices products in Critical Applications, subject only to applicable laws and
## # regulations governing limitations on product liability.
## #
## # THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
## #
## ########################################################################################################################
# This constraints file contains default clock frequencies to be used during creation of a Synthesis Design Checkpoint (DCP). 
# For best results the frequencies should be modified to match the target frequencies. 
# This constraints file is not used in top-down/global synthesis (not the default flow of Vivado).

create_clock           -name s_axi_lite_clk       -period 10.000 [get_ports s_axi_lite_clk]
create_clock           -name axis_clk             -period 10.000 [get_ports axis_clk]
create_clock           -name ref_clk              -period 20.000 [get_ports ref_clk]
create_clock           -name mgt_clk              -period 6.400 [get_ports mgt_clk_clk_p]

