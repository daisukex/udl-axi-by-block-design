# -----------------------------------------------------------------------------
# Copyright 2024 Space Cubics, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# -----------------------------------------------------------------------------

proc add_bd_cells { ip_dir ip_name module } {
    source ${ip_dir}/${ip_name}/${module}.config
    create_bd_cell -type ip -vlnv xilinx.com:ip:${ipcore} ${module}
    set_property -dict ${ipparam} [get_bd_cells ${module}]
}

proc add_hls_cells { ip_dir ip_name module } {
    source ${ip_dir}/${ip_name}/${module}.config
    create_bd_cell -type ip -vlnv xilinx.com:hls:${ipcore} ${module}
    if {${ipparam} != ""} {
        set_property -dict ${ipparam} [get_bd_cells ${module}]
    }
}

proc add_constant { instance width value connect_to } {
    create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 ${instance}
    set_property CONFIG.CONST_WIDTH ${width} [get_bd_cells ${instance}]
    set_property CONFIG.CONST_VAL ${value} [get_bd_cells ${instance}]
    if {[get_bd_ports -quiet ${connect_to}] != ""} {
        connect_bd_net [get_bd_pins ${instance}/dout] [get_bd_ports ${connect_to}]
    } else {
        connect_bd_net [get_bd_pins ${instance}/dout] [get_bd_pins ${connect_to}]
    }
}

proc add_slice { instance din_width dout_width din_from din_to } {
    create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 ${instance}
    set_property CONFIG.DIN_WIDTH ${din_width} [get_bd_cells ${instance}]
    set_property CONFIG.DOUT_WIDTH ${dout_width} [get_bd_cells ${instance}]
    set_property -dict [list CONFIG.DIN_FROM ${din_from} CONFIG.DIN_TO ${din_to}] [get_bd_cells ${instance}]
}

proc add_concat { instance port } {
    create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 ${instance}
    set_property CONFIG.NUM_PORTS ${port} [get_bd_cells ${instance}]
}

proc read_rtl_from_rtllist {rtllist} {
    set fid [open ${rtllist} r]
    while {[gets $fid rtlpath] >= 0} {
        set ext [file extension $rtlpath]
        if {$ext == ".sv"} {
            read_verilog -sv ${rtlpath}
        } elseif {$ext == ".v"} {
            read_verilog ${rtlpath}
        } elseif {$ext == ".vhd"} {
        read_vhdl -library xil_defaultlib  ${rtlpath}
        }
    }
}
