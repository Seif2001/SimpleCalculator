// main 
`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 09:58:25 PM
// Design Name: 
// Module Name: main
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

/*
features added to the project
1- enable_master for the whole project (done)
2- you cannot increase numbers while viewing the results (done)
3- one and only one operation is working at a time (done)
4- reset the button to restart entering numbers from scratch. (done)
5- LEDs turn on while switching on any button or switch to confir the process and that the switch is working properly (done) 
6- rounding the answer when dividing 2 numbers (done)
7- representing error when dividing by 0 in a better way. (done)
8- performing power operation. (done)
9- representing welcome statement at the beginnning of the project.(done)


what we need to add
- representing welcome statement at the beginnning of the project.
- MANAGING INCREASING THE NUMBERS USING RISING EDGE.
- 
- 
- 
*/

module main(

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
);
// clocks modified
wire clk_anodes, clk_welcome;

// all digits to represent (welcome screen, input digits, output digits)
wire[13:0] ones_left_init, tens_left_init, ones_right_init, tens_right_init;
wire[7:0] ones_left_init_BCD, tens_left_init_BCD, ones_right_init_BCD, tens_right_init_BCD;

wire[13:0] units_final, tens_final, hundreds_final,thousands_final;
wire[7:0] units_final_BCD, tens_final_BCD, hundreds_final_BCD,thousands_final_BCD;

wire[7:0] welcome_units, welcome_tens, welcome_hundreds, welcome_thousands;

//wire[13:0] digit_left, digit_right; 
wire [13:0] dl, dr; wire[13:0]dresult;

wire[13:0] digit_final; reg[13:0] df;
wire digit_final_condition;



clockDivider #(2) Ckleeko1 (clk_100,reset , clk_anodes);
clockDivider #(1) Ckleeko2  (clk_100,reset, clk_debounce); // 0.1 sec
clockDivider #(20000000) Ckleeko3  (clk_100, clk_welcome); // 0.5 sec

welcomeWelcome ww(clk_welcome, enable_master, welcome_screen_switch, display_result_switch,
                welcome_units, welcome_tens, welcome_hundreds, welcome_thousands);

//Everytime the buttons are pushed the correspondign digits increases (debounce in mind)
increaseNum ones1(enable_master, display_result_switch, reset, clk_debounce, buttons[0], ones_right_init); 
increaseNum tens1(enable_master, display_result_switch, reset, clk_debounce, buttons[1], tens_right_init);
increaseNum ones2(enable_master, display_result_switch, reset, clk_debounce, buttons[2], ones_left_init);
increaseNum tens2(enable_master, display_result_switch, reset, clk_debounce, buttons[3], tens_left_init);

//Combining each two digits everytime they change
assign dl = (tens_left_init*10) + ones_left_init; 
assign dr = (tens_right_init*10) + ones_right_init;
//combineNums left(ones_left_init, tens_left_init, digit_left);
//combineNums right(ones_right_init, tens_right_init, digit_right); 

//    assign dresult = dl + dr; 

operate op(clk_100, reset, ops[0], ops[1], ops[2], ops[3], ops[4], dr, dl, dresult, digit_final_condition);

separateResult SR(clk_100, dresult, units_final, tens_final, hundreds_final, thousands_final);

initial begin
df = digit_final;
end

// digit before BCD_convert, decimal point, negative sign, digit after BCD_conversion.  
BCD_converter b0(ones_left_init, 1, 0, ones_left_init_BCD); // the only one which has a decimal point. 
BCD_converter b1(tens_left_init, 0, 0, tens_left_init_BCD);
BCD_converter b2(ones_right_init, 0, 0, ones_right_init_BCD);
BCD_converter b3(tens_right_init, 0, 0, tens_right_init_BCD);
BCD_converter b4(units_final, 0, 0, units_final_BCD);
BCD_converter b5(tens_final, 0, 0, tens_final_BCD);
BCD_converter b6(hundreds_final, 0, digit_final_condition, hundreds_final_BCD);
BCD_converter b7(thousands_final, 0, 0, thousands_final_BCD);


display d1(enable_master, welcome_screen_switch, clk_anodes,reset , enable_anodes, display_result_switch,
     welcome_units, welcome_tens, welcome_hundreds, welcome_thousands,
     ones_left_init_BCD, tens_left_init_BCD, ones_right_init_BCD, tens_right_init_BCD,
     units_final_BCD, tens_final_BCD, hundreds_final_BCD, thousands_final_BCD, result);






showTime s1(enable_master, welcome_screen_switch, display_result_switch, ops[0], ops[1], ops[2], ops[3], ops[4],
        show_enable_master, show_welcome_screen_switch, show_display_result_switch, 
        show_op0_add, show_op1_sub, show_op2_mult, show_op3_div, show_op4_power);

endmodule