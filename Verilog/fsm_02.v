module fsm_02 (clk, clr, x, b);

input clk, clr, b;
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
		
always @(estado_atual or b)

	case (estado_atual)

	2'd0: begin

		if(b == 1'b0) begin

			proximo_estado = 2'd1;
			x = 1'b0;
			
		end
		
		else begin

			proximo_estado = 2'd0;
			x = 1'b0;
			
		end
		
	end
	
	2'd1: begin

		proximo_estado = 2'd2;
		x = 1'b1;
			
	end

	2'd2: begin

		proximo_estado = 2'd3;
		x = 1'b1;
			
	end
	
	2'd3: begin

		proximo_estado = 2'd0;
		x = 1'b1;
			
	end		
	
	default: begin

		proximo_estado = 2'd0;
		x = 1'b0;
			
	end	
	
	endcase	
	
endmodule	
			