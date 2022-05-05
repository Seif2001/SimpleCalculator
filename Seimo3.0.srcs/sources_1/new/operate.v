// operate
`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2022 04:38:27 PM
// Design Name: 
// Module Name: operate
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

//ops[0], ops[1], ops[2], ops[3], digit_left, digit_right, digit_final, digit_final_condition)

module operate(
input clock, reset,
input add, sub, mult, div, power,
input[13:0] num1, num2,
output reg[13:0] result,
output reg result_sign
);
integer i;  
reg[13:0] rem; 
 
//initial begin
//    result_sign = 0;
//end
 //n = num1 ;
    always@(reset) begin 
    if(reset)begin
    result_sign = 0;
    rem = 0;
    end
    end
    always@(posedge clock) begin
    
        if (add & ~sub & ~mult & ~div & ~power)
        begin
            //result = num2;
            //result = result + num1;
            result = num2 + num1;  
            result_sign = 0; 
        end
        
        else if(~add & sub & ~mult & ~div & ~power)
        begin
            
            if (num2 < num1)
            begin
                result = num1 - num2;
                result_sign = 1;
                
            end 
            else if (num2 >= num1)
            begin
                result = num2 - num1; 
                result_sign = 0;
            end
             
        end
                
        else if(~add & ~sub & mult & ~div & ~power)
        begin
            result = num1 *num2; 
            result_sign = 0; 
        end
        
        else if(~add & ~sub & ~mult & div & ~power)
        begin
            if (num1 ==0)
            begin
                result = 0; 
                result_sign = 1; 
            end
            else if (num1>num2 & num1<(num2/2))
            begin
                result = 0; 
                result_sign = 0;  
            end
            else if (num1>num2 & num1<(num2/2))
            begin
                result = 1; 
                result_sign = 0;  
            end
            else if (num2>=num1)
            begin
                rem = num2 % num1; 
                if (rem < num1/2)
                begin
                    result = num2 /num1;
                    result_sign = 0;
                end
                else if (rem >= num1/2)
                    result = (num2 / num1)+1; 
                    result_sign = 0; 
            end 
        end
        else if (~add & ~sub & ~mult & ~div & power)
        begin
            result = 1; 
            for (i = 0; i < 2; i= i+1)
            begin
                result = result * num2;
                result_sign = 0; 
            end
            
        end
        else 
        begin
            result = 0; 
            result_sign = 0; 
        end
    end
endmodule