`timescale 1ns/1ps

module d_latch (

	clk	,
	i_d	,
	o_q	
);

input          clk     	;
input  [31:0]  i_d	;

output [31:0]  o_q	;

reg    [31:0]  o_q	;

always @(*) begin	
      if(clk)
	o_q = i_d	;
end

endmodule
