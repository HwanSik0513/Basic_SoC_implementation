`timescale 1ns / 1ps

module ls194 (
     
    // port list

    clk		,
    rst_n	,
    i_sel	,
    i_pd	,
    i_ls	,
    i_rs	,
    o_q		,
);

// port declaration

input		clk	; // clock
input		rst_n	; // active-low(reset)
input  [1:0]	i_sel	; // mode select {S1,S0}
input  [3:0]	i_pd	; // parallel input [3:0]
input		i_ls	; // shift left
input		i_rs	; // shift right

output [3:0]	o_q	; // parallel output Q [3:0]

// internal register

reg    [3:0]    o_q	;

// modeling

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
	o_q <= 4'b0000;
    end else begin
	case (i_sel)
            2'b00	: o_q <= o_q             ; // hold
	    2'b01	: o_q <= {i_rs,o_q[3:1]} ; // shift right
	    2'b10	: o_q <= {o_q[2:0],i_ls} ; // shift left
	    2'b11	: o_q <= i_pd		 ; // parallel Load
            default	: o_q <= o_q		 ;
        endcase
    end
end

endmodule

