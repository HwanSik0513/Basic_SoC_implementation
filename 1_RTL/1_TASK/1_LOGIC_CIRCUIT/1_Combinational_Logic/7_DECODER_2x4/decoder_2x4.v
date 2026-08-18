`timescale 1ns / 1ps

module decoder_2x4 (

	i_a,
	i_en,
	o_y
);

input	[1:0]	i_a	;
input		i_en	;

output	[3:0]	o_y	;

//Dataflow description

assign o_y[0] = i_en & (~i_a[1]) & (~i_a[0])	;
assign o_y[1] = i_en & (~i_a[1]) & i_a[0]	;
assign o_y[2] = i_en & i_a[1] & (~i_a[0])	;
assign o_y[3] = i_en & i_a[1] & i_a[0] 		;

endmodule 
