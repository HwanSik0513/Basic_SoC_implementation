`timescale 1ns / 1ps

module shift_register_sipo #(
	parameter WIDTH = 8
)(
	clk		,
	rst_n		,
	i_serial_in	,
	o_parallel_out	
);

input  clk		    ;
input  rst_n		    ;
input  i_serial_in	    ;

output [7:0] o_parallel_out ;

reg [7:0] o_parallel_out    ;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
	o_parallel_out <= 8'b0;
    end else begin
	o_parallel_out <= {o_parallel_out[6:0], i_serial_in};
    end
end		

endmodule
