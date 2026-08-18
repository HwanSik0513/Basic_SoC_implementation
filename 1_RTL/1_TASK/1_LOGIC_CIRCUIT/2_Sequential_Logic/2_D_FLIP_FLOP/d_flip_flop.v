`timescale 1ns / 1ps

module d_flip_flop (
	i_d,
	clk,
	rst_n,
	o_q
);

input	i_d	;
input	clk	;
input	rst_n	;

output reg o_q	;

always @(posedge clk or negedge rst_n)  begin

if(!rst_n)
	o_q <= 1'b0;
else
	o_q <= i_d ;

end 

endmodule


