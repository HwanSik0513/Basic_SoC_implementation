`timescale 1ns / 1ps

module tb_fsm_3_state   ;

reg	clk		;
reg	rst_n		;

reg	i_start		;
reg	i_finish	;

wire	o_ready		;
wire	o_done		;

fsm_3_state uut (
	.clk(clk),
	.rst_n(rst_n),
	.i_start(i_start),
	.i_finish(i_finish),
	.o_ready(o_ready),
	.o_done(done)
);

always #5 clk = ~clk;

initial begin

clk	 = 1'b0	;
rst_n	 = 1'b0	;

i_start  = 1'b0	;
i_finish = 1'b0 ;

#12 rst_n = 1'b1;

// IDLE -> RUN 

@(negedge clk)  ;
i_start = 1'b1  ;

@(negedge clk)  ;
i_start = 1'b0	;

// RUN hold

repeat (2)

@(negedge clk)  ;

// RUN -> DONE 

i_finish = 1'b1 ;

@(negedge clk)	;

i_finish = 1'b0	;

// DONE -> IDLE

@(negedge clk)	;

//finish

#20		;

$finish		;

end

endmodule

