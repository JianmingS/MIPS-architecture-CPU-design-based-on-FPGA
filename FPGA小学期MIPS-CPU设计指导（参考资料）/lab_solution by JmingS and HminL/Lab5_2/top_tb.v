`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:11 07/09/2015
// Design Name:   top
// Module Name:   E:/JmingProjects/ISE/Lab5/top_tb.v
// Project Name:  Lab5
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

	// Inputs
	reg ClkIn;
	reg Rst;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.ClkIn(ClkIn), 
		.Rst(Rst)
	);

	initial begin
		// Initialize Inputs
		ClkIn = 0;
		Rst = 1;

		// Wait 100 ns for global reset to finish
      #10;
		Rst = 0;

	end
   always #2 ClkIn = !ClkIn;
endmodule

