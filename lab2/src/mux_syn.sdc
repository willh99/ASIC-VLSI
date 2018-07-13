###################################################################

# Created by write_sdc on Mon Feb 12 11:43:53 2018

###################################################################
set sdc_version 1.9

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_area 0
set_driving_cell -lib_cell INVX1 -library osu05_stdcells [get_ports a]
set_driving_cell -lib_cell INVX1 -library osu05_stdcells [get_ports b]
set_driving_cell -lib_cell INVX1 -library osu05_stdcells [get_ports s]
set_fanout_load 8 [get_ports c]
set_load -pin_load 0.1 [get_ports c]
set_max_fanout 1 [get_ports a]
set_max_fanout 1 [get_ports b]
set_max_fanout 1 [get_ports s]
create_clock -name clock  -period 10  -waveform {0 5}
set_clock_latency 0.3  [get_clocks clock]
set_input_delay -clock clock  2  [get_ports a]
set_input_delay -clock clock  2  [get_ports b]
set_input_delay -clock clock  2  [get_ports s]
set_output_delay -clock clock  1.65  [get_ports c]
