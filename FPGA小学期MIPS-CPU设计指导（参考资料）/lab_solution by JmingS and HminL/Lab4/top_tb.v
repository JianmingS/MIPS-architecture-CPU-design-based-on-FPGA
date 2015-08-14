`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:35:48 07/02/2015
// Design Name:   top
// Module Name:   E:/JmingProjects/ISE/Lab1/top_tb.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tb;

	wire ClkIn;

	// Instantiate the Unit Under Test (UUT)
	top uut (
			.ClkIn(ClkIn),
			.Rst(Rst),
			.Led(Led)
	);

	initial begin
		// Initialize Inputs
		ClkIn = 0;
		Rst = 0;
		Switch = 0;
		#20;
		Rst = 1;
		#80;
		Rst = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		
	end
   always #5 ClkIn = !ClkIn;
endmodule

