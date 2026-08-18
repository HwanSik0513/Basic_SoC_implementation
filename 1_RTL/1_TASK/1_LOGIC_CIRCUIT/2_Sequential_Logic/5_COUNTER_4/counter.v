`timescale 1ns / 1ps 

module counter_4 (
	i_en,
	i_clear,
	clk,
	o_count
);

input	i_en	;
input	i_clear	;
input	clk	;

output reg [3:0] o_count ;

always @(posedge clk) begin

if(i_clear)
	o_count <= 4'b0000;
	
else if(i_en)
	o_count <= o_count + 1'b1;

end 

endmodule 


