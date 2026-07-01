`timescale 1ns/1ps

module tb_pipeline;

reg clk;
reg rst_n;
reg[9:0] in1;
reg[9:0] in2;
reg[9:0] in3;

wire[11:0] out;

pipeline uut(
 .clk(clk),
 .rst_n(rst_n),
 .in1(in1),
 .in2(in2),
 .in3(in3),
 .out(out)
);

always #5 clk = ~clk;

initial begin

  clk   = 1'b0;
  rst_n = 1'b0;
  in1   = 1'b0;
  in2   = 1'b0;
  in3   = 1'b0;

#20;
 rst_n = 1'b1;

#20;
 in1 = 10'd1;
 in2 = 20'd2;
 in3 = 30'd3;

#20;
in1 = 20'd4;
in2 = 40'd5;
in3 = 60'd6;

#20;

$finish;
end

initial begin
   $dumpfile("./pipeline.vcd") ;
   $dumpvars(1, uut)           ;

end



endmodule



