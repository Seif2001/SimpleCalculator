// welcomeWelcome
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2022 07:13:22 PM
// Design Name: 
// Module Name: welcomeWelcome
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
//(clk_welcome, enable_master, welcome_screen_switch, display_result_switch,
// welcome_units, welcome_tens, welcome_hundreds, welcome_thousands);

module welcomeWelcome(
input clk_welcome, enable_master, welcome_screen_switch, display_result_switch,
output reg [7:0] wrr, wr, wl, wll
    );

// H = 8'b10010001;
// I = 8'b10011111;
// - = 8'b11111101;

reg[2:0] bkh; 

    always@(posedge clk_welcome)
    begin
        bkh = bkh+1;
        if (bkh == 0)
        begin
            wrr = 8'b11111101;
            wr = 8'b11111101;
            wl = 8'b11111101;
            wll = 8'b11111101;
        end
        
        else if (bkh ==1)
        begin
            wrr = 8'b10010001;
            wr = 8'b11111101;
            wl = 8'b11111101;
            wll = 8'b11111101;            
        end
        
        else if (bkh ==2)
        begin
            wrr = 8'b10011111;
            wr = 8'b10010001;
            wl = 8'b11111101;
            wll = 8'b11111101;
        end

        else if (bkh ==3)
        begin
            wrr = 8'b11111101;
            wr = 8'b10011111;
            wl = 8'b10010001;
            wll = 8'b11111101;
        end        

        else if (bkh ==4)
        begin
            wrr = 8'b11111101;
            wr = 8'b11111101;
            wl = 8'b10011111;
            wll = 8'b10010001;
        end
        
        else if (bkh ==5)
        begin
            wrr = 8'b11111101;
            wr = 8'b11111101;
            wl = 8'b11111101;
            wll = 8'b10011111;
        end        

        else if (bkh ==6)
        begin
            wrr = 8'b11111101;
            wr = 8'b11111101;
            wl = 8'b11111101;
            wll = 8'b11111101;
        end
        
        else if (bkh ==7)
        begin
            wrr = 8'b11111101;
            wr = 8'b11111101;
            wl = 8'b11111101;
            wll = 8'b11111101;
        end 
        
        /*                       
        case(bkh)
        
            0: wrr = 8'b11111101; //-
            0: wr = 8'b11111101; //-
            0: wl = 8'b11111101; //-
            0: wll = 8'b11111101; //-
        
            1: wrr = 8'b10010001; //H
            1: wr = 8'b11111101; //-
            1: wl = 8'b11111101; //-
            1: wll = 8'b11111101; //-
            
            2: wrr = 8'b10011111; //I
            2: wr = 8'b10010001; //H
            2: wl = 8'b11111101; //-
            2: wll = 8'b11111101; //-
            
            3: wrr = 8'b11111101; //-
            3: wr = 8'b10011111; //I
            3: wl = 8'b10010001; //H
            3: wll = 8'b11111101; //-
            
            4: wrr = 8'b11111101; //-
            4: wr = 8'b11111101; //-
            4: wl = 8'b10011111; //I
            4: wll = 8'b10010001; //H
            
            5: wrr = 8'b11111101; //-
            5: wr = 8'b11111101; //-
            5: wl = 8'b11111101; //-
            5: wll = 8'b10011111; //I
            
            6: wrr = 8'b11111101; //-
            6: wr = 8'b11111101; //-
            6: wl = 8'b11111101; //-
            6: wll = 8'b11111101; //-

            7: wrr = 8'b11111101; //-
            7: wr = 8'b11111101; //-
            7: wl = 8'b11111101; //-
            7: wll = 8'b11111101; //-
            
            */
            
            /*   
            1: begin 
                wrr = 8'b10010001;
                wr = 8'b11111101;
                wl = 8'b11111101;
                wll = 8'b11111101;
                end
                  
            2: begin
                wrr = 8'b10011111;
                wr = 8'b10010001;
                wl = 8'b11111101;
                wll = 8'b11111101;
                end
                     
            3: begin
                wrr = 8'b11111101;
                wr = 8'b10011111;
                wl = 8'b10010001;
                wll = 8'b11111101;
                end                     

            4: begin
                wrr = 8'b11111101;
                wr = 8'b11111101;
                wl = 8'b10011111;
                wll = 8'b10010001;
               end

            5: begin
                wrr = 8'b11111101;
                wr = 8'b11111101;
                wl = 8'b11111101;
                wll = 8'b10011111;
                end
               
            default:   begin
                        wrr = 8'b11111101;
                        wr = 8'b11111101;
                        wl = 8'b11111101;
                        wll = 8'b11111101;
                        end
            
        endcase    
        */
    end
    
endmodule