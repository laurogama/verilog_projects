module contador (clk, clear, s);

input clk, clear;
output [2:0] s;
reg [2:0] s;

always @(posedge clk or negedge clear)

	if(!clear)
	
		s <= 3'd0;
		
	else
	
		s <= s + 3'd1;
		
endmodule

