`timescale 1ns / 1ps 

module encoder_4x2 (

	i_d,
	o_y,
	o_valid
);

input   	[3:0]	i_d	;

output reg 	[1:0]	o_y	;
output reg		o_valid	;

always @(*) begin 
	o_y	= 2'b00;
	o_valid	= 1'b1 ;

	case(i_d)

	4'b0001:
		o_y = 2'b00;
	4'b0010:
		o_y = 2'b01;
	4'b0100:
		o_y = 2'b10;
	4'b1000:
		o_y = 2'b11;
	default: begin
		o_y	= 2'b00;
		o_valid = 1'b0 ;
	end
	endcase

end
endmodule
