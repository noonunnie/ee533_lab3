`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:39:11 01/31/2026 
// Design Name: 
// Module Name:    busmerge 
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
module busmerge(
    input [47:0] da,
    input [63:0] db,
    output [111:0] q
	 assign q = {da,db}
    );
endmodule
