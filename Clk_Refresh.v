`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LS
// Engineer: Mayank Trehan 
// 
// Create Date: 02.04.2023 23:56:05
// Design Name: 
// Module Name: Clk_2
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


module Clk_Refresh(
                input wire clk,
                output reg out_clk=0   
                        );
                        
integer counter_value = 0;

always@ (posedge clk)
begin 
        if (counter_value == 499)
        begin
            counter_value <= 0;
            out_clk <= ~out_clk;
        end
        else 
            counter_value = counter_value +1; 
end
endmodule
