`timescale 1ns / 1ps

module mux_2x1 (

	i_a,
	i_b
	i_sel,
	o_y
);

input i_a	;
input i_b	;
input i_sel	;

output o_y	;

// Dataflow description 

assign o_y = (i_sel) ? i_b : i_a ;

endmodule 


