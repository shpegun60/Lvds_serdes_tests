## Generated SDC file "Cyclone_10_generator.out.sdc"

## Copyright (C) 2022  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Standard Edition"

## DATE    "Mon Jan 22 18:33:54 2024"

##
## DEVICE  "10CL010YU256C8G"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {i_clk50MHz} -period 20.000 -waveform { 0.000 10.000 } [get_ports {i_clk50MHz}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]} -source [get_pins {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|inclk[0]}] -duty_cycle 50/1 -multiply_by 5 -divide_by 2 -phase -90.000 -master_clock {i_clk50MHz} [get_pins {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}] 
create_generated_clock -name {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]} -source [get_pins {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|inclk[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 2 -phase -18.000 -master_clock {i_clk50MHz} [get_pins {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}] -rise_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}] -fall_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}] -rise_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}] -fall_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}] -rise_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}] -fall_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}] -rise_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}] -fall_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}] -rise_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}] -fall_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}] -rise_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}] -fall_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}] -rise_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}] -fall_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[1]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}] -rise_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}] -fall_to [get_clocks {serdes_inst|lvds_tx_inst|ALTLVDS_TX_component|auto_generated|lvds_tx_pll|clk[0]}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

