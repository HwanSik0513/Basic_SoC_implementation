`timescale 1ns / 1ps

module tb_subtractor_4;

wire	[3:0]	o_diff	;
wire		o_bout	;

reg	[3:0]	i_a	;
reg	[3:0]	i_b	;

subtractor_4 uut (
	.o_diff,	
	.o_bout,
	.i_a,	
	.i_b
);

initial begin

// A > B

i_a = 4'd10	;
i_b = 4'd3	;

#10;

// A = B

i_a = 4'd8	;
i_b = 4'd8	;

#10;

// A < B

i_a = 4'd3	;
i_b = 4'd7	;

#10;

// Maximus value

i_a = 4'd15	;
i_b = 4'd1	;

#10;

// Borrow 

i_a = 4'd0	;
i_b = 4'd0	;

$finish;

end

endmodule
