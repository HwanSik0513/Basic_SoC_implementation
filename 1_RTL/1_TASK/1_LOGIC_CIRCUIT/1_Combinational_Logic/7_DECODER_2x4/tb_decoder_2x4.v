`timescale 1ns / 1ps 

module tb_decoder_2x4;

reg	[1:0]	i_a	;
reg		i_en	;

wire	[3:0]	o_y	;

decoder_2x4 uut (
	.i_a(i_a),
	.i_en(i_en),
	.o_y(o_y)
);

initial begin 
        
        //disable
	i_en = 1'b0 ;
	i_a  = 2'b00;
	
	#10;
        // enable
	i_en = 1'b1 ;

	//Y0
	i_a = 2'b00;

	#10;

	//Y1
	i_a = 2'b01;

	#10;

	//Y2
	i_a = 2'b10;

	#10;

	//Y3
	i_a = 2'b11;

	#10;

	//disable
	i_en = 1'b0;

	#10; 

	$finish;

end

endmodule	

