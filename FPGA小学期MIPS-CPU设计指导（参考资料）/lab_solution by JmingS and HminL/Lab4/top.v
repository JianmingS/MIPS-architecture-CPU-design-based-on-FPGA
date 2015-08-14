`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:16 07/02/2015 
// Design Name: 
// Module Name:    top 
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
module top(
	 input ClkIn,
	 input Rst,
    input [7:0] Switch,
    output [7:0] Led
    );
wire Clk;
wire RegDst;
wire ALUSrc;
wire MemToReg;
wire RegWrite;
wire MemRead;
wire MemWrite;
wire Branch;
wire Jump;

wire [5:0] Funct;
wire [3:0] ALUCtr;
wire Zero;

wire [4:0] RegARdAddr;
wire [4:0] RegBRdAddr;
wire [4:0] RegWrAddr;
wire [31:0] RegWrData;
wire [31:0] RegARdData;
wire [31:0] RegBRdData;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              

//assign led[7:0] = switch[7:0];
Clk_gen Clock(
		.CLK_IN1(ClkIn),
		.RESET(RST),
		.CLK_OUT1(Clk),
		.LOCKED()
);

endmodule
