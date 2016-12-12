import sys

def generate_datacollect(filename,value):
    sys.stdout=open(filename,'w')
    print("moduel Data_collect( \
    \n input clk, \
    \n inut rst, \
    \n input [7:0] data_input, \
    \n input data_ready, \
    \n input calced, \
    \n output reg MEM_write_enable, \
    \n output reg [13:0] MEM_write_addr, \
    \n output reg [7:0] MEM_write_data, \
    \n output finish, \
    \n output reg collect_finish_display \
    \n ); \n")
    
    print(" parameter NUM_DATA={}".format(value))
    
    print(" reg [13:0] delayed _write_addr; \
    \n reg prev_data_ready; \
    \n reg past_finish; \
    \n reg past_calc; \
    \n \n assign finish = (MEM_write_addr == NUM_DATA-1) ? 1'b1 : 1'b0; \
    \n //Collection is finished after received 100000 data \n");
          
    print("always @(finish or calced) \
    \n begin \
    \n if(rst) \
    \n    collect_finish_display <= 1'b0; \
    \n else  \
    \n  if(finish == 1 && past_finish == 0) \
    \n    collect_finish_display <= 1; \
    \n  else if(calced == 1 && past_calc == 0) \
    \n    collect_finish_display <= 0; \
    \n end \n");
          
    print("always @(posedge clk) \
    \n begin \
    \n past_finish <= finish; \
    \n past_calc <= calced; \
    \n prev_data_ready <= data_ready; //for capturing the rising edge of the data_ready \
    \n MEM_write_addr <= delayed_write_addr; \
    \n \
    \n if(rst || MEM_write_addr == NUM_DATA) //Reset when rst ==1 or saved 10000 data \
    \n    begin \
    \n    MEM_write_enable <= 1'b0; \
    \n    delayed_wrte_addr <= 14'd0; \
    \n    MEM_write_data <= 8'd0; \
    \n    end \
    \n else if(data_ready ==1'b1 && prev_data_ready == 1'b0) \
    \n    begin \
    \n    MEM_write_enable <= 1'b1; \
    \n    delayed_write_addr <= delayed_write_addr + 1'b1; \
    \n    MEM_write_data <= data_input; \
    \n    end \
    \n else \
    \n    begin \
    \n    MEM_write_enable <= 1'b0; \
    \n    delayed_write_addr <= delayed_write_addr; \
    \n    MEM_write_data <= data_input; \
    \n    end \
    \n end \
    \n endmodule");

generate_datacollect("datacollect.txt",6)