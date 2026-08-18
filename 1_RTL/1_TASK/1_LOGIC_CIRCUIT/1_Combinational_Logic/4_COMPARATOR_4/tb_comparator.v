`timescale 1ns / 1ps 

module tb_comparator_4;

reg	[3:0]	i_a	;	
reg	[3:0]	i_b	;

wire 		o_lt	;
wire		o_eq	;
wire 		o_gt	;

comparator_4 uut (
	.i_a(i_a),
	.i_b(i_b),
	.o_lt(o_lt),
	.o_eq(o_eq),
	.o_gt(o_gt)
);

initial begin 

// A < B

i_a = 4'd3	;
i_b = 4'd7	;

#10;

// A = B	

i_a = 4'd5	;
i_b = 4'd5	;	

#10;

// A > B 
//
i_a = 4'd12	;
i_b = 4'd15	;

#10;

$finish;

end

endmodule
