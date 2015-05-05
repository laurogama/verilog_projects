module fsm_01 (clk, clr, x);

input clk, clr;
output x;
reg x;

reg [1:0] estado_atual;
reg [1:0] proximo_estado;

//--------------------------------
// ESTADO ATUAL
//--------------------------------
always @(posedge clk or negedge clr)

	if(clr == 1'b0)
	
		estado_atual <= 2'd0;
		
	else
	
		estado_atual <= proximo_estado;
		
//--------------------------------
// PROXIMO ESTADO
//--------------------------------
		
always @(estado_atual)

	if(estado_atual == 2'd0)
	begin
	
		x = 1'b0;
		proximo_estado = 2'd1;
		
	end
	
	else if(estado_atual == 2'd1)
	begin
	
		x = 1'b1;
		proximo_estado = 2'd2;
		
	end
	
	else if(estado_atual == 2'd2)
	begin
	
		x = 1'b1;
		proximo_estado = 2'd3;
		
	end
	
	else
	begin
	
		x = 1'b1;
		proximo_estado = 2'd0;
		
	end
	
endmodule	
			