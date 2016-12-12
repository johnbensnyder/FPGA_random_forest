`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:02:05 11/05/2016
// Design Name:   TENBASET_TxD
// Module Name:   X:/EC551/project/Project/dataTansfer/ethernet_tb.v
// Project Name:  dataTansfer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TENBASET_TxD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ethernet_tb;

	// Inputs
	reg reset;
	reg clk;

	// Outputs
	wire [3:0] out;
	wire ctrl;
	wire phy_reset;
	wire TXD4;

	// Instantiate the Unit Under Test (UUT)
	TENBASET_TxD uut (
		.reset(reset), 
		.clk(clk), 
		.out(out), 
		.ctrl(ctrl),
		.phy_reset(phy_reset),
		.TXD4(TXD4) 
	);
	always
		  #5 clk=~clk;
	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;
				// Wait 100 ns for global reset to finish
		#100;
		reset =0;
        
		// Add stimulus here

	end
      
endmodule

