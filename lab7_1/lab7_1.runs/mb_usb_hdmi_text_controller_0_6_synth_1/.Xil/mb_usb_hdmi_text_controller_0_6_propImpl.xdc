set_property SRC_FILE_INFO {cfile:c:/Users/jkali/ece385/lab7/lab7_1/lab7_1.gen/sources_1/bd/mb_usb/ip/mb_usb_hdmi_text_controller_0_6/src/clk_wiz_0_3/clk_wiz_0.xdc rfile:../../../lab7_1.gen/sources_1/bd/mb_usb/ip/mb_usb_hdmi_text_controller_0_6/src/clk_wiz_0_3/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:inst/clk_wiz/inst} [current_design]
current_instance inst/clk_wiz/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
