`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2022 12:20:42 AM
// Design Name: 
// Module Name: mainTest
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//
/*module increaseNum(
input enable_master, display_result_switch, reset, clk_debounce, button,
output reg[13:0]  number
    );*/
    
   /* module main(
    
  input [3:0] buttons,
   input [4:0] ops,
   input enable_master, welcome_screen_switch, reset, clk_100, display_result_switch,
   output [7:0] result,
   output [3:0] enable_anodes,
   
   output show_enable_master,
   output show_welcome_screen_switch,
   output show_display_result_switch,
   output show_op0_add,
   output show_op1_sub,
   output show_op2_mult,
   output show_op3_div, 
   output show_op4_power,
   output clk_debounce
     */
module mainTest;

reg [3:0] buttons;
reg [4:0] ops;
reg enable_master, reset, clk_100, display_result_switch;
reg welcome_screen_switch;
wire [7:0] result;
wire [3:0] enable_anodes;

wire show_enable_master, show_display_result_switch, show_op0_add,show_op1_sub, show_op2_mult, show_op3_div, clk_debounce, show_op4_power, negat;
//wire [13:0] ones_left_init, tens_left_init, ones_right_init, tens_right_init, units_final, tens_final, hundreds_final,thousands_final;
main test(.buttons(buttons), .ops(ops), .enable_master(enable_master),.welcome_screen_switch(welcome_screen_switch), .reset(reset), .clk_100(clk_100), .display_result_switch(display_result_switch),
.result(result), .enable_anodes(enable_anodes), .show_enable_master(show_enable_master), .show_display_result_switch(show_display_result_switch),
.show_op0_add(show_op0_add), .show_op1_sub(show_op1_sub), .show_op2_mult(show_op2_mult), .show_op3_div(show_op3_div),.show_op4_power(show_op4_power),.clk_debounce(clk_debounce));


initial begin
welcome_screen_switch =1;
display_result_switch = 0;
enable_master = 1;
reset = 0;
buttons = 4'b0000;
ops = 4'b00000;
clk_100 = 0;

forever begin
#1 clk_100 = ~clk_100;
end
end



initial begin 
#2
reset = 1;
#1
reset = 0;

end

integer i, j ,k ,m, n,o,p;
initial begin
#3
for(i = 0; i<9; i = i+1) begin
    #5
    buttons[0] = 1;
    #5
    buttons[0] = 0;
end
for(j = 0; j<9; j = j+1) begin
    #5

    buttons[1] = 1;
    #5
    buttons[1] = 0;
end
for(k = 0; k<9; k = k+1) begin   
     #5

    buttons[2] = 1;
    #5
    buttons[2] = 0;
end
for(m = 0; m<9; m = m+1) begin
    #5
    buttons[3] = 1;
    #5
    buttons[3] = 0;
end

#24
display_result_switch = 1;
ops[2] = 1;
#24
ops[2] = 0;
ops[0] = 1;
#24
ops[0] = 0;
ops[1] = 1;
#24
ops[1] = 0;
ops[3] = 1;
#24
ops[3] = 0;
display_result_switch = 0;
for(n = 0; n<9; n = n+1) begin
    #5
    buttons[0] = 1;
    #5
    buttons[0] = 0;
end
// 99 - 98
#24
display_result_switch = 1;
ops[0] = 0;
ops[1] = 1;
#24
ops[1] = 0;
// 99/98
#24
ops[1] = 0;
ops[3] = 1;
#24
ops[3] = 0;
#24
display_result_switch = 0;
#24
for(p = 0; p<3; p = p+1) begin
    #5
    buttons[2] = 1;
    #5
    buttons[2] = 0;
end
for(o = 0; o<3; o = o+1) begin
    #5
    buttons[3] = 1;
    #5
    buttons[3] = 0;
end
#24

ops[1] = 1;
#24 
ops[1] = 0;
display_result_switch = 1;
ops[3] = 1;
#24
ops[3] = 0;
ops[2] = 1;
#24
ops[2] = 0;
display_result_switch = 0;
#25
buttons[0] = 1;
#5
buttons[0] = 0;
#5
buttons[0] = 1;
#5
buttons[0] = 0;
#5
buttons[1] = 1;
#5
buttons[1] = 0;
#5
buttons[1] = 1;
#5
buttons[1] = 0;

#24 
//ops[1] = 0;
display_result_switch = 1;
ops[3] = 1;
#24
ops[3] = 0;



end

endmodule
