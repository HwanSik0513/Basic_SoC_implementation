`timescale 1ns / 1ps 

module tb_full_adder	;

wire	o_sum	    	;
wire 	o_cout		;

reg	i_a		;
reg	i_b		;
reg	i_cin		;

parameter stop_time = 90;

full_adder uut (
	.o_sum(o_sum),	
	.o_cout(o_cout),
	.i_a(i_a),
	.i_b(i_b),
	.i_cin(i_cin)
);

initial #stop_time $finish;

initial begin 

i_a = 0; i_b = 0; i_cin = 0;

#10
i_a = 0; i_b = 0; i_cin = 1;

#10 
i_a = 0; i_b = 1; i_cin = 0;

#10 
i_a = 0; i_b = 1; i_cin = 1;

#10
i_a = 1; i_b = 0; i_cin = 0;

#10 
i_a = 1; i_b = 0; i_cin = 1;

#10
i_a = 1; i_b = 1; i_cin = 0;

#10 
i_a = 1; i_b = 1; i_cin = 1;

end

endmodule 

 
