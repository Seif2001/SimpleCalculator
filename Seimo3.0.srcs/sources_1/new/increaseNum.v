//increaseNum
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 04:25:59 PM
// Design Name: 
// Module Name: increaseNum
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

//enable_master, reset, clk_debounce, buttons[0], ones_left_init
module increaseNum(
input enable_master, display_result_switch, reset, clk_debounce, button,
output reg[13:0]  number
    );
    always@(reset)begin
    if(reset)begin
    number=0;
    end
    end
    always@(posedge clk_debounce) begin
        if(enable_master &  ~display_result_switch) begin
            if(reset) number = 0;
            else if (number==9 & button) number = 0; 
            else if(button) number = number + 1;           
        end
        else if (~enable_master)
        begin
            number <= 0; 
        end
    end
endmodule