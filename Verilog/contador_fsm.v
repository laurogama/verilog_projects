module contador_fsm (

				 rst,
				 clk,
				 q
				 
				 );
				 
input rst;
input clk;

output [2:0] q;
reg [2:0] q;

parameter ST0 = 0;
parameter ST1 = 1;
parameter ST2 = 2;
parameter ST3 = 3;
parameter ST4 = 4;
parameter ST5 = 5;
parameter ST6 = 6;
parameter ST7 = 7;

reg [2:0] currentstate;
reg [2:0] nextstate;

//----------------- Estado Atual --------------

always @(posedge clk or negedge rst)

	if(!rst)
	
		currentstate <= ST0;
		
	else
	
		currentstate <= nextstate;
		
//--------------------------------------------
//---- Próximo Estado ------------------------

always @(currentstate)
begin

	case (currentstate)

	ST0: begin

		q = 3'd0;
		nextstate = ST1;
		
	end
	
		
	ST1: begin

		q = 3'd3;
		nextstate = ST2;
		
	end
	
	ST2: begin

		q = 3'd4;
		nextstate = ST3;
		
	end
	
	ST3: begin

		q = 3'd2;
		nextstate = ST4;
		
	end
	
	ST4: begin

		q = 3'd5;
		nextstate = ST5;
		
	end
	ST5: begin

		q = 3'd7;
		nextstate = ST6;
		
	end
	
	ST6: begin

		q = 3'd6;
		nextstate = ST7;
		
	end
	
	ST7: begin

		q = 3'd1;
		nextstate = ST0;
		
	end
	
	default: begin

		q = 3'd0;
		nextstate = ST0;
		
	end
	
	endcase
	
end

endmodule

	
	
	


