module teste_fsm (clk, clr, b, x);

input clk, clr, b;

output x;

wire clock;

div_freq divisor(clk, clr, clock);

fsm_02 maquina_estados (clock, clr, x, b);

endmodule
