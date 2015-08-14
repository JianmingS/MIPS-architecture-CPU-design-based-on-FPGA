`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:58:40 07/01/2015
// Design Name:   Data_memory
// Module Name:   E:/JmingProjects/ISE/Lab3/Data_memory_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Data_memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Data_memory_tb;

	// Inputs
	reg Clk;
	reg [31:0] DmemAddr;
	reg DmemWrite;
	reg [31:0] DmemWrData;

	// Outputs
	wire [31:0] DmemRdData;

	// Instantiate the Unit Under Test (UUT)
	Data_memory uut (
		.Clk(Clk), 
		.DmemAddr(DmemAddr), 
		.DmemRdData(DmemRdData), 
		.DmemWrite(DmemWrite), 
		.DmemWrData(DmemWrData)
	);
	reg[7:0] index;
	initial begin
		// Initialize Inputs
		Clk = 0;
		DmemAddr = 0;
		DmemWrite = 1;  // 写入内存
		DmemWrData = 0;

		// write data into memory
		// DataMem[0:6] = {0, 1, 2, 3, 4, 5, 6}
		for (index = 0; index <= 7; index = index + 1) 
			begin 
			#10
			DmemAddr <= index;
			DmemWrData <= index;
			end
		// read data from memory
		DmemWrite = 0; 	// 从内存读
		for (index = 0; index <= 7; index = index + 1)
			begin
			#10
			DmemAddr <= index;
			end
	end
// Clock Generator
always #2 Clk = !Clk;

endmodule

