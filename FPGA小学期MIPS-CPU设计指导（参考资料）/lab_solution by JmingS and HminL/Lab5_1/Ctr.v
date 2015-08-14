`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:50 07/01/2015 
// Design Name: 
// Module Name:    Ctr 
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
module Ctr(
    input [5:0] OpCode,
    input [5:0] Funct,
	 output reg RegWriteD,
	 output reg MemtoRegD,
	 output reg MemWriteD,
	 output reg BranchD,
	 output reg [3:0] ALUControlD,
	 output reg ALUSrcD,
    output reg RegDstD
    );
	 reg[1:0] ALUOp;
	 always @(OpCode) 
	 begin
		case(OpCode) 
			// R-format
			6'b000000:
			begin
				RegDstD = 1;
				ALUSrcD = 0;
				MemtoRegD = 0;
				RegWriteD = 1;
				MemWriteD = 0;
				BranchD = 0;
				ALUOp = 2'b10;
			end
			// lw
			6'b100011:
			begin
				RegDstD = 0;
				ALUSrcD = 1;	
				MemtoRegD = 1;
				RegWriteD = 1;
				MemWriteD = 0;
				BranchD = 0;
				ALUOp = 2'b00;
			end
			// sw
			6'b101011:
			begin
				RegDstD = 1'bx;
				ALUSrcD = 1;
				MemtoRegD = 1'bx;
				RegWriteD = 0;
				MemWriteD = 1;
				BranchD = 0;
				ALUOp = 2'b00;
			end
			// beq
			6'b000100:
			begin
				RegDstD = 1'bx;
				ALUSrcD = 0;
				MemtoRegD = 1'bx;
				RegWriteD = 0;
				MemWriteD = 0;
				BranchD = 1;
				ALUOp = 2'b01;
			end
		endcase
	end
	
	// ALUOp = 10 R-R
	//         
	 always @(ALUOp or Funct) 
	 begin
		casex({ALUOp, Funct}) 
			8'b00xxxxxx: ALUControlD = 4'b0010; // LW : add
			8'b01xxxxxx: ALUControlD = 4'b0110; // SW : substract
			8'b1x100000: ALUControlD = 4'b0010; // R-type : add
			8'b1x100010: ALUControlD = 4'b0110; // R-type : substract
			8'b1x100100: ALUControlD = 4'b0000; // R-type : AND
			8'b1x100101: ALUControlD = 4'b0001;	// R-type : OR
			8'b1x101010: ALUControlD = 4'b0111;	// R-type : set on less  than
			8'b1x011010: ALUControlD = 4'b0011; // my : div
			8'b1x011000: ALUControlD = 4'b0100; // my : mul 
			8'b1x000100: ALUControlD = 4'b0101; // my : sllv (Âß¼­¿É±ä×óÒÆ)
			8'b1x000111: ALUControlD = 4'b1000; // my : srav (Âß¼­¿É±äÓÒÒÆ)
			8'b1x100110: ALUControlD = 4'b1001; // my : xor
			default: ALUControlD = 4'b0000;
		endcase
	end
endmodule
