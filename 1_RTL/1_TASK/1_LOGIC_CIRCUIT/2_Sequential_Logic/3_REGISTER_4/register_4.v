`timescale 1ns / 1ps

module register_4 (

	i_d,
	clk,
	rst_n,
	o_q
);

input		[3:0]	i_d	;
input			clk	;
input 			rst_n	;

output reg	[3:0]	o_q	;

always @(posedge clk or negedge rst_n) begin

if(!rst_n)
	o_q <= 4'b0000;
else
	o_q <= i_d    ;

end

endmodule
