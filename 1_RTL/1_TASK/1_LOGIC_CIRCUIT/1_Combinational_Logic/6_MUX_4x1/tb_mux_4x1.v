`timescale 1ns / 1ps

module tb_mux_4x1;

reg		i_do	;
reg		i_d1	;
reg		i_d2	;
reg		i_d3	;
reg 	[1:0] 	i_sel 	;

wire 		o_y	;

mux_4x1 uut (
	.i_d0(i_d0),
	.i_d1(i_d1),
	.i_d2(i_d2),
	.i_d3(i_d3),
	.i_sel(i_sel),
	.o_y(o_y)
);

initial begin

	//inpur data 
	i_d0 = 1'b0;
	i_d1 = 1'b1;
	i_d2 = 1'b0;
	i_d3 = 1'b1;

	//select D0
	i_sel = 2'b00;

	#10;

	//select D1
	i_sel = 2'b01;

	#10;

	//select D2
	i_sel = 2'b10;

	#10;

	//select D3
	i_sel = 2'b11;

	#10;

	$finish;
end

endmodule
