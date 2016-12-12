`timescale 1ns / 1ns

// Collect 100*100 data from UART
module Data_collect(
	input clk,
	input rst,
	input [7:0] data_input,
	input data_ready,
	input calced,
	output reg MEM_write_enable,
	output reg [13:0] MEM_write_addr,
	output reg [13:0] MEM_write_data,
	output finish,
	output reg collect_finish_display
   );
	
	parameter NUM_DATA = 40;
	reg [13:0] delayed_write_addr;
	reg prev_data_ready;
	
	reg past_finish;
	reg past_calc;
	
	assign finish = (MEM_write_addr == NUM_DATA-1)? 1'b1 : 1'b0;			// Collecion is finished after received 10000 data
	
always@( finish or  calced)
	begin
	if(rst)
		collect_finish_display <= 1'b0;
	else
		if(finish == 1 && past_finish == 0)
			collect_finish_display <= 1;
		else if (calced == 1 && past_calc == 0)
			collect_finish_display <= 0;
	end
	
always@(posedge clk)
	begin
	past_finish <= finish;
	past_calc <= calced;
	prev_data_ready <= data_ready;			// for capturing the rising edge of data_ready
	MEM_write_addr <= delayed_write_addr;
	
	if(rst || MEM_write_addr == NUM_DATA)		// Reset when rst == 1 or saved 10000 data 
		begin
		MEM_write_enable <= 1'b0;
		delayed_write_addr <= 14'd0;
		MEM_write_data <= 8'd0;
		end
	/*else if(MEM_write_addr == NUM_DATA - 1)
		begin
		MEM_write_enable <= 1'b1;
		delayed_write_addr <= delayed_write_addr + 1'b1;
		MEM_write_data <= 8'd0;
		end
		*/
	else if(data_ready == 1'b1 && prev_data_ready == 1'b0)
		begin
		MEM_write_enable <= 1'b1;
		delayed_write_addr <= delayed_write_addr + 1'b1;
		MEM_write_data <= data_input;
		end
	else
		begin
		MEM_write_enable <= 1'b0;
		delayed_write_addr <= delayed_write_addr;
		MEM_write_data <= data_input;
		end
	end
endmodule
