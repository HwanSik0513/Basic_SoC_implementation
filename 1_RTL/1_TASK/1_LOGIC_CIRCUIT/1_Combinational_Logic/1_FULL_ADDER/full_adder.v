`timescale 1ns / 1ps

module full_adder (

	o_sum	,	
	o_cout	,
	i_a	,
	i_b	,
	i_cin	
);

input  i_a	;
input  i_b	;
input  i_cin	;

output o_sum	;
output o_cout	;

// Dataflow description 

assign  o_sum  = i_a ^ i_b ^ i_cin			;
assign  o_cout = (i_a & i_b) | (i_b & i_cin) | (i_a & i_cin)  ;

endmodule  
