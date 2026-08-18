`timescale 1ns / 1ps 

module tb_d_latch;

reg 	i_d	;
reg 	i_en 	;

wire	o_q	;

d_latch uut (
	.i_d(i_d),
	.i_en(i_en),
	,o_q(o_q)
);

initial begin

i_d	=	1'b0;
i_en	=	1'b0;

#10;

i_en	=	1'b1;
i_d	=	1'b1;

#10;

i_d	=	1'b0;

#10;

i_en	=	1'b0;
i_d	=	1'b1;

#10;

i_en	= 	1'b1;

#10;

$finish;

end

endmodule 

