#!/bin/bash

yosys -p "read_liberty -lib ../../../synthosphere/lib/sky130_fd_sc_hd__tt_025C_1v80.lib ;

	read_verilog ALU.v;

	synth -top ALU -flatten;

	dfflibmap -liberty ../../../synthosphere/lib/sky130_fd_sc_hd__tt_025C_1v80.lib ;

	abc -liberty ../../../synthosphere/lib/sky130_fd_sc_hd__tt_025C_1v80.lib ;

	show ALU;

	write_verilog -noattr netlist_ALU.v"	
iverilog netlist_ALU.v ../../../synthosphere/verilog_model/primitives.v ../../../synthosphere/verilog_model/sky130_fd_sc_hd_edited.v 