`timescale 1ns / 1ps

module tb_simple_register;


reg	clk	   ;
reg	rst_n	   ;
reg	wen	   ;
reg  [7:0] i_wdata ;
wire [7:0] o_rdata ;

simple_register uut (
     .clk	(clk	),
     .rst_n     (rst_n	),
     .wen	(wen	),
     .i_wdata	(i_wdata),
     .o_rdata	(o_rdata)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    rst_n = 1'b0; wen = 1'b0; i_wdata = 8'b0;
    #10 rst_n = 1'b1;

    #10 wen = 1; i_wdata = 8'd42;
    #10 wen = 0;

    #10 $display("Read Data: %d", o_rdata);

    $finish;
end

endmodule	
