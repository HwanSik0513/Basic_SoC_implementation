`timescale 1ns / 1ps

module tb_FSM3();

// signal def
        // stimulus signal
reg	clk	;
reg	rst_n	;
reg	go 	;
reg 	ws	;

	// minitor signal

wire	rd	;
wire	ds	;

// DUT instantiation

FSM3 DUT (
	.clk	(clk	)	,
	.rst_n	(rst_n	)	,
	.go	(go	)	,
	.ws	(ws	)	,
	.rd	(rd	)	,
	.ds	(ds	)
);

// clock gen

always #5 clk = ~clk;

// apply stimulus

initial begin
	// t = 0, init

	clk = 1'b0; rst_n = 1'b0; // rst on(system OFF)
	go  = 1'b0;    ws = 1'b0;

	#100 rst_n = 1'b1; // rst off(system ON)

	#100	go = 1'b1; ws = 1'b1;
	#100	ws = 1'b0;
	#100 rst_n = 1'b0;

	#100; $finish;
end

endmodule


