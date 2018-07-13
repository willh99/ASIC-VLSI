###################################################################

# Created by write_sdc on Sun Feb  7 15:29:33 2010

###################################################################
set sdc_version 1.8

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_area 0
set_driving_cell -lib_cell INVX1 -library osu05_stdcells [get_ports A]
set_driving_cell -lib_cell INVX1 -library osu05_stdcells [get_ports B]
set_driving_cell -lib_cell INVX1 -library osu05_stdcells [get_ports Cin]
set_fanout_load 8 [get_ports Sum]
set_fanout_load 8 [get_ports Carry]
set_load -pin_load 0.1 [get_ports Sum]
set_load -pin_load 0.1 [get_ports Carry]
set_max_fanout 1 [get_ports A]
set_max_fanout 1 [get_ports B]
set_max_fanout 1 [get_ports Cin]
create_clock -name clk  -period 20  -waveform {0 10}
set_clock_latency 0.3  [get_clocks clk]
set_input_delay -clock clk  2  [get_ports A]
set_input_delay -clock clk  2  [get_ports B]
set_input_delay -clock clk  2  [get_ports Cin]
set_output_delay -clock clk  1.65  [get_ports Sum]
set_output_delay -clock clk  1.65  [get_ports Carry]
