`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:09 11/24/2021 
// Design Name: 
// Module Name:    JK 
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
module JK(J,K,clk,Q,Qb);
	input J,K,clk;
	wire J,K,clk;
	output Q,Qb;
	reg Q;
	wire Qb;
	assign Qb=~Q;	
	always@(posedge clk)
	begin
		case({J,K})
			2'b00: Q<=Q;
			2'b01: Q<=1'b0;
			2'b10: Q<=1'b1;
			2'b11: Q<=~Q;
		endcase
	end

endmodule
