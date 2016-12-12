`timescale 1ns / 1ns


module top(
	input clk,
	input rst,
	input RsRx,																			// Connect to RX pin
	//output [7:0] Rx_data,															// Received data
	output RsTx,																		// Connect to TX pin
	output wire [7:0] result
   );

	

	parameter CLK_RATE = 9600000;													// Input CLK freq
	parameter BAUD_RATE = 9600;													// UART Baud rate
	parameter SAMPLE_RATE = 10;													// Sampling time per bit

	wire collect_finish_display;
	wire clk_9_6M;
	wire uart_clk;
	wire sample_clk;
	wire sampler_data_out;
	wire tx_ready;																		// tx_ready signifies the availability of TX buffer
	wire rx_ready;																		// when signal == 1, signifies that one byte of data is received
	wire [7:0] rx_data;																// Received data
	wire [7:0] tx_data;
	wire tx_start;																		// start to send data when this bit is set to 1

	wire data_collection_finish;
	wire data_send_finish;
	wire data_send_run;
	wire MEM_we;
	wire [13:0] MEM_wr_sel;
	wire [13:0] MEM_rd_sel;
	wire [7:0] MEM_wr_data;
	wire [7:0] MEM_rd_data;
	wire [7:0] write_data, read_data, data_out;
	wire [13:0] write_select, read_select;
	wire write_enable, scan_start;
	wire [7:0] ss1;
	wire [13:0] ss2,ss3;
	wire ss4;
	
	wire [63:0] result_wire;
	wire finished_wire;
	 
	assign result = result_wire[7:0]; 
	assign Rx_data = rx_data;
/*
	Data_Process Data_process(														// Collect data, process it, and send it back
		.clk(clk_9_6M), 
		.rst(rst),
		.data_collection_finish(finished_wire),
		.data_send_finish(data_send_finish),
		.data_send_run(data_send_run)
   );
*/	
	Data_collect 																		// Collect all the data from PC by UART
	//#(.NUM_DATA(NUM_DATA))
	Data_collect(														
		.clk(clk_9_6M), 
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
/*
	Data_send																			// Send all data back to PC by UART
	Data_send(
		.clk(clk_9_6M), 
		.rst(rst),
		.send_start(data_send_run),
		.tx_ready(tx_ready),
		.MEM_data(read_data),																	// Changed to read data from second memory module
		.MEM_read_sel(read_select),
		.transmitter_data(tx_data),
		.transmitter_start(tx_start),
		.finish(data_send_finish)
   );
*/	

	receiver_sampler sampler(														// Error checking logic
		.rst(rst),
		.sample_clk(sample_clk),
		.rx_clk(uart_clk),
		.RsRx(RsRx),
		.data_bit(sampler_data_out)
		);

   receiver receiver(																// UART Receiver
		.data_in(sampler_data_out),
		//.data_in(RsRx),
		.rx_clk(uart_clk),
		.reset(rst),
		.signal(rx_ready),
		.data_out(rx_data)
		);	

	transmitter transmitter(														// UART Transmitter
		.data_in(tx_data),
		.tx_clk(uart_clk),
		.reset(rst),
		.start(tx_start),
		.data_out(RsTx),
		.tx_ready(tx_ready)
		);						
		
	clk_divide																			// Clock generator for TX and RX
	#( .CLK_RATE(CLK_RATE),
		.BAUD_RATE(BAUD_RATE),
		.SAMPLE_RATE(SAMPLE_RATE))
	clk_div(																
		.clk(clk_9_6M),
		.rst(rst),
		.clk_uart(uart_clk),
		.clk_sampling(sample_clk)
		);															
	
	PLL_9_6M PLL(																		// PLL that generate 9.6 MHz clk
		.clk_in(clk),
		.clk_out_9_6M(clk_9_6M),
		.rst(rst)
		);
/*		
	MEM																					// input memory module
	#(.NUM_DATA(NUM_DATA))
	MEM(
		.clk(clk_9_6M),
		.wr_enable(write_enable),
		.write_select(write_select),
		.read_select(read_select),
		.write_data(write_data),
		.read_data(read_data)
   );
	
	MEM																					// output memory module
	#(.NUM_DATA(NUM_DATA))
	MEM2(
		.clk(clk_9_6M),
		.wr_enable(write_enable),
		.write_select(write_select),
		.read_select(read_select),
		.write_data(write_data),
		.read_data(read_data)
   );
	*/
	
	//Systy_McStolicface stoly (MEM_rd_sel, write_data, finished, collect_finish_display, MEM_rd_data, clk_9_6M, rst, write_enable, write_select);
	//predictor(result, finished, write_enable, write_address, write_data, start, clk, rst);
	predictor ml_proto(result_wire, finished_wire, MEM_we, MEM_wr_sel, MEM_wr_data, collect_finish_display, clk_9_6M, rst);
	//output_parser(parsed, parsed_output, write_enable, write_address, finished, result, clk, rst);
	//output_parser to_split_data(finished, write_data, write_enable, write_select, finished_wire, result_wire, clk_9_6M, rst);
	//module chunk_transmitter(transmitter_data,transmitter_start,send_start,	tx_ready, predictor_output, finish, clk, rst
   //chunk_transmitter chunky(tx_data,tx_start,collect_finish_display,tx_ready,result_wire,clk_9_6M,rst,chunk_flag);
	data_parser(clk_9_6M,rst,tx_ready,result_wire,finished_wire,tx_data,tx_start);

endmodule
