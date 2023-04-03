`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LS
// Engineer: Mayank Trehan 
// 
// Create Date: 03.04.2023 00:01:03
// Design Name: 
// Module Name: Anode_Controller
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


module Anode_Controller(
                        input Clk_Refresh,
                        output reg [7:0] anode = 8'b1111_1111
                     );
reg [1:0] refresh_digit=0;
always@(posedge Clk_Refresh)
begin
    if (refresh_digit < 3) begin
        refresh_digit <= refresh_digit +1;
    end
    else
        refresh_digit <= 0;
           
end

always@(posedge Clk_Refresh)
begin
        case(refresh_digit)
        2'b00:
                anode = 8'b1111_1110;  ////// LS Digit Selected
        2'b01:
                anode = 8'b1111_1101;
        2'b10:
                anode = 8'b1111_1011;
        2'b11:
                anode = 8'b1111_0111; //////// MS Digit Selected 
        endcase
end
endmodule