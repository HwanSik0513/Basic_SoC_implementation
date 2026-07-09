`timescale 1ns/1ps

module tb_comparator();

reg [3:0] i_a, i_b;

wire o_greater, o_equal, o_less;

comparator uut (
	.i_a(i_a),
	.i_b(i_b),
	.o_greater(o_greater),
	.o_equal(o_equal),
	.o_less(o_less)
);

initial begin

 $monitor("#t\t %b\t %b\t %b\t %d\t %b", $time, i_a, i_b, o_greater, o_equal, o_less);

 i_a = 4'b0000; i_b = 4'b0000; #10;
 i_a = 4'b0101; i_b = 4'b0011; #10;
 i_a = 4'b0010; i_b = 4'b1000; #10;
 i_a = 4'b1111; i_b = 4'b1111; #10;
 i_a = 4'b1010; i_b = 4'b0101; #10;
 i_a = 4'b0111; i_b = 4'b1001; #10;
 i_a = 4'b1100; i_b = 4'b1100; #10;
 i_a = 4'b0000; i_b = 4'b1111; #10;

 #10 $finish;

end

endmodule 
