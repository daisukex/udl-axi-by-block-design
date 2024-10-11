create_bd_port -dir I MAXI_CLK
create_bd_port -dir I REF_CLK
create_bd_port -dir I USER_CLK1
create_bd_port -dir I USER_CLK2
create_bd_port -dir I SYS_RSTB
create_bd_port -dir I SYS_RSTB_SYNC_REFCLK
create_bd_port -dir I SYS_RSTB_SYNC_USERCLK1
create_bd_port -dir I SYS_RSTB_SYNC_USERCLK2
create_bd_port -dir I POR_RSTB
create_bd_port -dir I POR_RSTB_SYNC_REFCLK
create_bd_port -dir I BUS_RSTB
create_bd_port -dir O -from 15 -to 0 UDL_INTISR
create_bd_port -dir O -from 2 -to 0 UDL_AXIM_AWID
create_bd_port -dir O -from 31 -to 0 UDL_AXIM_AWADDR
create_bd_port -dir O -from 7 -to 0 UDL_AXIM_AWLEN
create_bd_port -dir O -from 2 -to 0 UDL_AXIM_AWSIZE
create_bd_port -dir O -from 1 -to 0 UDL_AXIM_AWBURST
create_bd_port -dir O UDL_AXIM_AWLOCK
create_bd_port -dir O -from 3 -to 0 UDL_AXIM_AWCACHE
create_bd_port -dir O -from 2 -to 0 UDL_AXIM_AWPROT
create_bd_port -dir O -from 3 -to 0 UDL_AXIM_AWQOS
create_bd_port -dir O UDL_AXIM_AWVALID
create_bd_port -dir I UDL_AXIM_AWREADY
create_bd_port -dir O -from 31 -to 0 UDL_AXIM_WDATA
create_bd_port -dir O -from 3 -to 0 UDL_AXIM_WSTRB
create_bd_port -dir O UDL_AXIM_WLAST
create_bd_port -dir O UDL_AXIM_WVALID
create_bd_port -dir I UDL_AXIM_WREADY
create_bd_port -dir I -from 2 -to 0 UDL_AXIM_BID
create_bd_port -dir I -from 1 -to 0 UDL_AXIM_BRESP
create_bd_port -dir I UDL_AXIM_BVALID
create_bd_port -dir O UDL_AXIM_BREADY
create_bd_port -dir O -from 2 -to 0 UDL_AXIM_ARID
create_bd_port -dir O -from 31 -to 0 UDL_AXIM_ARADDR
create_bd_port -dir O -from 7 -to 0 UDL_AXIM_ARLEN
create_bd_port -dir O -from 2 -to 0 UDL_AXIM_ARSIZE
create_bd_port -dir O -from 1 -to 0 UDL_AXIM_ARBURST
create_bd_port -dir O UDL_AXIM_ARLOCK
create_bd_port -dir O -from 3 -to 0 UDL_AXIM_ARCACHE
create_bd_port -dir O -from 2 -to 0 UDL_AXIM_ARPROT
create_bd_port -dir O -from 3 -to 0 UDL_AXIM_ARQOS
create_bd_port -dir O UDL_AXIM_ARVALID
create_bd_port -dir I UDL_AXIM_ARREADY
create_bd_port -dir I -from 2 -to 0 UDL_AXIM_RID
create_bd_port -dir I -from 31 -to 0 UDL_AXIM_RDATA
create_bd_port -dir I -from 1 -to 0 UDL_AXIM_RRESP
create_bd_port -dir I UDL_AXIM_RLAST
create_bd_port -dir I UDL_AXIM_RVALID
create_bd_port -dir O UDL_AXIM_RREADY
create_bd_port -dir I -from 2 -to 0 UDL_AXIS_AWID
create_bd_port -dir I -from 31 -to 0 UDL_AXIS_AWADDR
create_bd_port -dir I -from 7 -to 0 UDL_AXIS_AWLEN
create_bd_port -dir I -from 2 -to 0 UDL_AXIS_AWSIZE
create_bd_port -dir I -from 1 -to 0 UDL_AXIS_AWBURST
create_bd_port -dir I UDL_AXIS_AWLOCK
create_bd_port -dir I -from 3 -to 0 UDL_AXIS_AWCACHE
create_bd_port -dir I -from 2 -to 0 UDL_AXIS_AWPROT
create_bd_port -dir I -from 3 -to 0 UDL_AXIS_AWREGION
create_bd_port -dir I -from 3 -to 0 UDL_AXIS_AWQOS
create_bd_port -dir I UDL_AXIS_AWVALID
create_bd_port -dir O UDL_AXIS_AWREADY
create_bd_port -dir I -from 31 -to 0 UDL_AXIS_WDATA
create_bd_port -dir I -from 3 -to 0 UDL_AXIS_WSTRB
create_bd_port -dir I UDL_AXIS_WLAST
create_bd_port -dir I UDL_AXIS_WVALID
create_bd_port -dir O UDL_AXIS_WREADY
create_bd_port -dir O -from 3 -to 0 UDL_AXIS_BID
create_bd_port -dir O -from 1 -to 0 UDL_AXIS_BRESP
create_bd_port -dir O UDL_AXIS_BVALID
create_bd_port -dir I UDL_AXIS_BREADY
create_bd_port -dir I -from 2 -to 0 UDL_AXIS_ARID
create_bd_port -dir I -from 31 -to 0 UDL_AXIS_ARADDR
create_bd_port -dir I -from 7 -to 0 UDL_AXIS_ARLEN
create_bd_port -dir I -from 2 -to 0 UDL_AXIS_ARSIZE
create_bd_port -dir I -from 1 -to 0 UDL_AXIS_ARBURST
create_bd_port -dir I UDL_AXIS_ARLOCK
create_bd_port -dir I -from 3 -to 0 UDL_AXIS_ARCACHE
create_bd_port -dir I -from 2 -to 0 UDL_AXIS_ARPROT
create_bd_port -dir I -from 3 -to 0 UDL_AXIS_ARREGION
create_bd_port -dir I -from 3 -to 0 UDL_AXIS_ARQOS
create_bd_port -dir I UDL_AXIS_ARVALID
create_bd_port -dir O UDL_AXIS_ARREADY
create_bd_port -dir O -from 2 -to 0 UDL_AXIS_RID
create_bd_port -dir O -from 31 -to 0 UDL_AXIS_RDATA
create_bd_port -dir O -from 1 -to 0 UDL_AXIS_RRESP
create_bd_port -dir O UDL_AXIS_RLAST
create_bd_port -dir O UDL_AXIS_RVALID
create_bd_port -dir I UDL_AXIS_RREADY
create_bd_port -dir O IO_NTRST_I
create_bd_port -dir O IO_TDI_I
create_bd_port -dir O IO_SWCLKTCK_I
create_bd_port -dir O IO_SWDIOTMS_I
create_bd_port -dir I IO_SWDIOTMS_O
create_bd_port -dir I IO_SWDIOTMS_EN
create_bd_port -dir I IO_TDOSWO_O
create_bd_port -dir I IO_TDOSWO_EN
create_bd_port -dir I CM3_UART_TX
create_bd_port -dir O CM3_UART_RX
#create_bd_port -dir IO -from 15 -to 0 UIO1
create_bd_port -dir O -from 15 -to 0 UIO1
#create_bd_port -dir IO -from 15 -to 0 UIO2
create_bd_port -dir O -from 15 -to 0 UIO2
create_bd_port -dir IO -from 5 -to 0 UIO4
#create_bd_port -dir IO -from 2 -to 0 UIO3
create_bd_port -dir O -from 2 -to 0 UIO3
#create_bd_port -dir IO TRCH_UART_TX
#create_bd_port -dir IO TRCH_UART_RX
create_bd_port -dir O TRCH_UART_TX
create_bd_port -dir O TRCH_UART_RX
create_bd_port -dir IO WDOG_OUT
