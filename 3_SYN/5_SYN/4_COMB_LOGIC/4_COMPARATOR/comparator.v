`timescale 1ns/1ps

module comparator #(parameter WIDTH = 32)(

	i_a	                   ,
	i_b     	           ,
	o_equal  	           ,
	o_greater                  ,
	o_less
);

input [WIDTH-1:0] i_a 	           ;
input [WIDTH-1:0] i_b	           ;

output 		o_equal  	   ;
output		o_greater          ;
output 		o_less	       	   ;

assign 	o_equal    = (i_a == i_b)   ;
assign  o_greater = (i_a > i_b)	   ;
assign  o_less    = (i_a < i_b)    ;


endmodule
