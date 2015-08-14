`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:31:18 07/02/2015
// Design Name:   register
// Module Name:   E:/JmingProjects/ISE/Lab3/register_tb.v
// Project Name:  Lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_tb;

	// Inputs
	reg Clk;
	reg [4:0] RegARdAddr;
	reg [4:0] RegBRdAddr;
	reg [4:0] RegWrAddr;
	reg [31:0] RegWrData;
	reg RegWrite;

	// Outputs
	wire [31:0] RegARdData;
	wire [31:0] RegBRdData;
	//reg [31:0] regFile[0:31];

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.Clk(Clk), 
		.RegARdAddr(RegARdAddr), 
		.RegBRdAddr(RegBRdAddr), 
		.RegWrAddr(RegWrAddr), 
		.RegWrData(RegWrData), 
		.RegWrite(RegWrite), 
		.RegARdData(RegARdData), 
		.RegBRdData(RegBRdData)
	);
	reg[7:0] index;
	initial begin
		// Initialize Inputs
		index = 0;
		Clk = 0;
		RegARdAddr = 0;
		RegBRdAddr = 0;
		RegWrAddr = 0;
		RegWrData = 0;
		RegWrite = 1;
		
		// Wait 10 ns for global reset to finish
		#10;
		for (index = 0; index <= 7; index = index + 1)
			begin
				#10;
				RegWrAddr <= index;
				RegWrData <= index;
			end
		RegWrite = 0;
		for (index = 0; index <= 6; index = index + 1)
			begin
			#10;
			RegARdAddr <= index;
			RegBRdAddr <= index;
			end
			
        
		// Add stimulus here

	 end
always #2 Clk = !Clk;
      
endmodule

