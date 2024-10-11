#-----------------------------------------------------------------------------
# Create udl_axi Block Design
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
#-----------------------------------------------------------------------------

source script/set_env.tcl
source script/vivado_basic_func.tcl

# Check argument
if {${argc} < 2} {
    puts "Not enough arguments."
    puts " vivado -mode tcl -source (script) -tclargs (Project Name) (Project Directory)
    exit 1
}
set arglist ${argv}

# Set Project
set prj_name [lindex ${arglist} 0]
set prj_dir  [lindex ${arglist} 1]

# Open Project
open_project ${prj_dir}/${prj_name}.xpr
set file_set [current_fileset]

# Create Block Design
set bd_name udl_axi_bd
create_bd_design ${bd_name}

# Read RTL
read_rtl_from_rtllist ${rtldir}/rtl.list

# Create udl_axi
#---------------
# Create port
#------------
source script/create_udl_axi_port.tcl

# AXI Crossbar module
add_bd_cell ${ip_dir} axi_crossbar udl_axi_crossbar
connect_bd_net [get_bd_ports UDL_AXIS_AWID]     [get_bd_pins udl_axi_crossbar/s_axi_awid]
connect_bd_net [get_bd_ports UDL_AXIS_AWADDR]   [get_bd_pins udl_axi_crossbar/s_axi_awaddr]
connect_bd_net [get_bd_ports UDL_AXIS_AWLEN]    [get_bd_pins udl_axi_crossbar/s_axi_awlen]
connect_bd_net [get_bd_ports UDL_AXIS_AWSIZE]   [get_bd_pins udl_axi_crossbar/s_axi_awsize]
connect_bd_net [get_bd_ports UDL_AXIS_AWBURST]  [get_bd_pins udl_axi_crossbar/s_axi_awburst]
connect_bd_net [get_bd_ports UDL_AXIS_AWLOCK]   [get_bd_pins udl_axi_crossbar/s_axi_awlock]
connect_bd_net [get_bd_ports UDL_AXIS_AWCACHE]  [get_bd_pins udl_axi_crossbar/s_axi_awcache]
connect_bd_net [get_bd_ports UDL_AXIS_AWPROT]   [get_bd_pins udl_axi_crossbar/s_axi_awprot]
connect_bd_net [get_bd_ports UDL_AXIS_AWQOS]    [get_bd_pins udl_axi_crossbar/s_axi_awqos]
connect_bd_net [get_bd_ports UDL_AXIS_AWVALID]  [get_bd_pins udl_axi_crossbar/s_axi_awvalid]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_awready] [get_bd_ports UDL_AXIS_AWREADY]
connect_bd_net [get_bd_port UDL_AXIS_WDATA]  [get_bd_pins udl_axi_crossbar/s_axi_wdata]
connect_bd_net [get_bd_port UDL_AXIS_WSTRB]  [get_bd_pins udl_axi_crossbar/s_axi_wstrb]
connect_bd_net [get_bd_port UDL_AXIS_WLAST]  [get_bd_pins udl_axi_crossbar/s_axi_wlast]
connect_bd_net [get_bd_port UDL_AXIS_WVALID] [get_bd_pins udl_axi_crossbar/s_axi_wvalid]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_wready] [get_bd_ports UDL_AXIS_WREADY]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_bid]    [get_bd_ports UDL_AXIS_BID]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_bresp]  [get_bd_ports UDL_AXIS_BRESP]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_bvalid] [get_bd_ports UDL_AXIS_BVALID]
connect_bd_net [get_bd_ports UDL_AXIS_BREADY]  [get_bd_pins  udl_axi_crossbar/s_axi_bready]
connect_bd_net [get_bd_ports UDL_AXIS_ARID]    [get_bd_pins udl_axi_crossbar/s_axi_arid]
connect_bd_net [get_bd_ports UDL_AXIS_ARADDR]  [get_bd_pins udl_axi_crossbar/s_axi_araddr]
connect_bd_net [get_bd_ports UDL_AXIS_ARLEN]   [get_bd_pins udl_axi_crossbar/s_axi_arlen]
connect_bd_net [get_bd_ports UDL_AXIS_ARSIZE]  [get_bd_pins udl_axi_crossbar/s_axi_arsize]
connect_bd_net [get_bd_ports UDL_AXIS_ARBURST] [get_bd_pins udl_axi_crossbar/s_axi_arburst]
connect_bd_net [get_bd_ports UDL_AXIS_ARLOCK]  [get_bd_pins udl_axi_crossbar/s_axi_arlock]
connect_bd_net [get_bd_ports UDL_AXIS_ARCACHE] [get_bd_pins udl_axi_crossbar/s_axi_arcache]
connect_bd_net [get_bd_ports UDL_AXIS_ARPROT]  [get_bd_pins udl_axi_crossbar/s_axi_arprot]
connect_bd_net [get_bd_ports UDL_AXIS_ARQOS]   [get_bd_pins udl_axi_crossbar/s_axi_arqos]
connect_bd_net [get_bd_ports UDL_AXIS_ARVALID] [get_bd_pins udl_axi_crossbar/s_axi_arvalid]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_arready] [get_bd_ports UDL_AXIS_ARREADY]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_rid]     [get_bd_ports UDL_AXIS_RID]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_rdata]   [get_bd_ports UDL_AXIS_RDATA]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_rresp]   [get_bd_ports UDL_AXIS_RRESP]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_rlast]   [get_bd_ports UDL_AXIS_RLAST]
connect_bd_net [get_bd_pins udl_axi_crossbar/s_axi_rvalid]  [get_bd_ports UDL_AXIS_RVALID]
connect_bd_net [get_bd_ports UDL_AXIS_RREADY] [get_bd_pins udl_axi_crossbar/s_axi_rready]
connect_bd_net [get_bd_ports MAXI_CLK] [get_bd_pins udl_axi_crossbar/aclk]
connect_bd_net [get_bd_ports SYS_RSTB] [get_bd_pins udl_axi_crossbar/aresetn]

# Disable stting for AXI master interface
add_constant axim_awid 3 0x0 UDL_AXIM_AWID
add_constant axim_awaddr 32 0x0 UDL_AXIM_AWADDR
add_constant axim_awlen 8 0x00 UDL_AXIM_AWLEN
add_constant axim_awsize 3 0x0 UDL_AXIM_AWSIZE
add_constant axim_awburst 2 0x0 UDL_AXIM_AWBURST
add_constant axim_awlock 1 0x0 UDL_AXIM_AWLOCK
add_constant axim_awcache 4 0x0 UDL_AXIM_AWCACHE
add_constant axim_awprot 3 0x0 UDL_AXIM_AWPROT
add_constant axim_awqos 4 0x0 UDL_AXIM_AWQOS
add_constant axim_awvalid 1 0x0 UDL_AXIM_AWVALID
add_constant axim_wdata 32 0x00000000 UDL_AXIM_WDATA
add_constant axim_wstrb 4 0x0 UDL_AXIM_WSTRB
add_constant axim_wlast 1 0x0 UDL_AXIM_WLAST
add_constant axim_wvalid 1 0x0 UDL_AXIM_WVALID
add_constant axim_bready 1 0x1 UDL_AXIM_BREADY
add_constant axim_arid 3 0x0 UDL_AXIM_ARID
add_constant axim_araddr 32 0x00000000 UDL_AXIM_ARADDR
add_constant axim_arlen 8 0x00 UDL_AXIM_ARLEN
add_constant axim_arsize 3 0x0 UDL_AXIM_ARSIZE
add_constant axim_arburst 2 0x0 UDL_AXIM_ARBURST
add_constant axim_arlock 1 0x0 UDL_AXIM_ARLOCK
add_constant axim_arcache 4 0x0 UDL_AXIM_ARCACHE
add_constant axim_arprot 3 0x0 UDL_AXIM_ARPROT
add_constant axim_arqos 4 0x0 UDL_AXIM_ARQOS
add_constant axim_arvalid 1 0x0 UDL_AXIM_ARVALID
add_constant axim_rready 1 0x1 UDL_AXIM_RREADY

# Cortex-M3 signals
create_bd_cell -type module -reference bd_io_buf io_buf_uio4
set_property CONFIG.BUS_WIDTH 6 [get_bd_cells io_buf_uio4]
connect_bd_net [get_bd_pins io_buf_uio4/io] [get_bd_ports UIO4]
add_concat uio4_out_concat 6
add_concat uio4_oen_concat 6
connect_bd_net [get_bd_pins uio4_out_concat/dout] [get_bd_pins io_buf_uio4/s_out]
connect_bd_net [get_bd_pins uio4_oen_concat/dout] [get_bd_pins io_buf_uio4/s_oen]
## Cortex-M3 JTAG/SWD
add_slice uio4_in_slice1 6 1 1 1
connect_bd_net [get_bd_pins uio4_in_slice1/Dout] [get_bd_ports IO_SWCLKTCK_I]
connect_bd_net [get_bd_pins io_buf_uio4/s_in] [get_bd_pins uio4_in_slice1/Din]
add_constant uio4_out1 1 0x0 uio4_out_concat/In1
add_constant uio4_oen1 1 0x1 uio4_oen_concat/In1
add_slice uio4_in_slice2 6 1 2 2
connect_bd_net [get_bd_pins uio4_in_slice2/Dout] [get_bd_ports IO_SWDIOTMS_I]
connect_bd_net [get_bd_pins io_buf_uio4/s_in] [get_bd_pins uio4_in_slice2/Din]
connect_bd_net [get_bd_ports IO_SWDIOTMS_EN] [get_bd_pins uio4_oen_concat/In2]
connect_bd_net [get_bd_ports IO_SWDIOTMS_O]  [get_bd_pins uio4_out_concat/In2]
add_slice uio4_in_slice3 6 1 3 3
connect_bd_net [get_bd_pins uio4_in_slice3/Dout] [get_bd_ports IO_TDI_I]
connect_bd_net [get_bd_pins io_buf_uio4/s_in] [get_bd_pins uio4_in_slice3/Din]
add_constant uio4_oen3 1 0x0 uio4_oen_concat/In3
add_constant uio4_out3 1 0x0 uio4_out_concat/In3
connect_bd_net [get_bd_ports IO_TDOSWO_EN] [get_bd_pins uio4_oen_concat/In4]
connect_bd_net [get_bd_ports IO_TDOSWO_O]  [get_bd_pins uio4_out_concat/In4]
add_constant ntrst_i 1 0x1 IO_NTRST_I
## Console
add_constant uio4_oen0 1 0x0 uio4_oen_concat/In0
connect_bd_net [get_bd_ports CM3_UART_TX] [get_bd_pins uio4_out_concat/In0]
add_slice uio4_in_slice5 6 1 5 5
connect_bd_net [get_bd_pins uio4_in_slice5/Dout] [get_bd_ports CM3_UART_RX]
connect_bd_net [get_bd_pins io_buf_uio4/s_in] [get_bd_pins uio4_in_slice5/Din]
add_constant uio4_oen5 1 0x1 uio4_oen_concat/In5

# ISR
add_constant intisr 16 0x0000 UDL_INTISR

# User IO
create_bd_cell -type module -reference bd_io_buf io_buf_uio1
connect_bd_net [get_bd_pins io_buf_uio1/io] [get_bd_ports UIO1]
add_constant uio1_out 16 0x0000 io_buf_uio1/s_out
add_constant uio1_oen 16 0xFFFF io_buf_uio1/s_oen

create_bd_cell -type module -reference bd_io_buf io_buf_uio2
connect_bd_net [get_bd_pins io_buf_uio2/io] [get_bd_ports UIO2]
add_constant uio2_out 16 0x0000 io_buf_uio2/s_out
add_constant uio2_oen 16 0xFFFF io_buf_uio2/s_oen

# Hardware Option signal
create_bd_cell -type module -reference bd_io_buf io_buf_uio3
set_property CONFIG.BUS_WIDTH 3 [get_bd_cells io_buf_uio3]
connect_bd_net [get_bd_pins io_buf_uio3/io] [get_bd_ports UIO3]
add_constant uio3_out 3 0x0 io_buf_uio3/s_out
add_constant uio3_oen 3 0x0 io_buf_uio3/s_oen

create_bd_cell -type module -reference bd_io_buf io_buf_uarttx
set_property CONFIG.BUS_WIDTH 1 [get_bd_cells io_buf_uarttx]
connect_bd_net [get_bd_pins io_buf_uarttx/io] [get_bd_ports TRCH_UART_TX]
add_constant uio3_3_o  1 0x0 io_buf_uarttx/s_out
add_constant uio3_3_oe 1 0x0 io_buf_uarttx/s_oen
create_bd_cell -type module -reference bd_io_buf io_buf_uartrx
set_property CONFIG.BUS_WIDTH 1 [get_bd_cells io_buf_uartrx]
connect_bd_net [get_bd_pins io_buf_uartrx/io] [get_bd_ports TRCH_UART_RX]
add_constant uio3_4_o  1 0x0 io_buf_uartrx/s_out
add_constant uio3_4_oe 1 0x0 io_buf_uartrx/s_oen

create_bd_cell -type module -reference bd_io_buf io_buf_wdog
set_property CONFIG.BUS_WIDTH 1 [get_bd_cells io_buf_wdog]
connect_bd_net [get_bd_pins io_buf_wdog/io] [get_bd_ports WDOG_OUT]
add_constant wdog_out 1 0x1 io_buf_wdog/s_out
add_constant wdog_oen 1 0x0 io_buf_wdog/s_oen

save_bd_design

# Generate target
generate_target all [get_files ${prj_dir}/${prj_name}.srcs/${file_set}/bd/${bd_name}/${bd_name}.bd]
export_ip_user_files -of_objects [get_files ${prj_dir}/${prj_name}.srcs/${file_set}/bd/zynq_ps_bd/zynq_ps_bd.bd] -no_script -sync -force -quiet
set ip_run [create_ip_run [get_files -of_objects [get_fileset ${file_set}] ${prj_dir}/${prj_name}.srcs/${file_set}/bd/${bd_name}/${bd_name}.bd]]
launch_runs ${ip_run} -jobs ${cpus}
wait_on_run ${ip_run}

# Set top module
set_property top ${prj_name} [current_fileset]

# Close Project
close_project
exit
