##################################################################
#### TetraMax Script for ECE 128
#### Performs ATPG Pattern Generation for Synopsys Generic files
#### author: tjf
#### update: wgibb, spring 2010
#### note: this script will only run in TMAX TCL mode
#### start tmax like this:   tmax -tcl
##################################################################


############################################################
#### local variables, designer must change these values ####
############################################################

set top_module ripplecarry4_clk
set synthesized_files [list ./src/ripplecarry4_clk_scan.v]
set cell_lib ./src/osu05_stdcells.v
set scan_lib ./src/osu_scan.v 
set stil_file [list ./src/ripplecarry4_clk_scan.spf]


#################################################
#### read in standard cells and user's design ###
#################################################

# remove any other designs from design compiler's memory
read_netlist -delete

# read in standard cell library
read_netlist $cell_lib -library

# read in scan cell library
read_netlist $scan_lib -library

# read in user's synthesized verilog code
read_netlist $synthesized_files


#################################################
#### BUILD and DRC test model
#################################################

run_build_model $top_module
# ignoring warnings like N20 or B10

# Set STIL file from DFT Compiler
set_drc $stil_file

# run check to see if synthesized code violates any testing rules
run_drc

#################################################
#### Generate ATPG (patterns)- full sequential
#################################################

# capture all faults, 9 capture cycles
set_atpg -capture_cycles 9 -full_seq_atpg
remove_faults -all
add_faults -all

# run atpg in full sequential mode
run_atpg full_sequential_only

# write out patterns (overwrite old files)
write_patterns ./src/${top_module}_tb_patterns.v -replace -internal -format verilog_single_file -parallel 0

#################################################
#### Output reports
#################################################

report_patterns -all >> ./reports/${top_module}.tmax.patterns
report_violations -all >> ./reports/${top_module}.tmax.violations
report_faults -summary -collapsed >> ./reports/${top_module}.tmax.coverage

#################################################
#### Analyze Faults
#################################################

# up to user to run these commands, they can inspect the faults and various reasons for them:
#analyze_faults -class an
#analyze_faults -class an -verbose -max 3
#analyze_faults in_a_reg_reg/p_dregscan0/q -stuck 1

