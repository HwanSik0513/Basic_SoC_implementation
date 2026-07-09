
//input ports
add mapped point clk clk -type PI PI
add mapped point rst_n rst_n -type PI PI
add mapped point i_sel[1] i_sel[1] -type PI PI
add mapped point i_sel[0] i_sel[0] -type PI PI
add mapped point i_pd[3] i_pd[3] -type PI PI
add mapped point i_pd[2] i_pd[2] -type PI PI
add mapped point i_pd[1] i_pd[1] -type PI PI
add mapped point i_pd[0] i_pd[0] -type PI PI
add mapped point i_ls i_ls -type PI PI
add mapped point i_rs i_rs -type PI PI

//output ports
add mapped point o_q[3] o_q[3] -type PO PO
add mapped point o_q[2] o_q[2] -type PO PO
add mapped point o_q[1] o_q[1] -type PO PO
add mapped point o_q[0] o_q[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point o_q[0]/q o_q_reg[0]/Q -type DFF DFF
add mapped point o_q[1]/q o_q_reg[1]/Q -type DFF DFF
add mapped point o_q[3]/q o_q_reg[3]/Q -type DFF DFF
add mapped point o_q[2]/q o_q_reg[2]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
