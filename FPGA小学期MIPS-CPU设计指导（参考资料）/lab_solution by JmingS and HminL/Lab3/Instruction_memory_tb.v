`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:00:47 07/01/2015
// Design Name:   Instruction_memory
// Module Name:   E:/JmingProjects/ISE/Lab3/Instruction_memory_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Instruction_memory_tb;

	// Inputs
	reg [31:0] ImemRdAddr;

	// Outputs
	wire [31:0] Instruction;

	// Instantiate the Unit Under Test (UUT)
	Instruction_memory uut (
		.ImemRdAddr(ImemRdAddr), 
		.Instruction(Instruction)
	);
	reg[7:0] index;
	initial begin
		// Initialize Inputs
		ImemRdAddr = 0;	
		index = 0;
		// Wait 10 ns for global reset to finish
		#10;
      for (index = 0; index < 3; index = index + 1)
			begin
			#10 ImemRdAddr <= index;
			end
		// Add stimulus here
		
	end
      
endmodule

