module decoder (data_in, data_out);

input [2:0] data_in;

output [6:0] data_out;
reg [6:0] data_out;

always @(data_in)

	if(data_in == 3'd0)
	
		data_out = 7'h01;
		
	else if(data_in == 3'd1)
	
		data_out = 7'h4f;
	
	else if(data_in == 3'd2)
	
		data_out = 7'h12;
		
	else if(data_in == 3'd3)
	
		data_out = 7'h06;
		
	else if(data_in == 3'd4)
	
		data_out = 7'h4c;
		
	else if(data_in == 3'd5)
	
		data_out = 7'h24;
		
	else if(data_in == 3'd6)
	
		data_out = 7'h60;
		
	else 
	
		data_out = 7'h0f;
		
		
endmodule 
		
		
		