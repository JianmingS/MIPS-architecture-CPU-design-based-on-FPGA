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
	 input Rst
    //input [7:0] switch,
    //output reg [7:0] led
    );

wire Clk;
// PC
reg [31:0] PC = 32'hfffffffc;
/*
reg PCBranch;

reg PCPlus;
*/

// Control
wire [5:0] OpCode;
wire [5:0] Funct;
wire RegWriteForCtr;
wire RegDst;
wire ALUSrc;
wire [3:0] ALUControl;
wire Branch;
wire MemWrite;
wire MemtoReg;
wire MemRead;
wire Jump;

// Instruction
wire [31:0] ImemRdAddr;
wire [31:0] Instruction;
 
// Rigster
wire RegWriteForRegister;
wire [4:0] RegARdAddr;
wire [4:0] RegBRdAddr;
wire [4:0] RegWrAddr;  // A3
wire [31:0] RegWrData; // WD3
wire [31:0] RegARdData;
wire [31:0] RegBRdData;


// ALU
wire [31:0] SrcA;
wire [31:0] SrcB;
wire [31:0] ALURes;
wire [3:0] ALUCtr;
wire Zero;

// Data Memory
wire [31:0] DmemAddr; // 内存地址 A
wire DmemWrite; //WE
wire [31:0] DmemWrData;  // WD
wire [31:0] DmemRdData; // 从内存中读出的数据 RD
    
// SignExt
wire [15:0] inst16;
wire [31:0] SignImm;

	
Clk_gen Clock(
		.CLK_IN1(ClkIn),
		.RESET(RST),
		.CLK_OUT1(Clk),
		.LOCKED()
);

Ctr myCtr(
		.OpCode(OpCode),
		.Funct(Funct),
		.RegDst(RegDst),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWriteForCtr),
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.MemtoReg(MemtoReg),
		.Branch(Branch),
		.Jump(Jump),
		.ALUControl(ALUControl)
);

Instruction_memory myInstruction_memory(
		.Clk(Clk),
		.ImemRdAddr(ImemRdAddr),
		.Instruction(Instruction)
);

register myReg(
		.Clk(Clk),
		.RegARdAddr(RegARdAddr),
		.RegBRdAddr(RegBRdAddr),
		.RegWrAddr(RegWrAddr),
		.RegWrData(RegWrData),
		.RegWrite(RegWriteForRegister),
		.RegARdData(RegARdData),
		.RegBRdData(RegBRdData)
);



ALU myALU(
		.SrcA(SrcA),
		.SrcB(SrcB),
		.ALUCtr(ALUCtr),
		.Zero(Zero),
		.ALURes(ALURes)
);


Data_memory Data_memory(
		.Clk(Clk),
		.DmemAddr(DmemAddr),
		.DmemRdData(DmemRdData),
		.DmemWrite(DmemWrite),
		.DmemWrData(DmemWrData)
);

signext signext(
		.inst16(inst16),
		.SignImm(SignImm)
);


//assign led[7:0] = switch[7:0];
// CLk
assign Clk = ClkIn;

// PC
always @(posedge Clk) 
begin
	if (Branch&Zero) PC = (SignImm << 2) + PC + 4;
	else PC = PC + 4;
end

//assign PCPlus = PC + 4;

//assign PCBranch = (SignImm << 2) + PCPlus;

// Instruction input
assign ImemRdAddr = PC;

// Control input
assign OpCode = Instruction[31 : 26];
assign Funct = Instruction[5 : 0];

//Register File input
assign RegWriteForRegister = RegWriteForCtr;
assign RegARdAddr = Instruction[25:21];
assign RegBRdAddr = Instruction[20:16];
assign RegWrAddr = (RegDst == 1'b0)?Instruction[20:16]:Instruction[15:11];  // A3
assign RegWrData = (MemtoReg == 1'b0)?ALURes:DmemRdData;

// ALU
assign SrcA = RegARdData;
assign SrcB = (ALUSrc == 1'b0)?RegBRdData:SignImm;
assign ALUCtr = ALUControl;

// DataMemory
assign DmemAddr = ALURes;
assign DmemWrData =  RegBRdData;
assign DmemWrite = MemWrite;

// SignExt
assign inst16 = Instruction[15:0];

endmodule