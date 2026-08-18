`timescale 1ns / 1ps

module subtractor_4 (
	
	i_a,
	i_b,
	o_diff,
	o_bout
);

input	[3:0]	i_a	;
input	[3:0]	i_b	;

output	[3:0]	o_diff	;
output		o_bout	;

// Dataflow description

assign o_diff = i_a - i_b	;
assign o_bout = (i_a < i_b)	;

endmodule


