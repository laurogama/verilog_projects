module decodificador (
					  data_in,	
					  data_out
					  );	
					
input [3:0] data_in;

output [6:0] data_out;

//------------------------------------
// DECODIFICADOR DO RESULTADO DA SOMA
//-----------------------------------

assign data_out = (data_in == 4'd0)? 7'h01:
				  ((data_in == 4'd1)? 7'h4f:
				   (data_in == 4'd2)? 7'h12:
				   (data_in == 4'd3)? 7'h06:
				   (data_in == 4'd4)? 7'h4c:
				   (data_in == 4'd5)? 7'h24:
				   (data_in == 4'd6)? 7'h20:
				   (data_in == 4'd7)? 7'h0F:
				   (data_in == 4'd8)? 7'h00:7'h0C);
				   
endmodule
