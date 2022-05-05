// BCD_converter
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 09:49:10 PM
// Design Name: 
// Module Name: BCD_converter
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

// (ones_left_init, ones_left_init_BCD);
module BCD_converter(
input[13:0] innum,
input condition_decimal, condition_negative,
output reg[7:0] outnum

    );

always@(innum)
begin
    if (condition_negative)
        outnum = 8'b11111101; 
    else if (~condition_decimal)
    begin
        case(innum)
            0 : outnum = 8'b0000_0011 ;
            1 : outnum = 8'b1001_1111 ;
            2 : outnum = 8'b0010_0101 ;
            3 : outnum = 8'b0000_1101 ;
            4 : outnum = 8'b1001_1001 ;
            5 : outnum = 8'b0100_1001 ;
            6 : outnum = 8'b0100_0001 ;
            7 : outnum = 8'b0001_1111 ;
            8 : outnum = 8'b0000_0001 ;
            9 : outnum = 8'b0000_1001 ;
            default : outnum = 8'b1111_1111;
        endcase
    end
    else if (condition_decimal)
    begin
        case(innum)
            0 : outnum = 8'b0000_0010 ;
            1 : outnum = 8'b1001_1110 ;
            2 : outnum = 8'b0010_0100 ;
            3 : outnum = 8'b0000_1100 ;
            4 : outnum = 8'b1001_1000 ;
            5 : outnum = 8'b0100_1000 ;
            6 : outnum = 8'b0100_0000 ;
            7 : outnum = 8'b0001_1110 ;
            8 : outnum = 8'b0000_0000 ;
            9 : outnum = 8'b0000_1000 ;
            default : outnum = 8'b1111_1111;
        endcase
    end
    
end

    
endmodule