`timescale 1ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:02:47 12/11/2016
// Design Name:   top_for_testing
// Module Name:   X:/My Documents/ec551_backtrack/working_needs_new_skhdl/dec_11/test_wo_com.v
// Project Name:  dec_11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_for_testing
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_wo_com;

	// Inputs
	reg [7:0] rx_data;
	reg rx_ready;
	reg clk;
	reg rst;

	// Outputs
	wire [63:0] result_wire;
	wire [7:0] result;
	wire finished_wire;

	// Instantiate the Unit Under Test (UUT)
	top_for_testing uut (
		.result_wire(result_wire), 
		.result(result), 
		.finished_wire(finished_wire), 
		.rx_data(rx_data), 
		.rx_ready(rx_ready), 
		.clk(clk), 
		.rst(rst)
	);
always #5 clk = ~clk;
	initial begin
		// Initialize Inputs
		rx_data = 0;
		rx_ready = 0;
		clk = 0;
		rst = 1;
	
		// Wait 100 ns for global reset to finish
		#10;
		rst = 0;
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 10;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	#10
	rx_ready = 0;
	rx_data = 0;
	#10
	rx_ready = 1;
	rx_data = 0;
	
	#10;
	
        
		// Add stimulus here

	end
      
endmodule

