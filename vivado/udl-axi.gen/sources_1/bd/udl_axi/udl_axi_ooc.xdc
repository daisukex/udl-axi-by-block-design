################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name MAXI_CLK -period 20.833 [get_ports MAXI_CLK]
create_clock -name REF_CLK -period 41.667 [get_ports REF_CLK]
create_clock -name USER_CLK2 -period 41.667 [get_ports USER_CLK2]
create_clock -name USER_CLK1 -period 41.667 [get_ports USER_CLK1]

################################################################################