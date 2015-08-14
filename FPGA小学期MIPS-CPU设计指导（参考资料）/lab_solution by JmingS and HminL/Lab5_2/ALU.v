`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:38:31 07/01/2015 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] SrcA,
    input [31:0] SrcB,
    input [3:0] ALUCtr,
    output Zero,
    output reg[31:0] ALURes // ALU计算结果
    );
assign Zero = 0;
always @(SrcA or SrcB or ALUCtr)
begin 
	case(ALUCtr)	
		4'b0000: ALURes = SrcA & SrcB;
		4'b0001: ALURes = SrcA | SrcB;
		4'b0010: ALURes = SrcA + SrcB;
		4'b0011: ALURes = SrcA / SrcB;  // my div
		4'b0100: ALURes = SrcA * SrcB;  // my mul
		4'b0101: ALURes = (SrcB << SrcA);  // my : sllv (逻辑可变左移)
		4'b0110: ALURes = SrcA - SrcB;
		4'b0111: ALURes = SrcA < SrcB ? 1:0;
		4'b1000: ALURes = (SrcB >> SrcA);  // my : srav (逻辑可变右移)
		4'b1001: ALURes = (SrcA ^ SrcB);  // my : xor
		4'b1010: ALURes = {1'b0,SrcA} <{1'b0, SrcB}? 1:0;
		//4'b1011: ALURes = 
		4'b1100: ALURes = ~(SrcA | SrcB);
		default: ALURes = 32'h0;
	endcase
end

endmodule
