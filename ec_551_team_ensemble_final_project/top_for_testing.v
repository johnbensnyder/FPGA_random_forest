`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:46:16 12/11/2016 
// Design Name: 
// Module Name:    top_for_testing 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_for_testing(result_wire, result, finished_wire, rx_data, rx_ready, clk, rst
    );
	 
	 output [63:0]result_wire;
	 output [7:0] result;
	 output finished_wire;
	 input [7:0]rx_data;
	 input rx_ready, clk, rst;
	 
	 
	 wire MEM_we, data_collection_finish, collect_finish_display;
	 wire [13:0]MEM_wr_sel;
	 wire [7:0]MEM_wr_data;
	 wire finished_wire;
	 

		Data_collect 																		// Collect all the data from PC by UART
	//#(.NUM_DATA(NUM_DATA))
	Data_collect(														
		.clk(clk), 
		.rst(rst),
		.data_input(rx_data),
		.data_ready(rx_ready),
		.calced(finished_wire),
		.MEM_write_enable(MEM_we),
		.MEM_write_addr(MEM_wr_sel),	
		.MEM_write_data(MEM_wr_data),		
		.finish(data_collection_finish),
		.collect_finish_display(collect_finish_display)
   );
	
	predictor ml_proto(result_wire, finished_wire, MEM_we, MEM_wr_sel, MEM_wr_data, collect_finish_display, clk, rst);

	
endmodule
