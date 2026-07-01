`timescale 1ns/1ps

module tb_GPIO_MUX;

reg [1:0]   i_sel           ;
reg         i_tx0           ;
reg         i_rx0           ;
reg         i_pwm1          ;
reg         i_peri0         ;
wire        o_gpio_pin      ;

GPIO_MUX dut (
	.i_sel		(i_sel)		,
	.i_tx0		(i_tx0)		,
	.i_rx0		(i_rx0)		,
	.i_pwm1		(i_pwm1)	,
	.i_peri0	(i_peri0)	,
	.o_gpio_pin	(o_gpio_pin)	
);

initial begin
	$dumpfile("./gpio.vcd")		;
	$dumpvars(0, tb_GPIO_MUX)	;
end

initial begin

	i_tx0 = 1'b0; i_rx0 = 1'b1; i_pwm1 = 1'b0; i_peri0 = 1'b1;

	i_sel = 2'b00; #10;
	i_sel = 2'b01; #10;
	i_sel = 2'b10; #10;
	i_sel = 2'b11; #10;

	$finish;
end

endmodule

  
