module somador_display (a,b,seg_un,seg_dz);

input [2:0] a,b;

output [6:0] seg_un,seg_dz;

wire [4:0] soma;

somador und1 (a,b,soma);

decodificador_bin7seg und2 (soma,seg_un,seg_dz);


endmodule
