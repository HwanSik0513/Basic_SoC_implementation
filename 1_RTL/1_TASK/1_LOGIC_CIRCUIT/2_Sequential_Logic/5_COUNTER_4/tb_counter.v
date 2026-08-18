`timescale 1ns / 1ps 

module tb_count_4;

reg	clk	;
reg	i_en	;
reg	i_clear	;

wire [3:0] o_count ;

counter_4 uut (
	.i_en(i_en),
	.i_clear(i_clear),
	.clk(clk),
	.o_count(o_count)
);

always #5 clk = ~clk ;

initial begin

clk 	= 1'b0	;
i_en	= 1'b0	;
i_clear = 1'b1	;

@(negedge clk)	;
i_clear	= 1'b0	;
i_en	= 1'b1	;

repeat (5)
	@(negedge clk);

i_en = 1'b0	;

repeat (2)
	@(negedge clk);

i_en = 1'b1	;

repeat (3)
	@(negedge clk);
i_clear = 1'b1	;

@(negedge clk);

i_clear = 1'b0	;

#20;

$finish;

end

endmodule
