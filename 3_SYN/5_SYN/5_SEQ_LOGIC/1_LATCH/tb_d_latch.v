`timescale 1ns / 1ps

module tb_d_latch();

reg        clk      ;
reg  [31:0] i_d     ;

wire [31:0] o_q	    ;


d_latch uut (
	.clk(clk),
	.i_d(i_d),
	.o_q(o_q)
);

always #5 clk = ~clk;

initial begin
	clk = 1'b0;
	i_d = 32'h0000_0000;
	
	i_d = 32'hAAAA_AAAA; #15;
	i_d = 32'h5555_5555; #15;
	i_d = 32'h1234_5678; #15;
	i_d = 32'h8765_4321; #15;
	i_d = 32'hFFFF_FFFF; #15;
	i_d = 32'h0000_0000; #15;

	#50;
	$finish;
end

endmodule
