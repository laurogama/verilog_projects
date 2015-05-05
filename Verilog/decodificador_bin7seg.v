module decodificador_bin7seg (dec_in, seg_und, seg_dz);

input [4:0] dec_in;

output [6:0] seg_und, seg_dz;

wire [3:0] und,dz;

assign und = (dec_in <= 5'd9)? dec_in[3:0]:dec_in%10;

assign dz = dec_in/10;

decodificador dec_un (und,seg_und);
decodificador dec_dz (dz,seg_dz);

endmodule
