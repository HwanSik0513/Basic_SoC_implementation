`timescale 1ns 1ps

module comparator_4 (

	i_a,
	i_b,
	o_lt,
	o_eq,
	o_gt
);

input	[3:0]	i_a	;
input	[3:0]	i_b	;

output 		o_lt	;
output		o_eq	;
output		o_gt	;

// Dataflow description 

assign o_lt = (i_a < i_b)	;
assign o_eq = (i_a == i_b)	;
assign o_gt = (i_a > i_b)	;

endmodule 



