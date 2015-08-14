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
    output reg RegDst,
    output reg ALUSrc,
    output reg RegWrite,	
    output reg MemWrite,
    output reg MemRead,
    output reg MemtoReg,
    output reg Branch,
    output reg Jump,
    output reg [3:0] ALUControl
    );
	 reg[1:0] ALUOp;
	 always @(OpCode) 
	 begin
		case(OpCode) 
			// R-format
			6'b000000:
			begin
				RegDst = 1;
				ALUSrc = 0;
				MemtoReg = 0;
				RegWrite = 1;
				MemRead = 0;
				MemWrite = 0;
				Branch = 0;
				ALUOp = 2'b10;
				Jump = 0;
			end
			// lw
			6'b100011:
			begin
				RegDst = 0;
				ALUSrc = 1;
				MemtoReg = 1;
				RegWrite = 1;
				MemRead = 1;
				MemWrite = 0;
				Branch = 0;
				ALUOp = 2'b00;
				Jump = 0;
			end
			// sw
			6'b101011:
			begin
				RegDst = 1'bx;
				ALUSrc = 1;
				MemtoReg = 1'bx;
				RegWrite = 0;
				MemRead = 0;
				MemWrite = 1;
				Branch = 0;
				ALUOp = 2'b00;
				Jump = 0;
			end
			// beq
			6'b000100:
			begin
				RegDst = 1'bx;
				ALUSrc = 0;
				MemtoReg = 1'bx;
				RegWrite = 0;
				MemRead = 0;
				MemWrite = 0;
				Branch = 1;
				ALUOp = 2'b01;
				Jump = 0;
			end
		endcase
	end
			
	 always @(ALUOp or Funct) 
	 begin
		casex({ALUOp, Funct}) 
			8'b00xxxxxx: ALUControl = 4'b0010;
			8'b01xxxxxx: ALUControl = 4'b0110;
			8'b1xxx0000: ALUControl = 4'b0010;
			8'b1xxx0010: ALUControl = 4'b0110;
			8'b1xxx0100: ALUControl = 4'b0000;
			8'b1xxx0101: ALUControl = 4'b0001;
			8'b1xxx1010: ALUControl = 4'b0111;
			default: ALUControl = 4'b0000;
		endcase
	end

endmodule
