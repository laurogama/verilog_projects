module contador7seg (clk, clr, seg);

input clk, clr;

output [6:0] seg;
wire [2:0] q;

wire freq_out;

div_freq U1(clk, clr, freq_out);

contador U2(freq_out, clr, q);

decoder U3 (q, seg);

endmodule
