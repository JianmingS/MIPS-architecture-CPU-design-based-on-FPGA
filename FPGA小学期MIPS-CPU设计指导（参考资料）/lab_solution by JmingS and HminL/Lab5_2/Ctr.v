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
			// R-I
			// addiu
			6'b001001:
			begin
				RegDstD = 1;
				ALUSrcD = 1;
				MemtoRegD = 0;
				RegWriteD = 1;
				MemWriteD = 0;
				BranchD = 0;
				ALUOp = 2'b10;
			end
			
			//andi
			6'b001100:
			begin
				RegDstD = 1;
				ALUSrcD = 1;
				MemtoRegD = 0;
				RegWriteD = 1;
				MemWriteD = 0;
				BranchD = 0;
				ALUOp = 2'b10;
			end
			
			//ori
			6'b001101:
			begin
				RegDstD = 1;
				ALUSrcD = 1;
				MemtoRegD = 0;
				RegWriteD = 1;
				MemWriteD = 0;
				BranchD = 0;
				ALUOp = 2'b10;
			end
			
			//slti
			6'b001010:
			begin
				RegDstD = 1;
				ALUSrcD = 1;
				MemtoRegD = 0;
				RegWriteD = 1;
				MemWriteD = 0;
				BranchD = 0;
				ALUOp = 2'b10;
			end
			
			//sltiu
			6'b001011:
			begin
				RegDstD = 1;
				ALUSrcD = 1;
				MemtoRegD = 0;
				RegWriteD = 1;
				MemWriteD = 0;
				BranchD = 0;
				ALUOp = 2'b10;
			end
			
			//xori
			6'b001110:
			begin
				RegDstD = 1;
				ALUSrcD = 1;
				MemtoRegD = 0;
				RegWriteD = 1;
				MemWriteD = 0;
				BranchD = 0;
				ALUOp = 2'b10;
			end		
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
	// ALUOp = 10 R-R        
	 always @(ALUOp or Funct) 
	 begin
		casex({OpCode ,ALUOp, Funct}) 
			14'b10001100xxxxxx: ALUControlD = 4'b0010; // LW : add
			14'b00010001xxxxxx: ALUControlD = 4'b0110; // SW : substract
			14'b0000001x100000: ALUControlD = 4'b0010; // R-type : add
			14'b0000001x100010: ALUControlD = 4'b0110; // R-type : substract
			14'b0000001x100100: ALUControlD = 4'b0000; // R-type : AND
			14'b0000001x100101: ALUControlD = 4'b0001;	// R-type : OR
			14'b0000001x101010: ALUControlD = 4'b0111;	// R-type : slt
			14'b0000001x101010: ALUControlD = 4'b1010;   //my: sltu
			14'b0000001x011010: ALUControlD = 4'b0011; // my : div
			14'b0000001x011000: ALUControlD = 4'b0100; // my : mul 
			14'b0000001x000100: ALUControlD = 4'b0101; // my : sllv (Âß¼­¿É±ä×óÒÆ)
			14'b0000001x000111: ALUControlD = 4'b1000; // my : srav (Âß¼­¿É±äÓÒÒÆ)
			14'b0000001x100110: ALUControlD = 4'b1001; // my : xor
			14'b0010011xxxxxxx: ALUControlD = 4'b0010; // my : addiu
			14'b0011001xxxxxxx: ALUControlD = 4'b0000; // my : andi
			14'b0011011xxxxxxx: ALUControlD = 4'b0001; // my : ori
			14'b0010101xxxxxxx: ALUControlD = 4'b0111; // my : slti
			14'b0010111xxxxxxx: ALUControlD = 4'b1010; // my : sltiu
			14'b0011101xxxxxxx: ALUControlD = 4'b1001; // my : xori
			14'b0000001x000000: ALUControlD = 4'b0101; // my : sll (Âß¼­×óÒÆ)
			14'b0000001x000010: ALUControlD = 4'b1000; // my : srl (Âß¼­ÓÒÒÆ)
			default: ALUControlD = 4'b0000;
		endcase
	end
endmodule
