`timescale 1ns / 1ps

module tb_d_flip_flop;

reg	clk	;
reg	rst_n	;
reg	i_d	;

wire	o_q	;

d_flip_flop uut (
	.i_d(i_d),
	.clk(clk),
	.rst_n(rst_n),
	.o_q(o_q)
);

always #5 clk = ~clk;

initial begin 

clk	=	1'b0;
rst_n	=	1'b0;
i_d	=	1'b0;

#12 rst_n = 1'b1;

@(negedge clk);
i_d = 1'b1	;

@(negedge clk);
i_d = 1'b0	;

@(negedge clk);
i_d = 1'b1	;

@(negedge clk);
i_d = 1'b1	;

#20;

$finish;

end

endmodule

