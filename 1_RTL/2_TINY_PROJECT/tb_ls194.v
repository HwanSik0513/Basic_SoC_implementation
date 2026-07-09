`timescale 1ns / 1ps

module tb_ls194();

// stimulus signal

reg		clk	;
reg		rst_n	;
reg  [1:0]	i_sel	;
reg  [3:0]	i_pd	;
reg		i_ls	;
reg		i_rs	;

// monitor signal

wire [3:0]	o_q	;

// DUT instantiation

ls194 uut (
	.clk	(clk	),
	.rst_n	(rst_n	),
	.i_sel	(i_sel	),
	.i_pd	(i_pd	),
	.i_ls	(i_ls	),
	.i_rs	(i_rs	),
	.o_q	(o_q	)
);

// clock generation

always #5 clk = ~clk; // 10ns period

// test scenario

initial begin

	// init
	clk 	= 1'b0    ;
	rst_n	= 1'b0	  ;
	i_sel	= 2'b00	  ;
	i_pd	= 4'b000  ;
	i_ls	= 1'b0	  ;
	i_rs	= 1'b0	  ;

// reset release

        #12 rst_n = 1'b1;

// parallel Load : o_q <= 1011

        @(negedge clk)	;
        i_sel = 2'b11 	;
	i_pd  = 4'b1011 ;

// hold : keep 1011

	@(negedge clk)	;
	i_sel = 2'b00	;

// shift left

	@(negedge clk)
	i_sel = 2'b10	;
	i_ls  = 1'b0	;

	@(negedge clk)
	i_ls  = 1'b1	;

// shift right
	
	@(negedge clk)
	i_sel = 2'b01	;
	i_rs  = 1'b0	;
 
	i_rs  = 1'b1	;

// parallel Load again : o_q <= 0101

	@(negedge clk)
	i_sel = 2'b11	;
	i_pd  = 4'b0101	;

// hold

	@(negedge clk)
	i_sel = 2'b00	;

// reset again
	
	@(negedge clk)
	rst_n = 1'b0	;

	#30; $finish;
end

// monitor

initial begin

	$monitor("time=$0t | rst_n=%b | sel=%b | pd=%b | ls=%b | rs=%b | q=%b",
		 $time, rst_n, i_sel, i_pd, i_ls, i_rs, o_q);
end

endmodule






