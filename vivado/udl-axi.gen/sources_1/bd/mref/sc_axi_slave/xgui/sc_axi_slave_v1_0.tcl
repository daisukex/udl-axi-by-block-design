# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "P_AD_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_DT_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_ID_W" -parent ${Page_0}


}

proc update_PARAM_VALUE.P_AD_W { PARAM_VALUE.P_AD_W } {
	# Procedure called to update P_AD_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_AD_W { PARAM_VALUE.P_AD_W } {
	# Procedure called to validate P_AD_W
	return true
}

proc update_PARAM_VALUE.P_DT_W { PARAM_VALUE.P_DT_W } {
	# Procedure called to update P_DT_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_DT_W { PARAM_VALUE.P_DT_W } {
	# Procedure called to validate P_DT_W
	return true
}

proc update_PARAM_VALUE.P_ID_W { PARAM_VALUE.P_ID_W } {
	# Procedure called to update P_ID_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_ID_W { PARAM_VALUE.P_ID_W } {
	# Procedure called to validate P_ID_W
	return true
}


proc update_MODELPARAM_VALUE.P_AD_W { MODELPARAM_VALUE.P_AD_W PARAM_VALUE.P_AD_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_AD_W}] ${MODELPARAM_VALUE.P_AD_W}
}

proc update_MODELPARAM_VALUE.P_DT_W { MODELPARAM_VALUE.P_DT_W PARAM_VALUE.P_DT_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_DT_W}] ${MODELPARAM_VALUE.P_DT_W}
}

proc update_MODELPARAM_VALUE.P_ID_W { MODELPARAM_VALUE.P_ID_W PARAM_VALUE.P_ID_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_ID_W}] ${MODELPARAM_VALUE.P_ID_W}
}

