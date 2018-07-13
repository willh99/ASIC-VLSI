###################################################################

# Created by write_sdc on Mon Apr 23 11:51:59 2018

###################################################################
set sdc_version 1.9

set_max_area 0
set_fanout_load 8 [get_ports {sum[3]}]
set_fanout_load 8 [get_ports {sum[2]}]
set_fanout_load 8 [get_ports {sum[1]}]
set_fanout_load 8 [get_ports {sum[0]}]
set_fanout_load 8 [get_ports cout]
set_load -pin_load 0.1 [get_ports {sum[3]}]
set_load -pin_load 0.1 [get_ports {sum[2]}]
set_load -pin_load 0.1 [get_ports {sum[1]}]
set_load -pin_load 0.1 [get_ports {sum[0]}]
set_load -pin_load 0.1 [get_ports cout]
set_max_fanout 1 [get_ports {a[3]}]
set_max_fanout 1 [get_ports {a[2]}]
set_max_fanout 1 [get_ports {a[1]}]
set_max_fanout 1 [get_ports {a[0]}]
set_max_fanout 1 [get_ports {b[3]}]
set_max_fanout 1 [get_ports {b[2]}]
set_max_fanout 1 [get_ports {b[1]}]
set_max_fanout 1 [get_ports {b[0]}]
set_max_fanout 1 [get_ports cin]
set_max_fanout 1 [get_ports clk]
set_max_fanout 1 [get_ports rst]
create_clock [get_ports clk]  -period 40  -waveform {0 20}
set_clock_latency 0.3  [get_clocks clk]
set_input_delay -clock clk  2  [get_ports clk]
set_input_delay -clock clk  2  [get_ports {a[3]}]
set_input_delay -clock clk  2  [get_ports {a[2]}]
set_input_delay -clock clk  2  [get_ports {a[1]}]
set_input_delay -clock clk  2  [get_ports {a[0]}]
set_input_delay -clock clk  2  [get_ports {b[3]}]
set_input_delay -clock clk  2  [get_ports {b[2]}]
set_input_delay -clock clk  2  [get_ports {b[1]}]
set_input_delay -clock clk  2  [get_ports {b[0]}]
set_input_delay -clock clk  2  [get_ports cin]
set_input_delay -clock clk  2  [get_ports rst]
set_output_delay -clock clk  1.65  [get_ports {sum[3]}]
set_output_delay -clock clk  1.65  [get_ports {sum[2]}]
set_output_delay -clock clk  1.65  [get_ports {sum[1]}]
set_output_delay -clock clk  1.65  [get_ports {sum[0]}]
set_output_delay -clock clk  1.65  [get_ports cout]
