`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:07:11 07/03/2015
// Design Name:   top
// Module Name:   E:/JmingProjects/ISE/Lab4_1/top_tb.v
// Project Name:  Lab4_1
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
	reg [7:0] switch;

	// Outputs
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.ClkIn(ClkIn), 
		.Rst(Rst),
		.switch(switch), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		ClkIn = 0;
		Rst = 0;
		switch = 0;
		#20;
		Rst = 1;
		// Wait 100 ns for global reset to finish
		#80;
		Rst = 0;
        
		// Add stimulus here

	end
	always #5 ClkIn = !ClkIn;
      
endmodule

