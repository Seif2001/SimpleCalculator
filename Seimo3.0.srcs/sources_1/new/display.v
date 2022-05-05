// display 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2022 10:32:55 PM
// Design Name: 
// Module Name: display
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

// display(enable_master, clk_anodes, enable_anodes, display_result_switch, ones_left_init_BCD, 
// tens_left_init_BCD, ones_right_init_BCD, tens_right_init_BCD, units_final_BCD, tens_final_BCD, 
// hundreds_final_BCD, thousands_final_BCD, result);
module display(
input enable_master, welcome_screen_switch, clk_anodes, reset,
output reg[3:0] enable_anodes,
input display_result_switch, 

input [7:0] wrr,
input [7:0] wr,
input [7:0] wl,
input [7:0] wll,

input [7:0] ones_left_init_BCD,
input [7:0] tens_left_init_BCD,
input [7:0] ones_right_init_BCD,
input [7:0] tens_right_init_BCD,

input [7:0] units_final_BCD,
input [7:0] tens_final_BCD,
input [7:0] hundreds_final_BCD,
input [7:0] thousands_final_BCD,

output reg[7:0] result

    );
reg [1:0] bkh;
wire [7:0] welnums [3:0];
wire [7:0] innums [3:0];
wire [7:0] outnums [3:0]; 
always@(posedge reset) begin
    if(reset) begin
        result = 8'b11111111;
        enable_anodes = 4'b1110;
        bkh =0;
    end
    
end
assign welnums[0] =  wrr;
assign welnums[1] =  wr;
assign welnums[2] =  wl;
assign welnums[3] =  wll;

assign innums[0] =  ones_right_init_BCD;
assign innums[1] =  tens_right_init_BCD;
assign innums[2] =  ones_left_init_BCD;
assign innums[3] =  tens_left_init_BCD;

assign outnums[0] =  units_final_BCD;
assign outnums[1] =  tens_final_BCD;
assign outnums[2] =  hundreds_final_BCD;
assign outnums[3] =  thousands_final_BCD;


always@(posedge clk_anodes)
begin
 
 bkh = bkh +1; 
     
    if (enable_master & ~welcome_screen_switch)
    begin   
        result = welnums[bkh]; 
        enable_anodes <= 4'b1111- (1 << bkh);   
    end
    else if (enable_master & display_result_switch & welcome_screen_switch)
    begin
        result = outnums[bkh]; 
        enable_anodes <= 4'b1111- (1 << bkh);      
    end
    else if (enable_master & ~display_result_switch & welcome_screen_switch)
    begin
        result = innums[bkh]; 
        enable_anodes <= 4'b1111- (1 << bkh);  
    end
    else if (~enable_master) 
    begin
        enable_anodes <= 4'b1111;
    end
    
end

endmodule