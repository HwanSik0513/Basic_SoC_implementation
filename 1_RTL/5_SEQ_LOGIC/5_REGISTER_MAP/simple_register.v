`timescale 1ns / 1ps

module simple_register (

	clk     ,
	rst_n	,
	wen	,
	i_wdata	,
	o_rdata
);

input	clk 	    ;
input	rst_n	    ;
input	wen         ;
input [7:0] i_wdata ;
input [7:0] o_rdata ;

reg   [7:0] r_reg8  ;

always @(posedge clk or negedge rst_n) begin

  if (~rst_n) begin
      r_reg8 <= 8'b0	;
  end else if (wen) begin
      r_reg8 <= i_wdata ;
  end

end

assign o_rdata = r_reg8 ;

endmodule
