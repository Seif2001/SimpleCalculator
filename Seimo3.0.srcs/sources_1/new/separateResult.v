// separateResult
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 04:57:56 PM
// Design Name: 
// Module Name: separateResult
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

//(digit_final, units_final, tens_final, hundreds_final, thousands_final
module separateResult(
input clock,
input[13:0] input_num,
output reg[13:0] units, tens , hundreds, thousands 
    );
    
reg[13:0] num;

/*initial begin
    units = 0; 
    tens = 0; 
    hundreds = 0; 
    thousands = 0;
end
*/
    always@(clock) begin
    
    
        num <= input_num;
        
        units = num %10;
        num = num / 10;
        tens = num %10;
        num = num / 10;
        hundreds = num %10;
        num = num / 10;
        thousands = num ;
        /*
            if(num < 10) units = num;
            
            
            else if (num < 100) begin 
                units = num %10;
                num = num / 10;
                tens = num;
            end
            
            else if (num < 1000) begin 
                units = num %10;
                num = num / 10;
                tens = num%10;
                num = num / 10;
                hundreds = num;
            end
            
            else begin 
                units = num %10;
                num = num / 10;
                tens = num %10;
                num = num / 10;
                hundreds = num %10;
                num = num / 10;
                thousands = num ;
            end
        
    
        */
        
        end
endmodule