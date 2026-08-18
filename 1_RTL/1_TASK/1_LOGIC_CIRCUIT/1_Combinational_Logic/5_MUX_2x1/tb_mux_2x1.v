`timescale 1ns / 1ps

module tb_mux_2x1 ;

reg i_a	  ;
reg i_b	  ;
reg i_sel ;

wire o_y  ;

mux_2x1 uut (
	.i_a(i_a),
	.i_b(i_b),
	.i_sel(i_sel),
	.o_y(o_y)
);

initial begin

i_sel	=	1'b0;
i_a	=	1'b0;
i_b	=	1'b1;

#10;

i_a	=	1'b1;
i_b	=	1'b0;

#10;

// select B

i_sel 	= 	1'b1;
i_a	= 	1'b0;
i_b	=	1'b1;

#10;

i_a	=	1'b1;
i_b	=	1'b0;

#10;

$finish;

end

endmodule
	
