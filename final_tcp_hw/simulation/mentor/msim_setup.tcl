
# (C) 2001-2020 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ----------------------------------------
# Auto-generated simulation script msim_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     final_tcp_hw
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "mentor.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog <compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run -a
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If final_tcp_hw is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 17.1 590 win32 2020.04.23.13:30:31

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "final_tcp_hw"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/intelfpga_lite/17.1/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VHDL_COMPILE_OPTIONS] { 
  set USER_DEFINED_VHDL_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_VERILOG_COMPILE_OPTIONS] { 
  set USER_DEFINED_VERILOG_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_main_memory.hex ./
  file copy -force $QSYS_SIMDIR/submodules/final_tcp_hw_descriptor_memory.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                        ./libraries/altera_ver/            
  vmap       altera_ver             ./libraries/altera_ver/            
  ensure_lib                        ./libraries/lpm_ver/               
  vmap       lpm_ver                ./libraries/lpm_ver/               
  ensure_lib                        ./libraries/sgate_ver/             
  vmap       sgate_ver              ./libraries/sgate_ver/             
  ensure_lib                        ./libraries/altera_mf_ver/         
  vmap       altera_mf_ver          ./libraries/altera_mf_ver/         
  ensure_lib                        ./libraries/altera_lnsim_ver/      
  vmap       altera_lnsim_ver       ./libraries/altera_lnsim_ver/      
  ensure_lib                        ./libraries/cycloneiv_hssi_ver/    
  vmap       cycloneiv_hssi_ver     ./libraries/cycloneiv_hssi_ver/    
  ensure_lib                        ./libraries/cycloneiv_pcie_hip_ver/
  vmap       cycloneiv_pcie_hip_ver ./libraries/cycloneiv_pcie_hip_ver/
  ensure_lib                        ./libraries/cycloneiv_ver/         
  vmap       cycloneiv_ver          ./libraries/cycloneiv_ver/         
}
ensure_lib                                            ./libraries/error_adapter_0/                           
vmap       error_adapter_0                            ./libraries/error_adapter_0/                           
ensure_lib                                            ./libraries/timing_adapter_0/                          
vmap       timing_adapter_0                           ./libraries/timing_adapter_0/                          
ensure_lib                                            ./libraries/avalon_st_adapter/                         
vmap       avalon_st_adapter                          ./libraries/avalon_st_adapter/                         
ensure_lib                                            ./libraries/rsp_mux_005/                               
vmap       rsp_mux_005                                ./libraries/rsp_mux_005/                               
ensure_lib                                            ./libraries/rsp_mux_001/                               
vmap       rsp_mux_001                                ./libraries/rsp_mux_001/                               
ensure_lib                                            ./libraries/rsp_mux/                                   
vmap       rsp_mux                                    ./libraries/rsp_mux/                                   
ensure_lib                                            ./libraries/rsp_demux_006/                             
vmap       rsp_demux_006                              ./libraries/rsp_demux_006/                             
ensure_lib                                            ./libraries/rsp_demux_005/                             
vmap       rsp_demux_005                              ./libraries/rsp_demux_005/                             
ensure_lib                                            ./libraries/rsp_demux_004/                             
vmap       rsp_demux_004                              ./libraries/rsp_demux_004/                             
ensure_lib                                            ./libraries/cmd_mux_006/                               
vmap       cmd_mux_006                                ./libraries/cmd_mux_006/                               
ensure_lib                                            ./libraries/cmd_mux_005/                               
vmap       cmd_mux_005                                ./libraries/cmd_mux_005/                               
ensure_lib                                            ./libraries/cmd_mux_004/                               
vmap       cmd_mux_004                                ./libraries/cmd_mux_004/                               
ensure_lib                                            ./libraries/cmd_mux/                                   
vmap       cmd_mux                                    ./libraries/cmd_mux/                                   
ensure_lib                                            ./libraries/cmd_demux_005/                             
vmap       cmd_demux_005                              ./libraries/cmd_demux_005/                             
ensure_lib                                            ./libraries/cmd_demux_001/                             
vmap       cmd_demux_001                              ./libraries/cmd_demux_001/                             
ensure_lib                                            ./libraries/cmd_demux/                                 
vmap       cmd_demux                                  ./libraries/cmd_demux/                                 
ensure_lib                                            ./libraries/nios2_data_master_limiter/                 
vmap       nios2_data_master_limiter                  ./libraries/nios2_data_master_limiter/                 
ensure_lib                                            ./libraries/router_014/                                
vmap       router_014                                 ./libraries/router_014/                                
ensure_lib                                            ./libraries/router_013/                                
vmap       router_013                                 ./libraries/router_013/                                
ensure_lib                                            ./libraries/router_012/                                
vmap       router_012                                 ./libraries/router_012/                                
ensure_lib                                            ./libraries/router_008/                                
vmap       router_008                                 ./libraries/router_008/                                
ensure_lib                                            ./libraries/router_006/                                
vmap       router_006                                 ./libraries/router_006/                                
ensure_lib                                            ./libraries/router_005/                                
vmap       router_005                                 ./libraries/router_005/                                
ensure_lib                                            ./libraries/router_001/                                
vmap       router_001                                 ./libraries/router_001/                                
ensure_lib                                            ./libraries/router/                                    
vmap       router                                     ./libraries/router/                                    
ensure_lib                                            ./libraries/jtag_uart_avalon_jtag_slave_agent_rsp_fifo/
vmap       jtag_uart_avalon_jtag_slave_agent_rsp_fifo ./libraries/jtag_uart_avalon_jtag_slave_agent_rsp_fifo/
ensure_lib                                            ./libraries/jtag_uart_avalon_jtag_slave_agent/         
vmap       jtag_uart_avalon_jtag_slave_agent          ./libraries/jtag_uart_avalon_jtag_slave_agent/         
ensure_lib                                            ./libraries/nios2_data_master_agent/                   
vmap       nios2_data_master_agent                    ./libraries/nios2_data_master_agent/                   
ensure_lib                                            ./libraries/jtag_uart_avalon_jtag_slave_translator/    
vmap       jtag_uart_avalon_jtag_slave_translator     ./libraries/jtag_uart_avalon_jtag_slave_translator/    
ensure_lib                                            ./libraries/nios2_data_master_translator/              
vmap       nios2_data_master_translator               ./libraries/nios2_data_master_translator/              
ensure_lib                                            ./libraries/i_tse_mac/                                 
vmap       i_tse_mac                                  ./libraries/i_tse_mac/                                 
ensure_lib                                            ./libraries/cpu/                                       
vmap       cpu                                        ./libraries/cpu/                                       
ensure_lib                                            ./libraries/rst_controller/                            
vmap       rst_controller                             ./libraries/rst_controller/                            
ensure_lib                                            ./libraries/irq_mapper/                                
vmap       irq_mapper                                 ./libraries/irq_mapper/                                
ensure_lib                                            ./libraries/mm_interconnect_0/                         
vmap       mm_interconnect_0                          ./libraries/mm_interconnect_0/                         
ensure_lib                                            ./libraries/tse/                                       
vmap       tse                                        ./libraries/tse/                                       
ensure_lib                                            ./libraries/timer/                                     
vmap       timer                                      ./libraries/timer/                                     
ensure_lib                                            ./libraries/switch/                                    
vmap       switch                                     ./libraries/switch/                                    
ensure_lib                                            ./libraries/sgdma_tx/                                  
vmap       sgdma_tx                                   ./libraries/sgdma_tx/                                  
ensure_lib                                            ./libraries/sgdma_rx/                                  
vmap       sgdma_rx                                   ./libraries/sgdma_rx/                                  
ensure_lib                                            ./libraries/nios2/                                     
vmap       nios2                                      ./libraries/nios2/                                     
ensure_lib                                            ./libraries/main_memory/                               
vmap       main_memory                                ./libraries/main_memory/                               
ensure_lib                                            ./libraries/led/                                       
vmap       led                                        ./libraries/led/                                       
ensure_lib                                            ./libraries/jtag_uart/                                 
vmap       jtag_uart                                  ./libraries/jtag_uart/                                 
ensure_lib                                            ./libraries/descriptor_memory/                         
vmap       descriptor_memory                          ./libraries/descriptor_memory/                         

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"        -work altera_ver            
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                 -work lpm_ver               
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                    -work sgate_ver             
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                -work altera_mf_ver         
    eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"            -work altera_lnsim_ver      
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_hssi_atoms.v"     -work cycloneiv_hssi_ver    
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_pcie_hip_atoms.v" -work cycloneiv_pcie_hip_ver
    eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneiv_atoms.v"          -work cycloneiv_ver         
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work error_adapter_0                           
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_avalon_st_adapter_timing_adapter_0.sv"                  -work timing_adapter_0                          
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_avalon_st_adapter_timing_adapter_0_fifo.sv"             -work timing_adapter_0                          
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_avalon_st_adapter.v"                  -work avalon_st_adapter                         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_rsp_mux_005.sv"                       -work rsp_mux_005                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work rsp_mux_005                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_rsp_mux_001.sv"                       -work rsp_mux_001                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work rsp_mux_001                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_rsp_mux.sv"                           -work rsp_mux                                   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work rsp_mux                                   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_rsp_demux_006.sv"                     -work rsp_demux_006                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_rsp_demux_005.sv"                     -work rsp_demux_005                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_rsp_demux_004.sv"                     -work rsp_demux_004                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_cmd_mux_006.sv"                       -work cmd_mux_006                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work cmd_mux_006                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_cmd_mux_005.sv"                       -work cmd_mux_005                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work cmd_mux_005                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_cmd_mux_004.sv"                       -work cmd_mux_004                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work cmd_mux_004                               
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_cmd_mux.sv"                           -work cmd_mux                                   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                         -work cmd_mux                                   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_cmd_demux_005.sv"                     -work cmd_demux_005                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_cmd_demux_001.sv"                     -work cmd_demux_001                             
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_cmd_demux.sv"                         -work cmd_demux                                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                    -work nios2_data_master_limiter                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                     -work nios2_data_master_limiter                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                             -work nios2_data_master_limiter                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                    -work nios2_data_master_limiter                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_router_014.sv"                        -work router_014                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_router_013.sv"                        -work router_013                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_router_012.sv"                        -work router_012                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_router_008.sv"                        -work router_008                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_router_006.sv"                        -work router_006                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_router_005.sv"                        -work router_005                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_router_001.sv"                        -work router_001                                
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0_router.sv"                            -work router                                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                             -work jtag_uart_avalon_jtag_slave_agent_rsp_fifo
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                        -work jtag_uart_avalon_jtag_slave_agent         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                 -work jtag_uart_avalon_jtag_slave_agent         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                       -work nios2_data_master_agent                   
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                   -work jtag_uart_avalon_jtag_slave_translator    
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                  -work nios2_data_master_translator              
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_mac.v"                                         -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_clk_cntl.v"                                        -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc328checker.v"                                   -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc328generator.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc32ctl8.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_crc32galois8.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_gmii_io.v"                                         -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_lb_read_cntl.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_lb_wrt_cntl.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_hashing.v"                                         -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_host_control.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_host_control_small.v"                              -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_control.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_register_map.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_register_map_small.v"                              -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_counter_cntl.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_shared_mac_control.v"                              -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_shared_register_map.v"                             -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_counter_cntl.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_lfsr_10.v"                                         -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_loopback_ff.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_altshifttaps.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_fifoless_mac_rx.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_rx.v"                                          -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_fifoless_mac_tx.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mac_tx.v"                                          -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_magic_detection.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio.v"                                            -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio_clk_gen.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mdio_cntl.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_mdio.v"                                        -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mii_rx_if.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_mii_tx_if.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_pipeline_base.v"                                   -work i_tse_mac                                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mentor/altera_tse_pipeline_stage.sv"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_dpram_16x32.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_dpram_8x32.v"                                      -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_dpram_ecc_16x32.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_fifoless_retransmit_cntl.v"                        -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_retransmit_cntl.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_in1.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_in4.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_nf_rgmii_module.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_module.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_out1.v"                                      -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rgmii_out4.v"                                      -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff.v"                                           -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_min_ff.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_cntrl.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_cntrl_32.v"                                  -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_cntrl_32_shift16.v"                          -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_ff_length.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_rx_stat_extract.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter32.v"                                -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter8.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter_fifo32.v"                           -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_timing_adapter_fifo8.v"                            -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_1geth.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_fifoless_1geth.v"                              -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_w_fifo.v"                                      -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_w_fifo_10_100_1000.v"                          -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_wo_fifo.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_wo_fifo_10_100_1000.v"                         -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_top_gen_host.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff.v"                                           -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_min_ff.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_cntrl.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_cntrl_32.v"                                  -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_cntrl_32_shift16.v"                          -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_length.v"                                    -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_ff_read_cntl.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_tx_stat_extract.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_std_synchronizer.v"                            -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_std_synchronizer_bundle.v"                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_eth_tse_ptp_std_synchronizer.v"                        -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_false_path_marker.v"                               -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_reset_synchronizer.v"                              -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_clock_crosser.v"                                   -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_13.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_24.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_34.v"                                       -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_1246.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_14_44.v"                                -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_a_fifo_opt_36_10.v"                                -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_gray_cnt.v"                                        -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_sdpm_altsyncram.v"                                 -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_altsyncram_dpm_fifo.v"                             -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_bin_cnt.v"                                         -work i_tse_mac                                 
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mentor/altera_tse_ph_calculator.sv"                                  -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_sdpm_gen.v"                                        -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x10.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x10.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x10_wrapper.v"                             -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x14.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x14.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x14_wrapper.v"                             -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x2.v"                                      -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x2.v"                                      -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x2_wrapper.v"                              -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x23.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x23.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x23_wrapper.v"                             -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x36.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x36.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x36_wrapper.v"                             -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x40.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x40.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x40_wrapper.v"                             -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_dec_x30.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x30.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_enc_x30_wrapper.v"                             -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/mentor/altera_tse_ecc_status_crosser.v"                              -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                     -work i_tse_mac                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu.vo"                                           -work cpu                                       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_debug_slave_sysclk.v"                         -work cpu                                       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_debug_slave_tck.v"                            -work cpu                                       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_debug_slave_wrapper.v"                        -work cpu                                       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_mult_cell.v"                                  -work cpu                                       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_nios2_cpu_test_bench.v"                                 -work cpu                                       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                           -work rst_controller                            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                         -work rst_controller                            
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_avalon_st_adapter.v"                                    -work avalon_st_adapter                         
  eval  vlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/final_tcp_hw_irq_mapper.sv"                                          -work irq_mapper                                
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_mm_interconnect_0.v"                                    -work mm_interconnect_0                         
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_tse.v"                                                  -work tse                                       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_timer.v"                                                -work timer                                     
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_switch.v"                                               -work switch                                    
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_sgdma_tx.v"                                             -work sgdma_tx                                  
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_sgdma_rx.v"                                             -work sgdma_rx                                  
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_nios2.v"                                                -work nios2                                     
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_main_memory.v"                                          -work main_memory                               
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_led.v"                                                  -work led                                       
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_jtag_uart.v"                                            -work jtag_uart                                 
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/final_tcp_hw_descriptor_memory.v"                                    -work descriptor_memory                         
  eval  vlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/final_tcp_hw.v"                                                                                                                 
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L error_adapter_0 -L timing_adapter_0 -L avalon_st_adapter -L rsp_mux_005 -L rsp_mux_001 -L rsp_mux -L rsp_demux_006 -L rsp_demux_005 -L rsp_demux_004 -L cmd_mux_006 -L cmd_mux_005 -L cmd_mux_004 -L cmd_mux -L cmd_demux_005 -L cmd_demux_001 -L cmd_demux -L nios2_data_master_limiter -L router_014 -L router_013 -L router_012 -L router_008 -L router_006 -L router_005 -L router_001 -L router -L jtag_uart_avalon_jtag_slave_agent_rsp_fifo -L jtag_uart_avalon_jtag_slave_agent -L nios2_data_master_agent -L jtag_uart_avalon_jtag_slave_translator -L nios2_data_master_translator -L i_tse_mac -L cpu -L rst_controller -L irq_mapper -L mm_interconnect_0 -L tse -L timer -L switch -L sgdma_tx -L sgdma_rx -L nios2 -L main_memory -L led -L jtag_uart -L descriptor_memory -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS -L work -L work_lib -L error_adapter_0 -L timing_adapter_0 -L avalon_st_adapter -L rsp_mux_005 -L rsp_mux_001 -L rsp_mux -L rsp_demux_006 -L rsp_demux_005 -L rsp_demux_004 -L cmd_mux_006 -L cmd_mux_005 -L cmd_mux_004 -L cmd_mux -L cmd_demux_005 -L cmd_demux_001 -L cmd_demux -L nios2_data_master_limiter -L router_014 -L router_013 -L router_012 -L router_008 -L router_006 -L router_005 -L router_001 -L router -L jtag_uart_avalon_jtag_slave_agent_rsp_fifo -L jtag_uart_avalon_jtag_slave_agent -L nios2_data_master_agent -L jtag_uart_avalon_jtag_slave_translator -L nios2_data_master_translator -L i_tse_mac -L cpu -L rst_controller -L irq_mapper -L mm_interconnect_0 -L tse -L timer -L switch -L sgdma_tx -L sgdma_rx -L nios2 -L main_memory -L led -L jtag_uart -L descriptor_memory -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                                         -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                                           -- Compile device library files"
  echo
  echo "com                                               -- Compile the design files in correct order"
  echo
  echo "elab                                              -- Elaborate top level design"
  echo
  echo "elab_debug                                        -- Elaborate the top level design with novopt option"
  echo
  echo "ld                                                -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                                          -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                                    -- Top level module name."
  echo "                                                     For most designs, this should be overridden"
  echo "                                                     to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME                              -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                                       -- Platform Designer base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR                               -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS                      -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS                         -- User-defined elaboration options, added to elab/elab_debug aliases."
  echo
  echo "USER_DEFINED_VHDL_COMPILE_OPTIONS                 -- User-defined vhdl compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_VERILOG_COMPILE_OPTIONS              -- User-defined verilog compile options, added to com/dev_com aliases."
}
file_copy
h
