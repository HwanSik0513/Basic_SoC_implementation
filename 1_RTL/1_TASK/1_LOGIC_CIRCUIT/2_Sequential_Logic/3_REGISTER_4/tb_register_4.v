`timescale 1ns / 1ps

module tb_register_4;

reg		clk	;
reg		rst_n	;
reg	[3:0]	i_d	;

wire	[3:0]	o_q	;

register_4 uut (
	.i_d(i_d),
	.clk(clk),
	.rst_n(rst_n),
	.o_q(o_q)
);

always #5 clk = ~clk	;

initial begin

clk	=	1'b0	;
rst_n	=	1'b0	;
i_d	=	4'b0000 ;

#12	rst_n	=	1'b1;

@(negedge clk)	;
i_d = 4'b1010	;

@(negedge clk)	;
i_d = 4'b0101	;

@(negedge clk)	;
i_d = 4'b1111	;

@(negedge clk)	;
i_d = 4'b0011	;

#20;
$finisg;

end

endmodule 
