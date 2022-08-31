`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:34:00 11/24/2021
// Design Name:   JK
// Module Name:   D:/szdl/JK/test.v
// Project Name:  JK
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JK
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg J;
	reg K;
	reg clk;

	// Outputs
	wire Q;
	wire Qb;

	// Instantiate the Unit Under Test (UUT)
	JK uut (
		.J(J), 
		.K(K), 
		.clk(clk), 
		.Q(Q), 
		.Qb(Qb)
	);
   always #50 clk = ~clk;
	initial begin
		// Initialize Inputs
		J = 0;
		K = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
      J = 1;
		K = 0;

		// Wait 100 ns for global reset to finish
		#100;
		J = 0;
		K = 1;

		// Wait 100 ns for global reset to finish
		#100;
		J = 1;
		K = 1;

		// Wait 100 ns for global reset to finish
		#100;
		J = 0;
		K = 1;

		// Wait 100 ns for global reset to finish
		#100;
		J = 1;
		K = 0;

		// Wait 100 ns for global reset to finish
		// Add stimulus here

	end

endmodule

