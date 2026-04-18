################ CLOCK ################
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.0 [get_ports clk]

################ SWITCHES ################
set_property PACKAGE_PIN V17 [get_ports {sw[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]

set_property PACKAGE_PIN V16 [get_ports {sw[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]

set_property PACKAGE_PIN W16 [get_ports {sw[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]

set_property PACKAGE_PIN W17 [get_ports {sw[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]

################ CHECK BUTTON ################
set_property PACKAGE_PIN U18 [get_ports check]
set_property IOSTANDARD LVCMOS33 [get_ports check]

################ RESET BUTTON ################
set_property PACKAGE_PIN T18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

################ LED OUTPUTS ################
set_property PACKAGE_PIN U16 [get_ports unlock]
set_property IOSTANDARD LVCMOS33 [get_ports unlock]

set_property PACKAGE_PIN E19 [get_ports locked]
set_property IOSTANDARD LVCMOS33 [get_ports locked]

set_property PACKAGE_PIN U19 [get_ports error]
set_property IOSTANDARD LVCMOS33 [get_ports error]