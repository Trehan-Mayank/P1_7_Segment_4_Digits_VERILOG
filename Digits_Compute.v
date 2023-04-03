`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LS
// Engineer: Mayank Trehan
// 
// Create Date: 02.04.2023 23:52:40
// Design Name: 
// Module Name: Digits_Compute
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


module Digits_Compute(
        input clk,
		input reset,
		input [7:0] Data,
		output reg [3:0] ones,       		// gives information about ones place 	
		output reg [3:0] tens,      		// gives information about tens place
		output reg [3:0] hundreads,			// gives information about hundreads place
		output reg [3:0] thousands			// gives information about thousands place
);
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
integer ones_compute = 0;
integer tens_compute = 0;
integer hundreads_compute = 0;

///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
always @(posedge clk or posedge reset) begin

if(reset)
	begin
		hundreads <= 0;
		tens <= 0;
		ones <= 0;
	end
	
	
else begin
	if(0 <= Data && Data < 10) begin
		ones = Data;
		tens <= 0;
		hundreads <= 0;
		thousands <= 0;
		end
		
		
	else if(10 <= Data && Data < 100) begin
		tens_compute = Data/10;
		ones_compute = Data - (tens_compute *10);
		tens = tens_compute;
		ones = ones_compute;
		hundreads <= 0;
		thousands <= 0;
		end
	
	
	else if(100 <= Data && Data < 1000) begin
		hundreads_compute = Data/100;
		tens_compute = ((Data - (hundreads_compute *100))/10);
		ones_compute = (Data - (hundreads_compute *100) - (tens_compute *10));
		tens = tens_compute;
		ones = ones_compute;
		hundreads = hundreads_compute;
		end
	end
end    
endmodule