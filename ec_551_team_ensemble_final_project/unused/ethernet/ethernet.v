module TENBASET_TxD(reset, clk,out,ctrl, phy_reset,TXD4);

input clk, reset;

output reg [3:0] out;
output ctrl;
output phy_reset;
output TXD4;

// IP source
parameter IPsource_1 = 192;
parameter IPsource_2 = 168;
parameter IPsource_3 = 0;
parameter IPsource_4 = 44;

// IP destination
parameter IPdestination_1 = 192;
parameter IPdestination_2 = 168;
parameter IPdestination_3 = 157;
parameter IPdestination_4 = 1;

// MAC Address
parameter PhysicalAddress_1 = 8'h80;
parameter PhysicalAddress_2 = 8'h86;
parameter PhysicalAddress_3 = 8'hF2;
parameter PhysicalAddress_4 = 8'h3E;
parameter PhysicalAddress_5 = 8'h6A;
parameter PhysicalAddress_6 = 8'hD9; 

//////////////////////////////////////////////////////////////////////

// UDP packet, 18 bytes payload

// IP Checksum, unsure if this is correct
parameter IPchecksum1 = 32'h0000C53F + (IPsource_1<<8)+IPsource_2+(IPsource_3<<8)+IPsource_4+
                                                                (IPdestination_1<<8)+IPdestination_2+(IPdestination_3<<8)+(IPdestination_4);
parameter IPchecksum2 =  ((IPchecksum1&32'h0000FFFF)+(IPchecksum1>>16));
parameter IPchecksum3 = ~((IPchecksum2&32'h0000FFFF)+(IPchecksum2>>16));

reg [6:0] lut_count;
reg [7:0] data_byte;
reg mod_counter;

always @(posedge clk) 
case(lut_count)
// Ethernet preamble
  7'h00: data_byte <= 8'h55;	
  7'h01: data_byte <= 8'h55;
  7'h02: data_byte <= 8'h55;
  7'h03: data_byte <= 8'h55;
  7'h04: data_byte <= 8'h55;
  7'h05: data_byte <= 8'h55;
  7'h06: data_byte <= 8'h55;
  7'h07: data_byte <= 8'hD5;
// Ethernet header
  7'h08: data_byte <= PhysicalAddress_1;
  7'h09: data_byte <= PhysicalAddress_2;
  7'h0A: data_byte <= PhysicalAddress_3;
  7'h0B: data_byte <= PhysicalAddress_4;
  7'h0C: data_byte <= PhysicalAddress_5;
  7'h0D: data_byte <= PhysicalAddress_6;
  7'h0E: data_byte <= 8'h00;
  7'h0F: data_byte <= 8'h12;
  7'h10: data_byte <= 8'h34;
  7'h11: data_byte <= 8'h56;
  7'h12: data_byte <= 8'h78;
  7'h13: data_byte <= 8'h90;
// IP header
  7'h14: data_byte <= 8'h08;
  7'h15: data_byte <= 8'h00;
  7'h16: data_byte <= 8'h45;
  7'h17: data_byte <= 8'h00;
  7'h18: data_byte <= 8'h00;
  7'h19: data_byte <= 8'h2E;
  7'h1A: data_byte <= 8'hB3;
  7'h1B: data_byte <= 8'hFE;
  7'h1C: data_byte <= 8'h00;
  7'h1D: data_byte <= 8'h00;
  7'h1E: data_byte <= 8'h80;
  7'h1F: data_byte <= 8'h11;
  7'h20: data_byte <= 8'h68;//IPchecksum3[15:8];
  7'h21: data_byte <= 8'h42;//IPchecksum3[ 7:0];
  7'h22: data_byte <= IPsource_1;
  7'h23: data_byte <= IPsource_2;
  7'h24: data_byte <= IPsource_3;
  7'h25: data_byte <= IPsource_4;
  7'h26: data_byte <= IPdestination_1;
  7'h27: data_byte <= IPdestination_2;
  7'h28: data_byte <= IPdestination_3;
  7'h29: data_byte <= IPdestination_4;
// UDP header
  7'h2A: data_byte <= 8'h04;
  7'h2B: data_byte <= 8'h00;
  7'h2C: data_byte <= 8'h04;
  7'h2D: data_byte <= 8'h00;
  7'h2E: data_byte <= 8'h00;
  7'h2F: data_byte <= 8'h1A;
  7'h30: data_byte <= 8'h90;
  7'h31: data_byte <= 8'hEA;
// payload
  7'h32: data_byte <= 8'h00;	// send this
  7'h33: data_byte <= 8'h01;	// send this
  7'h34: data_byte <= 8'h02;	// send this
  7'h35: data_byte <= 8'h03;	// send this
  7'h36: data_byte <= 8'h04;	// send this
  7'h37: data_byte <= 8'h05;	// send this
  7'h38: data_byte <= 8'h06;	// send this
  7'h39: data_byte <= 8'h07;	// send this
  7'h3A: data_byte <= 8'h08;	// send this
  7'h3B: data_byte <= 8'h09;	// send this
  7'h3C: data_byte <= 8'h0A;	// send this
  7'h3D: data_byte <= 8'h0B;	// send this
  7'h3E: data_byte <= 8'h0C;	// send this
  7'h3F: data_byte <= 8'h0D;	// send this
  7'h40: data_byte <= 8'h0E;	// send this
  7'h41: data_byte <= 8'h0F;	// send this
  7'h42: data_byte <= 8'h10;	// send this
  7'h43: data_byte <= 8'h11;	// send this
  //CRC calc hardcoded
  7'h44: data_byte <= 8'hAF;
  7'h45: data_byte <= 8'h8C;
  7'h46: data_byte <= 8'h3F;
  7'h47: data_byte <= 8'h0A;

  default: data_byte <= 8'h00;
endcase
//////////////////////////////////////////////////////////////////////

always @(posedge clk)begin
  
  if (reset) begin
    lut_count <= 0;
	 mod_counter <= 0;
	 out     <= 4'b0;
  end
  else begin //posedge
    if (mod_counter ==0) begin
	   mod_counter <= mod_counter+1'b1;
      lut_count <= lut_count+1'b1;
      out     <= data_byte[7:4];
    end
	 else if (mod_counter == 60) begin
		lut_count <= 0;
		mod_counter <= 0;
		out     <= 4'b0;
	 end
    else begin
	   mod_counter <= mod_counter+1'b1;
      out     <= data_byte[3:0];
	 end
  end
end
assign ctrl = !reset;
assign phy_reset= !reset;
assign TXD4 = (!reset)?0:1;

//////////////////////////////////////////////////////////////////////

endmodule
