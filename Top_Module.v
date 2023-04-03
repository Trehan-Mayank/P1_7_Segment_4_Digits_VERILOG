`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: LS
// Engineer: Mayank Trehan
// 
// Create Date: 03.04.2023 00:25:50
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
                    input clk,
                    input reset,
                    input [7:0] Data,
                    output [7:0] anode,             //// Tells which Digit to Activate
                    output [7:0] cathodes           //// Describes Characters and Numbers when a particular Digit is switched ON 
                  );
                  
wire [3:0] ones,tens,hundreads,thousands;
wire clk_Refresh;		                  
Digits_Compute Block0(
                    clk,
                    reset,
                    Data,
                    ones,       		        // gives information about ones place 	
                    tens,      		            // gives information about tens place
                    hundreads,		        	// gives information about hundreads place
                    thousands		         	// gives information about thousands place
);

Clk_Refresh Block1(
                    clk,
                    clk_Refresh   
                        );
                       
Anode_Controller Block2(
                        clk_Refresh,
                        anode
                     );
                     
Cathode_Controller Block3(
                          ones,       		    // gives information about ones place 	
		                  tens,      		    // gives information about tens place
		                  hundreads,			// gives information about hundreads place
		                  thousands,
                          anode,
                          cathodes
);

endmodule
