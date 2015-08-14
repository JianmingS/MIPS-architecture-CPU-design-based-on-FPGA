`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:49:40 07/01/2015
// Design Name:   Ctr
// Module Name:   E:/JmingProjects/ISE/Lab2/Ctr_tb.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ctr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Ctr_tb;

	// Inputs
	reg [5:0] OpCode;
	reg [5:0] Funct;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire RegWrite;
	wire MemWrite;
	wire MemRead;
	wire MemtoReg;
	wire Branch;
	wire Jump;
	wire [3:0] ALUControl;

	// Instantiate the Unit Under Test (UUT)
	Ctr uut (
		.OpCode(OpCode), 
		.Funct(Funct), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.RegWrite(RegWrite), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.MemtoReg(MemtoReg), 
		.Branch(Branch), 
		.Jump(Jump), 
		.ALUControl(ALUControl)
	);

	initial begin
		// Add stimulus here
		// R-type Add
		OpCode = 6'b000000;
		Funct = 6'b100000;
		// R-type Subtract
		#10
		OpCode = 6'b000000;
		Funct = 6'b100010;
		// LW
		#10
		OpCode = 6'b100011;
		Funct = 6'bxxxxxx;
		// SW
		#10
		OpCode = 6'b101011;
		Funct = 6'bxxxxxx;
		// BEQ
		OpCode = 6'b000100;
		Funct = 6'bxxxxxx;
		// R-type OR
		OpCode = 6'b000000;
		Funct = 6'b100101;
		// R-type set on less than
		OpCode = 6'b000000;
		Funct = 6'b101010;
		// Jump
		#10
		OpCode = 6'b000010;
		
	end
      
endmodule

