# Copyright 2020 Xilinx Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Set the name of the project:
set project_name ACL

# Set the project device:
set device xczu9eg-ffvb1156-2-e

# If using a UI layout, uncomment this line:
set ui_name layout.ui


# Set the path to the directory we want to put the Vivado build in. Convention is <PROJECT NAME>_hw
set proj_dir ../temp/${project_name}_hw 
#was set proj_dir ../hardware/${project_name}_hw 


create_project -name ${project_name} -force -dir ${proj_dir} -part ${device}

# Set the board_part property to the correct development board: ZCU102
set_property board_part xilinx.com:zcu102:part0:3.3 [current_project]

# Source the BD file, BD naming convention is project_bd.tcl
source ACL_bd.tcl

#Set the path to the constraints file:
set impl_const ../Hardware/constraints/constraints.xdc

if [file exists ${impl_const}] {
    add_files -fileset constrs_1 -norecurse ./${impl_const}
    set_property used_in_synthesis true [get_files ./${impl_const}]
}

make_wrapper -files [get_files ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/${project_name}.bd] -top

add_files -norecurse ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/hdl/${project_name}_wrapper.v
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

validate_bd_design
save_bd_design
close_bd_design ${project_name}

# If using UI, uncomment these two lines:
file mkdir ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/ui
file copy -force ${ui_name} ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/ui/${ui_name}

open_bd_design ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/${project_name}.bd
set_property synth_checkpoint_mode None [get_files ${proj_dir}/${project_name}.srcs/sources_1/bd/${project_name}/${project_name}.bd]

