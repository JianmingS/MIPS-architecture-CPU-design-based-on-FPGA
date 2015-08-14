`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:51:45 07/01/2015 
// Design Name: 
// Module Name:    Instruction_memory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Instruction_memory(
	 input Clk,
    input [31:0] ImemRdAddr,
    output reg[31:0] Instruction
    );
	 reg[31:0] InstMem[0:255];//memory space for storing instructions
	 //initial the instruction and data memory initial 
	 initial
	 begin
		$readmemh("instruction", InstMem, 8'h0);
	 end
		
	 //always @(posedge Clk)	
	 always @(ImemRdAddr)
	 begin
		Instruction <= InstMem[ImemRdAddr>>2];
	 end

// my
/*
00a7001a // R[0] <= R[5]/R[7] ans = 6d
00830018 // R[0] <= R[4]*R[3] ans = 40d
00430004 // R[0] <= R[3]<<R[2] ans = 10d
00430007 // R[0] <= R[3]>>R[2] ans = 2d
00430026 // R[0] <= R[3]^R[2] ans = 4d
*/
// Instruction:
/*
LW		add	sub	and	or		
slt	beq	div 	mul	sllv  
srav	xor
*/
endmodule
