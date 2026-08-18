`timescale 1ns / 1ps

module tb_encoder_4x2;

reg	[3:0}	i_d	;

wire	[1:0]	o_y	;
wire		o_valid ;

encoder_4x2 uut (
	.i_d(i_d),
	.o_y(o_y),
	.o_valid(o_valid)
);

initial begin

i_d = 4'b0000;

#10;

i_d = 4'b0001;

#10;

i_d = 4'b0010;

#10;

i_d = 4'b0100;

#10;

i_d = 4'b1000;

#10;

i_d = 4'b1010;

#10

$finish;

end

endmodule
