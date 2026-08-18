`timescale 1ns / 1p

module shift_register_4 (
	i_serial,
	i_shift,
	clk,
	rst_n,
	o_q
);

input		 i_serial	;
input		 i_shift	;
input		 clk		;
input		 rst_n		;

output reg [3:0] o_q		;

always @(posedge clk or negedge rst_n) begin

if(!rst_n)
	o_q <= 4'b0000;
else if (i_shift)
	o_q <= {o_q[2:0], i_serial};

end

endmodule


