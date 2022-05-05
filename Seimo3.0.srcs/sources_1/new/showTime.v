// showTime
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2022 04:51:25 PM
// Design Name: 
// Module Name: showTime
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
//showTime(enable_master, display_result_switch, ops[0], ops[1], ops[2], ops[3], 
  //      show_enable_master, show_display_result_switch, show_op0_add, show_op1_sub, show_op2_mult, show_op3_div);


module showTime(
input enable_master, welcome_screen_switch, display_result_switch,
         op0_add, op1_sub, op2_mult, op3_div, op4_power,
output reg show_enable_master, show_welcome_screen_switch, show_display_result_switch,
         show_op0_add, show_op1_sub, show_op2_mult, show_op3_div, show_op4_power
    );
    
    always@(*)
    begin
        show_enable_master <= enable_master; 
        show_display_result_switch <= display_result_switch;
        show_op0_add <= op0_add;
        show_op1_sub <= op1_sub;
        show_op2_mult <= op2_mult;
        show_op3_div <= op3_div;
        show_op4_power <= op4_power;
        show_welcome_screen_switch <= welcome_screen_switch; 
        
    end
endmodule