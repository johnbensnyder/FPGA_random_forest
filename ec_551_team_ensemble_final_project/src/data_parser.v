`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:40:45 12/10/2016 
// Design Name: 
// Module Name:    data_parser 
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
module data_parser(
		input clk,
		input rst,
		input tx_ready,
		input [63:0]ml_result,
		input ml_finished,
		output [7:0] transmitter_data,
		output reg transmitter_start
    );
	 
	 reg prev_tx_ready;
	 reg prev_ml_finished;
	 
	 reg [3:0] counter;
	 reg [7:0] Data[0:7];
	 
	 
	 assign transmitter_data = Data[counter];
	 
	 //assign transmitter_data = ml_result[(counter*8+7):(counter*8)];
	 
	 //assign transmitter_data <= Data[counter];
	 
	 always@(posedge clk)
		begin
		prev_tx_ready <= tx_ready;
		prev_ml_finished <= ml_finished;
		
		Data[0] = ml_result[63:56];
		Data[1] = ml_result[55:48];
		Data[2] = ml_result[47:40];
		Data[3] = ml_result[39:32];
		Data[4] = ml_result[31:24];
		Data[5] = ml_result[23:16];
		Data[6] = ml_result[15:8];
		Data[7] = ml_result[7:0];
		
		if(rst)
			transmitter_start <= 1'b0;
		if(ml_finished != prev_ml_finished)
			begin
				counter <= 0;
				transmitter_start <= 1'b1;
			end
		/*
		if(counter == 0 && tx_ready)
			begin
				transmitter_start <= 1;
				counter <= counter + 1;
			end
		*/
		if(counter >= 0 && counter < 7 && tx_ready && !prev_tx_ready)
			begin
				transmitter_start <= 1;
				counter <= counter + 1;
			end
		if(!tx_ready) 
			begin
				counter <= counter;
				transmitter_start <= 0;
			end	
		end

endmodule
