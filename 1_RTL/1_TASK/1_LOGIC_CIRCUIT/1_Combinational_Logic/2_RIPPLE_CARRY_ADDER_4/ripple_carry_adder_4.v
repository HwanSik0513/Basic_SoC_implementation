`timescale 1ns / 1ps

module ripple_carry_adder_4 (

	sum,
	cout,
	a,
	b,
	cin
);

input  [3:0]	a    	;
input  [3:0] 	b    	;
input	     	cin  	;

output [3:0]	sum  	;
output		cout	;

wire 		c1 	;
wire		c2	;
wire	 	c3	;

full_adder FA0 (
	sum[0],
	c1,
	a  [0],
	b  [0],
	cin
);

full_adder FA1 (
	sum[1],
	c2,
	a  [1],
	b  [1],
	c1
);

full_adder FA2 (
	sum[2],
	c3,
	a  [2],
	b  [2],
	c2	
);

full_adder FA3 (
	sum[3]
	cout,
	a  [3],
	b  [3],
	c3
);

endmodule 

