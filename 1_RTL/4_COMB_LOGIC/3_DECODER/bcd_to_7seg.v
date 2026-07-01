`timescale 1ns/1ps

module bcd_to_7seg (

	i_bcd,
	o_seg
);

input  [3:0] i_bcd	;
output [6:0] o_seg	;

reg    [6:0] o_seg	;

always @(*) begin
	case (i_bcd)
		4'b0000: o_seg = 7'b1111110; 
		4'b0001: o_seg = 7'b0110000;
		4'b0010: o_seg = 7'b1101101;
		4'b0011: o_seg = 7'b1111001;
		4'b0100: o_seg = 7'b0110011;
		4'b0101: o_seg = 7'b1011011;
		4'b0110: o_seg = 7'b1011111;
		4'b0111: o_seg = 7'b1110000;
		4'b1000: o_seg = 7'b1111111;
		4'b1001: o_seg = 7'b1111011;
		default: o_seg = 7'b0000000;

	endcase
end

endmodule	
