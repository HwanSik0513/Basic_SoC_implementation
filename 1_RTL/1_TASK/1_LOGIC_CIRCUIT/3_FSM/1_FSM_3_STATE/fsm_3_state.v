`timescale 1ns / 1ps

module fsm_3_state (
	
	clk,
	rst_n,
	i_start,
	i_finish,
	o_ready,
	o_done
);

input	clk		;
input	rst_n		;
input	i_start		;
input	i_finish	;

output reg o_ready	;
output reg o_done	;

// state encoding

parameter IDLE = 2'b00  ,
	  RUN  = 2'b01  ,
	  DONE = 2'b10  ;

reg [1:0] state		;
reg [1:0] next_state	;

// 1, State Register
// Sequential Logic

always @(posedge clk or negedge rst_n) begin

	if (!rst_n)
		state <= IDLE		;
	else
		state <= next_state	;
end

// 2. Next_State Logic
// Combinational Logic

always @(*) begin

	case (state)
	
		IDLE: begin
			
			if (i_start)
				next_state = RUN	;
			else
				next_state = IDLE	;
		end

		RUN: begin
			
			if (i_finish)
				next_state = DONE	;
			else
				next_state = RUN	;
		end
	
		DONE: begin
			
			next_state = IDLE		;

		end

		default: begin
	
			next_state = IDLE		;

		end

	endcase

end

// 3. Output Logic
// Combinational Logic

always @(*) begin

	o_ready = 1'b0	;
	o_done	= 1'b0	;
	
	case (state)
	
		IDLE: begin
	
			o_ready = 1'b1	;
			o_done  = 1'b0	;

		end

		RUN:  begin
	
			o_ready = 1'b0	;
			o_done 	= 1'b0	;

		end

		DONE: begin

			o_ready	= 1'b0	;
			o_done  = 1'b1	;

		end

		default: begin

			o_ready	= 1'b0	;
			o_done	= 1'b0	;

		end

	endcase

end

endmodule


















