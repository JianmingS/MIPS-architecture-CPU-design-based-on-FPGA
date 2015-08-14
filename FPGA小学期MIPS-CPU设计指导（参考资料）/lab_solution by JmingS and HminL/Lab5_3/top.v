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

// ------------------Fetch-------------
// PC
reg [31:0] PCF = 32'hfffffffc;
wire [31:0] PCPlus4F;

reg [31:0] PCPlus4F_Reg;
// Instruction
wire [31:0] ImemRdAddrF;
wire [31:0] InstructionF;
reg [31:0] InstructionF_Reg;
// -------------------Decode------------
wire [31:0] InstructionD;
// Control
wire [5:0] OpCode;
wire [5:0] Funct;
wire RegWriteForCtrD;
wire MemtoRegD;
wire MemWriteD;
wire BranchD;
wire [4:0] ALUControlD;
wire ALUSrcD;
wire RegDstD;

reg RegWriteForCtrD_Reg;
reg MemtoRegD_Reg;
reg MemWriteD_Reg;
reg BranchD_Reg;
reg [4:0] ALUControlD_Reg;
reg ALUSrcD_Reg;
reg RegDstD_Reg;
// Rigster
wire RegWriteForRegisterD;
wire [4:0] RegARdAddrD;
wire [4:0] RegBRdAddrD;
wire [4:0] RegWrAddrD;  // A3
wire [31:0] RegWrDataD; // WD3
wire [31:0] RegARdDataD;
wire [31:0] RegBRdDataD;

reg [31:0] RegARdDataD_Reg;
reg [31:0] RegBRdDataD_Reg;
// SignExt
wire [15:0] inst16D;
wire [31:0] SignImmD;
reg [31:0] SignImmD_Reg;
// else
wire [31:0] PCPlus4D;
reg [31:0] PCPlus4D_Reg;
reg [4:0] RtE_Reg;
reg [4:0] RdE_Reg;

//------------------Execute-------------
//Control
wire RegWriteForCtrE;
wire MemtoRegE;
wire MemWriteE;
wire BranchE;
wire [4:0] ALUControlE;
wire ALUSrcE;
wire RegDstE;

reg RegWriteForCtrE_Reg;
reg MemtoRegE_Reg;
reg MemWriteE_Reg;
reg BranchE_Reg;
reg [4:0] ALUControlE_Reg;
reg ALUSrcE_Reg;
reg RegDstE_Reg;
// ALU
wire [31:0] SrcAE;
wire [31:0] SrcBE;
wire [4:0] ALUCtrE;
wire ZeroE;
wire [31:0] ALUResE;
reg [31:0] ALUResE_Reg;
reg ZeroE_Reg;
wire OverFlowE;
reg OverFlowE_Reg;
// Data Memory
wire [31:0] WriteDataE;
reg [31:0] WriteDataE_Reg;
// else
wire [4:0] RtE;
wire [4:0] RdE;
reg [4:0] WriteRegE_Reg;

wire [31:0] SignImmE;
wire [31:0] PCPlus4E;
reg [31:0] PCBranchE_Reg;

//------------------Memory-------------
//Control
wire RegWriteForCtrM;
wire MemtoRegM;
wire MemWriteM;
wire BranchM;

reg RegWriteForCtrM_Reg;
reg MemtoRegM_Reg;
reg MemWriteM_Reg;
reg BranchM_Reg;
// ALU
wire ZeroM;
// Data Memory
wire [31:0] DmemAddrM; // A
reg [31:0] DmemAddrM_Reg; 
wire [31:0] DmemWrDataM; // WD	 
wire DmemWriteM;

wire [31:0] DmemRdDataM; // RD
reg [31:0] DmemRdDataM_Reg; // RD
// else 
wire [4:0] WriteRegM;
reg [4:0] WriteRegM_Reg;
wire [31:0] PCBranchM;


//------------------Writeback-------------
//ControlW
wire RegWriteForCtrW;
wire MemtoRegW;
//else
// Data Memory
wire [31:0] ALUOutW; // AW
wire [31:0] ReadDataW; // RD
wire [31:0] WriteRegW;
 

Clk_gen Clock(
		.CLK_IN1(ClkIn),
		.RESET(RST),
		.CLK_OUT1(Clk),
		.LOCKED()
);

Instruction_memory myInstruction_memory(
		.Clk(Clk),
		.ImemRdAddr(ImemRdAddrF),
		.Instruction(InstructionF)
);

Ctr myCtr(
		.OpCode(OpCode),
		.Funct(Funct),
		.RegWriteD(RegWriteForCtrD),
		.MemtoRegD(MemtoRegD),
		.MemWriteD(MemWriteD),
		.BranchD(BranchD),
		.ALUControlD(ALUControlD),
		.ALUSrcD(ALUSrcD),
		.RegDstD(RegDstD)
);

ALU myALU(
		.SrcA(SrcAE),
		.SrcB(SrcBE),
		.ALUCtr(ALUCtrE),
		.Zero(ZeroE),
		.ALURes(ALUResE),
		.OverFlow(OverFlowE)
);

Data_memory Data_memory(
		.Clk(Clk),
		.DmemAddr(DmemAddrM),
		.DmemWrData(DmemWrDataM),
		.DmemWrite(DmemWriteM),
		.DmemRdData(DmemRdDataM)
);

register myReg(
		.Clk(Clk),
		.RegARdAddr(RegARdAddrD),
		.RegBRdAddr(RegBRdAddrD),
		.RegWrAddr(RegWrAddrD),
		.RegWrData(RegWrDataD),
		.RegWrite(RegWriteForRegisterD),
		.RegARdData(RegARdDataD),
		.RegBRdData(RegBRdDataD)
);

signext signext(
		.inst16(inst16D),
		.SignImm(SignImmD)
);


//assign led[7:0] = switch[7:0];
// CLk
assign Clk = ClkIn;


reg [4:0] Room;
reg [31:0] RoomForNum[0:31];
reg [31:0] INF = 32'd1000000000;
reg [31:0] Index = 32'h0;
reg [31:0] Sum = 32'h0;
reg [31:0] JudgeForBreak = 32'h0;
reg [31:0] aaa = 32'h0;
// ------------------Fetch-------------
// PC
reg [31:0] i;
always @(posedge Clk) 
begin
	if (JudgeForBreak == 0)
	begin
		PCPlus4F_Reg = PCPlus4F;
		if (BranchM&ZeroM) PCF = PCBranchM;
		else PCF = PCPlus4F;
		InstructionF_Reg = InstructionF;
		if (InstructionF[31:26] == 6'b000010) 
		begin 
			PCF = {6'h0,InstructionF[25:0]};
			PCF = PCF << 2;
		end
		if (InstructionF[31:26] == 6'b100011)
		begin
			Room[Index] = InstructionF[20:16];
			RoomForNum[Index] = PCF;
			Index = Index + 1;
		end
	end
	
	if (InstructionF[31:26] == 6'b000000 && InstructionF[5:0] == 6'b100000)
	begin
		
		for (i = 0; i < Index; i = i + 1)
		begin
			aaa = (PCF - RoomForNum[i])>>2;
			if (((PCF - RoomForNum[i])>>2) <= 3 && InstructionF[25:21] == Room[i])
			begin
				//aaa = 1;
				Sum = Sum + 1;
				JudgeForBreak = 1;
			end
		end
	end
	if (Sum == 2) 
	begin
		Sum = 0;
		JudgeForBreak = 0;
	end
end
//PC
assign PCPlus4F = PCF + 4;
// Instruction input
assign ImemRdAddrF = (JudgeForBreak)? 0 : PCF;
// -----------------Decode--------------
assign PCPlus4D = PCPlus4F_Reg;
// Control input
assign InstructionD = InstructionF_Reg;
assign OpCode = InstructionD[31 : 26];
assign Funct = InstructionD[5 : 0];
//Register File input
assign RegARdAddrD = InstructionD[25:21];
assign RegBRdAddrD = InstructionD[20:16];
assign RegWrAddrD = 	WriteRegW;
assign RegWrDataD = (MemtoRegW)? ReadDataW : ALUOutW;
assign RegWriteForRegisterD = RegWriteForCtrW;
assign inst16D = InstructionD[15 : 0];
//// For 立即数移位
reg [31:0] SrcAInput_RegD;
reg Judge_RegD;
/////////////////

always @(posedge Clk) 
begin
	RegARdDataD_Reg = RegARdDataD;
	RegBRdDataD_Reg = RegBRdDataD;
	RtE_Reg = InstructionD[20:16];
	RdE_Reg = InstructionD[15:11];
	SignImmD_Reg = SignImmD;
	PCPlus4D_Reg = PCPlus4D;
	// Control
	RegWriteForCtrD_Reg = RegWriteForCtrD;
	MemtoRegD_Reg = MemtoRegD;
	MemWriteD_Reg = MemWriteD;
	BranchD_Reg = BranchD;
	ALUControlD_Reg = ALUControlD;
	ALUSrcD_Reg = ALUSrcD;
	RegDstD_Reg = RegDstD;
	// For 立即数移位
	Judge_RegD = (InstructionD[31 : 26] == 6'b000000 && (InstructionD[5 : 0] == 6'b000000 || InstructionD[5 : 0] == 6'b000010 || InstructionD[5 : 0] == 6'b000011) )? 1'b1 : 1'b0;
	SrcAInput_RegD = {27'h0, InstructionD[10:6]};
end
// -----------------Execute--------------
assign PCPlus4E = PCPlus4D_Reg;
// Control
assign RegWriteForCtrE = RegWriteForCtrD_Reg;
assign MemtoRegE = MemtoRegD_Reg;
assign MemWriteE = MemWriteD_Reg;
assign BranchE = BranchD_Reg;
assign ALUControlE = ALUControlD_Reg;
assign ALUSrcE = ALUSrcD_Reg;
assign RegDstE = RegDstD_Reg;


// ALU
assign SrcAE = (JudgeE)? SrcAInput_RegD : RegARdDataD_Reg;	
assign SrcBE = (ALUSrcE)?SignImmE:RegBRdDataD_Reg;
assign ALUCtrE = ALUControlE;
assign WriteDataE = RegBRdDataD_Reg;

// else
assign RtE = RtE_Reg;
assign RdE = RdE_Reg;
assign SignImmE = SignImmD_Reg;

// 
wire JudgeE;
assign JudgeE = Judge_RegD;

always @(posedge Clk) 
begin
	// Control
	RegWriteForCtrE_Reg = RegWriteForCtrE;
	MemtoRegE_Reg = MemtoRegE;
	MemWriteE_Reg = MemWriteE;
	BranchE_Reg = BranchE;
	ALUControlE_Reg = ALUControlE;
	ALUSrcE_Reg = ALUSrcE;
	RegDstE_Reg = RegDstE;
	// ALU
	ZeroE_Reg = ZeroE;
	ALUResE_Reg = ALUResE;
	WriteDataE_Reg = WriteDataE;
	OverFlowE_Reg = OverFlowE;
	// else
	WriteRegE_Reg = (RegDstE)? RdE : RtE;
	PCBranchE_Reg = (SignImmE<<2) + PCPlus4E;
end

// -----------------Memory--------------
assign PCBranchM = PCBranchE_Reg;
// Control
assign RegWriteForCtrM = RegWriteForCtrE_Reg;
assign MemtoRegM = MemtoRegE_Reg;
assign MemWriteM = MemWriteE_Reg;
assign BranchM = BranchE_Reg;
assign ZeroM = ZeroE_Reg;
// Data_Memory
assign DmemAddrM = ALUResE_Reg;
assign DmemWrDataM = WriteDataE_Reg;
assign DmemWriteM = MemWriteM;
// else
assign WriteRegM = WriteRegE_Reg;

always @(posedge Clk) 
begin
	// Control
	RegWriteForCtrM_Reg = RegWriteForCtrM;
	MemtoRegM_Reg = MemtoRegM;
	MemWriteM_Reg = MemWriteM;
	BranchM_Reg = BranchM;
	// Data_Memory
	DmemAddrM_Reg = DmemAddrM;
	DmemRdDataM_Reg = DmemRdDataM;
	//else 
	WriteRegM_Reg = WriteRegM;
end

// -----------------Writeback--------------
assign RegWriteForCtrW = RegWriteForCtrM_Reg;
assign MemtoRegW = MemtoRegM_Reg;
assign ALUOutW = DmemAddrM_Reg; // AW
assign ReadDataW = DmemRdDataM_Reg; // RD
assign WriteRegW = WriteRegM_Reg;
endmodule