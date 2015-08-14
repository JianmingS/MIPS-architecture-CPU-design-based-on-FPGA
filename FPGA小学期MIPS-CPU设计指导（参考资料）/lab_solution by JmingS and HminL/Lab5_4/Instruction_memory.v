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
00430004 // R[0] <= R[3]<<R[2] ans = 10d ¬ﬂº≠ø…±‰◊Û“∆
00430007 // R[0] <= R[3]>>R[2] ans = 2d ¬ﬂº≠ø…±‰”““∆
00430026 // R[0] <= R[3]^R[2] ans = 4d
24600007 // R[0] <= R[3] + 7  ans = 12d
3060000F // R[0] <= R[3] and F ans = 5d
348005aa // R[0] <= R[4] or 0x055a ans= 0x055ah
28600006 // R[0] <= R[3] < 6 ans = 1d
38400005 // R[0] <= R[2] ^ 5 ans = 4d
0082002b // R[0] <= R[4] < R[2] ans = 0d(u)
2c600006 // R[0] <= R[3] < 6 ans = 1d (u)
000300c0 // R[0] <= R[3] << 3 ans = 40d ¬ﬂº≠◊Û“∆
00030043 // R[0] <= R[3] >> 1 ans = 2d ¬ﬂº≠”““∆
004d0007 // R[0] <= R[13] >> R[2] ans = 0xffff8000h À„ ˝ø…±‰”““∆
00030043 // R[0] <= R[3] >> 1 ans = 0x2h À„ ˝”““∆
000d0083 // R[0] <= R[13] >> 2 ans = 0xffffc000h À„ ˝”““∆
01c20020 // R[0] <= R[14] + R[2] ans = 0x80000000h OverFlow = 1
22000001 // R[0] <= R[16] + 1 ans = 0x80000000h OverFlow = 1
01b00018 // R[0] <= R[13] * R[16] ans = ffff800000010000h //∑˚∫≈≥À
01b00019 // R[0] <= R[13] * R[16] ans = 7fff7fff00010000h //Œﬁ∑˚∫≈≥À
0232001a // R[0] <= R[17] / R[18] ans = 40000002h //∑˚∫≈≥˝
0232001b // R[0] <= R[17] / R[18] ans = 40000002h //Œﬁ∑˚∫≈≥˝
*/
// Instruction:
/*
LW		addu	subu	and	or		
slt	div 	add(∑˚∫≈º”)  sub 
addi addiu  Jump  mulu  divu
mult	sllv  srav	xor   ori
slti	xori  sltu  sltiu	sll
srl 	srlv	srav  sra 	beq 
bne   bgez	bgtz  blez	bltz				

*/
endmodule
