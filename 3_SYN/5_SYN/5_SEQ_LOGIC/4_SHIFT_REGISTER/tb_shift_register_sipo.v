`timescale 1ns / 1ps

module tb_shift_register_sipo;

localparam WIDTH = 8		  ;

reg	clk			  ;
reg	rst_n			  ;
reg	i_serial_in		  ;
integer i		          ;
reg 	random_bit		  ;

wire [WIDTH -1 :0] o_parallel_out ;

shift_register_sipo #(
	.WIDTH(WIDTH)
) uut (
    .clk	    (clk           ),
    .rst_n	    (rst_n         ),
    .i_serial_in    (i_serial_in   ),
    .o_parallel_out (o_parallel_out)
);	

initial begin
    clk = 1'b0           ;
    forever #5 clk = ~clk;
end

initial begin
    rst_n 	= 1'b0 ;
    i_serial_in = 1'b0 ;

    #15;	
    rst_n = 1'b1       ;

    for (i = 0; i < WIDTH*2; i = i + 1) begin
	@(negedge clk)           ;
	random_bit = $random     ;
	i_serial_in = random_bit ;
    end

    #50    ;
    $finish;
end

initial begin
    $monitor("time=%0t | rst_n=%b | parallel_out=%b",
	      $time, rst_n, i_serial_in, o_parallel_out);
end

endmodule
