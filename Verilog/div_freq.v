module div_freq (clk, clr, fout);

input clk, clr;
output fout;

reg [24:0] contador;

assign fout = contador [22];

always @(posedge clk or negedge clr)

	if(!clr)
	
		contador <= 25'd0;
		
	else
	
		contador <= contador + 25'd1;
		
endmodule 