`timescale 1ns / 1ps

module d_latch (

	i_d,
	i_en,
	o_q
);

input		i_d	;
input		i_en	;

output reg 	o_q	;

always @(*) begin

if(i_en)
	o_q = i_d;

end 
endmodule
