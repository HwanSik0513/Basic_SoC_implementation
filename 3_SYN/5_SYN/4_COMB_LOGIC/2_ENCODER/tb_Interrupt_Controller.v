`timescale 1ns / 1ps

module tb_interrupt_controller;

reg [7:0]  i_int	;
reg 	   i_ack	;

wire [2:0] o_id		;
wire 	   o_req	;

interrupt_controller uut (
	.i_int	(i_int  )	,
	.i_ack	(i_ack	)	,
	.o_id	(o_id	)	,
	.o_req	(o_req	)	
);

initial begin
	$dumpfile("./interrupt_controller.vcd") ;
	$dumpvars(0, tb_interrupt_controller)	;
end

initial begin

	$monitor("Time = %0t | i_int=%b | i_ack=%b | o_id = %b | o_req=%b", $time, i_int, i_ack, o_id, o_req);

i_int		= 8'b0000_0000 ;
i_ack		= 1'b0	       ;

#10 i_int 	= 8'b0000_0001 ;
#10 i_int 	= 8'b0010_0000 ;
#10 i_int	= 8'b1000_0000 ;
#10 i_ack 	= 1'b1	       ;
#10 i_ack 	= 1'b0	       ;

#10 i_int  	= 8'b0100_0010 ;
#10 i_ack 	= 1'b1	       ;
#10 i_ack 	= 1'b0	       ;

#10 i_int 	= 8'b0000_0000 ;

#20 $finish;

end

endmodule
