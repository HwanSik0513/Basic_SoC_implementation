`timescale 1ns / 1ps 

module mux_4x1 (

	i_d0,
	i_d1,
	i_d2,
	i_d3,
	i_sel,
	o_y
);

input		i_d0	;
input		i_d1	;
input		i_d2	;
input		i_d3	;
input	[1:0]	i_sel	;

output reg 	o_y	;

// Behavioral description

always @(*) begin 

	case(i_sel)
		2'b00: o_y = i_d0	;
		2'b01: o_y = i_d1	;
		2'b10: o_y = i_d2	;
		2'b11: o_y = i_d3	;
	endcase
end

endmodule 
