module sum_sub(input [3:0] A, B, input sel, output [6:0] seg_un, seg_dz, seg_a, seg_b);

wire sum[4:0], sub[4:0], mux_out[4:0];
wire [3:0] un, dz;
assign sum = A+B;
assign sub = A-B;
assign mux_out = sel ? sum : sub;

assign un = (mux_out <5'd9)? mux_out: mux_out%10;
assign dz = mux_out/10;

decoder dec_un(seg_un, un);
decoder dec_dz(seg_dz, dz);
decoder dec_a(seg_a, A);
decoder dec_b(seg_b, B);
endmodule

module decoder(input [3:0] data_in, output[3:0] data_out);

assign data_out = (data_in == 4'd0)? 7'h01:(
    (data_in== 4'd1)? 7'h4F :(
        (data_in == 4'd2)? 7'h12 :(
            (data_in == 4'd3)? 7'h06 :(
                (data_in == 4'd4)? 7'h4C :(
                    (data_in == 4'd5)? 7'h24 :(
                        (data_in == 4'd6)? 7'h20 :(
                            (data_in == 4'd7)? 7'h0F :(
                                (data_in==4'd8)?7'h00:(
                                    (data_in==4'd9)?7'h0C:(
                                        (data_in==4'd10)?7'h08:(
                                            (data_in==4'd11)?7'h60:(
                                                (data_in==4'd12)?7'h31:(
                                                    (data_in==4'd13)?7'h42:(
                                                        (data_in==4'd14)?7'h30:(
                                                            (data_in==4'd15)?7'h38:(

                                                                ))))))))))))))));


endmodule

module