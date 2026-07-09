`timescale 1ns / 1ps

module interrupt_controller (

	i_int	,
	i_ack	,
	o_id	,
	o_req

);

input [7:0]	i_int	     ;
input		i_ack	     ;

output  [2:0]	o_id	     ;
output  	o_req	     ;

reg [7:0] r_active_int 	     ;

reg [2:0] o_id	             ;
reg	  o_req	             ;

always @(*) begin
	o_id = 3'b000        ;
	o_req = 1'b0         ;
	r_active_int = i_int ;

	if (i_ack) begin
	    r_active_int = 8'b0000_0000;
	end else begin
	    casex (r_active_int)
		8'b1xxx_xxxx	: begin o_id = 3'b111; o_req = 1'b1; end
	        8'b01xx_xxxx    : begin o_id = 3'b110; o_req = 1'b1; end
		8'b001x_xxxx	: begin o_id = 3'b101; o_req = 1'b1; end 
		8'b0001_xxxx	: begin o_id = 3'b100; o_req = 1'b1; end
		8'b0000_1xxx	: begin o_id = 3'b011; o_req = 1'b1; end
		8'b0000_01xx	: begin o_id = 3'b010; o_req = 1'b1; end
		8'b0000_001x	: begin o_id = 3'b001; o_req = 1'b1; end
		8'b0000_0001	: begin o_id = 3'b000; o_req = 1'b1; end
		default		: begin o_id = 3'b000; o_req = 1'b0; end

		endcase
	end
end
		

endmodule
