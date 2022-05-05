`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 04:02:07 PM
// Design Name: 
// Module Name: clockDivider
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


module clockDivider #(parameter n = 1000)(
    input clk_100, reset,
    output reg new_clk
    );
    //wire reset;
    //assign reset = 0; 
    reg[31:0] counter;
    always@(reset) begin 
        if(reset) begin
            new_clk = 0;
            counter = 0;
        end
    end
    always@(clk_100) begin
        //if (reset)
        //counter <=0; 
        if(counter == n) begin
            counter <= 0; 
            new_clk <= ~new_clk;
        end
        else counter<= counter + 1;
    end
endmodule