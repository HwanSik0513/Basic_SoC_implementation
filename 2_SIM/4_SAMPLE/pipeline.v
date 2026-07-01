`timescale 1ns/1ps

module pipeline(

clk,
rst_n,
in1,
in2,
in3,
out
);

input clk;
input rst_n;

input[9:0] in1;
input[9:0] in2;
input[9:0] in3;

output reg[11:0] out;

reg[10:0] temp_add1;

always @(posedge clk or negedge rst_n)

begin
 if(!rst_n)
 temp_add1 <= 11'd0;

 else
 temp_add1 <= {1'b0, in1} + {1'b0, in2};

end

reg[9:0] temp_in3;

always @(posedge clk or negedge rst_n) 
 if(!rst_n) 
  temp_in3 <= 10'd0;

 else
  temp_in3 <= in3;



always @(posedge clk or negedge rst_n)

begin
 if(!rst_n)
  out <= 12'd0;

 else
  out <= {1'b0, temp_add1} + {2'b0, temp_in3};

end


endmodule
