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

	// Inputs
	reg [7:0] switch;

	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.switch(switch), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		switch = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

