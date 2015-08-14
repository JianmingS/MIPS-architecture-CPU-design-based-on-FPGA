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
	 output reg [4:0] ALUControlD,
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
			//addi
			6'b001000:
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
			
			//
			
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
			//bne
			6'b000101:
			begin
				RegDstD = 1'bx;
				ALUSrcD = 0;
				MemtoRegD = 1'bx;
				RegWriteD = 0;
				MemWriteD = 0;
				BranchD = 1;
				ALUOp = 2'b01;
			end
			
			//bgez
			6'b000001:
			begin
				RegDstD = 1'bx;
				ALUSrcD = 0;
				MemtoRegD = 1'bx;
				RegWriteD = 0;
				MemWriteD = 0;
				BranchD = 1;
				ALUOp = 2'b01;
			end
			
			//bgtz
			6'b000111:
			begin
				RegDstD = 1'bx;
				ALUSrcD = 0;
				MemtoRegD = 1'bx;
				RegWriteD = 0;
				MemWriteD = 0;
				BranchD = 1;
				ALUOp = 2'b01;
			end
			
			//blez
			6'b000110:
			begin
				RegDstD = 1'bx;
				ALUSrcD = 0;
				MemtoRegD = 1'bx;
				RegWriteD = 0;
				MemWriteD = 0;
				BranchD = 1;
				ALUOp = 2'b01;
			end
			
			//bltz
			6'b010001:
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
			14'b10001100xxxxxx: ALUControlD = 5'b00010; // LW : add
			14'b00010001xxxxxx: ALUControlD = 5'b00110; // SW : substract beq
			14'b00010101xxxxxx: ALUControlD = 5'b01101; // bne
			14'b00000101xxxxxx: ALUControlD = 5'b01110; // bgez
			14'b00011101xxxxxx: ALUControlD = 5'b01111; // bgtz
			14'b00011001xxxxxx: ALUControlD = 5'b10000; // blez
			14'b01000101xxxxxx: ALUControlD = 5'b10001; // bltz
			14'b0000001x100001: ALUControlD = 5'b00010; // R-type : addu
			14'b0000001x100011: ALUControlD = 5'b00110; // R-type : subu
			14'b0000001x100100: ALUControlD = 5'b00000; // R-type : AND
			14'b0000001x100101: ALUControlD = 5'b00001; // R-type : OR
			14'b0000001x101010: ALUControlD = 5'b00111; // R-type : slt
			14'b0000001x101010: ALUControlD = 5'b01010; // my: sltu
			14'b0000001x011010: ALUControlD = 5'b00011; // my : div
			14'b0000001x011000: ALUControlD = 5'b00100; // my : mul 
			14'b0000001x000100: ALUControlD = 5'b00101; // my : sllv (¬ﬂº≠ø…±‰◊Û“∆)
			14'b0000001x000110: ALUControlD = 5'b01000; // my : srlv (¬ﬂº≠ø…±‰”““∆)
			14'b0000001x100110: ALUControlD = 5'b01001; // my : xor
			14'b0010011xxxxxxx: ALUControlD = 5'b00010; // my : addiu
			14'b0011001xxxxxxx: ALUControlD = 5'b00000; // my : andi
			14'b0011011xxxxxxx: ALUControlD = 5'b00001; // my : ori
			14'b0010101xxxxxxx: ALUControlD = 5'b00111; // my : slti
			14'b0010111xxxxxxx: ALUControlD = 5'b01010; // my : sltiu
			14'b0011101xxxxxxx: ALUControlD = 5'b01001; // my : xori
			14'b0000001x000000: ALUControlD = 5'b00101; // my : sll (¬ﬂº≠◊Û“∆)
			14'b0000001x000010: ALUControlD = 5'b01000; // my : srl (¬ﬂº≠”““∆)
			14'b0000001x000111: ALUControlD = 5'b01011; // my : srav (À„ ıø…±‰”““∆)
			14'b0000001x000011: ALUControlD = 5'b01011; // my : sra £®À„ ˝”““∆£©
			14'b0000001x100000: ALUControlD = 5'b10010; // my : add
			14'b0000001x100010: ALUControlD = 5'b10011; // my : sub
			14'b0010001xxxxxxx: ALUControlD = 5'b10010; // my : addi
			14'b0000001x011011: ALUControlD = 5'b10100; // my : divu
			14'b0000001x011001: ALUControlD = 5'b10101; // my : mulu
			default: ALUControlD = 5'b00000;
		endcase
	end
endmodule
