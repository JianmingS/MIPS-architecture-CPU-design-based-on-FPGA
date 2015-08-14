`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:39:15 07/01/2015
// Design Name:   ALU
// Module Name:   E:/JmingProjects/ISE/Lab2/ALU_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [31:0] SrcA;
	reg [31:0] SrcB;
	reg [3:0] ALUCtr;

	// Outputs
	wire Zero;
	wire [31:0] ALURes;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.SrcA(SrcA), 
		.SrcB(SrcB), 
		.ALUCtr(ALUCtr), 
		.Zero(Zero), 
		.ALURes(ALURes)
	);

	initial begin
        
		// Add stimulus here
		// AND
		SrcA = 32'hf0f0ffff;
		SrcB = 32'h0000f0f0;
		ALUCtr = 0;
		// OR
		#10;
		ALUCtr = 4'b0001;
		// Add
		#10;
		ALUCtr = 4'b0010;
		// Sub
		#10;
		ALUCtr = 4'b0110;
		// Set on less than
		#10;
		ALUCtr = 4'b0111;
		// NOR
		#10;
		ALUCtr = 4'b1100;
		// Other situation
		#10;
		ALUCtr = 4'b1111;

	end
      
endmodule

