`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LS
// Engineer: Mayank Trehan
// 
// Create Date: 02.04.2023 23:55:01
// Design Name: 
// Module Name: Cathode_Controller
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


module Cathode_Controller(
                          input [3:0] ones,       		// gives information about ones place 	
		                  input [3:0] tens,      		// gives information about tens place
		                  input [3:0] hundreads,			// gives information about hundreads place
		                  input [3:0] thousands,
                          input [7:0] anode,
                          output reg [7:0] cathodes = 0
);

always@ (anode)

begin
        if (anode == 8'b1111_1110) begin
        case(ones)
        4'd0: 
                cathodes <= 8'b11000000;//////zero
        4'd1: 
                cathodes <= 8'b11111001;//////one
        4'd2: 
                cathodes <= 8'b10100100;//////two
        4'd3: 
                cathodes <= 8'b10110000;//////three
        4'd4: 
                cathodes <= 8'b10011001;//////four
        4'd5: 
                cathodes <= 8'b10010010;//////five
        4'd6: 
                cathodes <= 8'b10000010;//////six
        4'd7: 
                cathodes <= 8'b11111000;//////seven
        4'd8: 
                cathodes <= 8'b10000000;//////eight
        4'd9: 
                cathodes <= 8'b10010000;//////nine
        default: 
                cathodes <= 8'b11000000;////// koi bhi or case 
        endcase
        end
        
        else if (anode == 8'b1111_1101) begin
        case(tens)
        4'd0: 
                cathodes <= 8'b11000000;//////zero
        4'd1: 
                cathodes <= 8'b11111001;//////one
        4'd2: 
                cathodes <= 8'b10100100;//////two
        4'd3: 
                cathodes <= 8'b10110000;//////three
        4'd4: 
                cathodes <= 8'b10011001;//////four
        4'd5: 
                cathodes <= 8'b10010010;//////five
        4'd6: 
                cathodes <= 8'b10000010;//////six
        4'd7: 
                cathodes <= 8'b11111000;//////seven
        4'd8: 
                cathodes <= 8'b10000000;//////eight
        4'd9: 
                cathodes <= 8'b10010000;//////nine
        default: 
                cathodes <= 8'b11000000;////// koi bhi or case 
        endcase
        end
        
        if (anode == 48'b1111_1011) begin
        case(hundreads)
        4'd0: 
                cathodes <= 8'b11000000;//////zero
        4'd1: 
                cathodes <= 8'b11111001;//////one
        4'd2: 
                cathodes <= 8'b10100100;//////two
        4'd3: 
                cathodes <= 8'b10110000;//////three
        4'd4: 
                cathodes <= 8'b10011001;//////four
        4'd5: 
                cathodes <= 8'b10010010;//////five
        4'd6: 
                cathodes <= 8'b10000010;//////six
        4'd7: 
                cathodes <= 8'b11111000;//////seven
        4'd8: 
                cathodes <= 8'b10000000;//////eight
        4'd9: 
                cathodes <= 8'b10010000;//////nine
        default: 
                cathodes <= 8'b11000000;////// koi bhi or case 
        endcase
        end
        
        if (anode == 8'b1111_0111) begin
        case(thousands)
        4'd0: 
                cathodes <= 8'b11000000;//////zero
        4'd1: 
                cathodes <= 8'b11111001;//////one
        4'd2: 
                cathodes <= 8'b10100100;//////two
        4'd3: 
                cathodes <= 8'b10110000;//////three
        4'd4: 
                cathodes <= 8'b10011001;//////four
        4'd5: 
                cathodes <= 8'b10010010;//////five
        4'd6: 
                cathodes <= 8'b10000010;//////six
        4'd7: 
                cathodes <= 8'b11111000;//////seven
        4'd8: 
                cathodes <= 8'b10000000;//////eight
        4'd9: 
                cathodes <= 8'b10010000;//////nine
        default: 
                cathodes <= 8'b11000000;////// koi bhi or case 
        endcase
        end
end
endmodule
