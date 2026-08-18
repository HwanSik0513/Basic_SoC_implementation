`timescale 1ns / 1ps

module tb_ripple_carry_adder_4;

wire	[3:0]	sum	;
wire		cout	;

reg	[3:0]	a	;
reg	[3:0]	b	;
reg		cin	;

ripple_carry_adder_4 uut (
	.sum(sum),
	.cout(cout),
	.a(a),
	.b(b),
	.cin(cin)
);

initial begin

a	=	4'b0011 ;
b	= 	4'b0010 ;
cin	= 	0	;

#10
a	=	4'b0101	;
b	= 	4'b0011 ;
cin	=	0	;

#10
a	=	4'b1111	;
b	= 	4'b0001	;
cin	= 	0	;

#10
a	=	4'b1010	;
b 	= 	4'b0101	;
cin	=	0	;

#10
a	=	4'b1111	;
b	=	4'b1111	;
cin	=	0	;

end

endmodule 
