`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:57 04/06/2019 
// Design Name: 
// Module Name:    Sub_Result 
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
module Sub_Result(

    input [7:0] A,
    input [7:0] B,
    output [7:0] Out,
	 output b
    );
	 
wire [7:0]d;
wire [7:0]d1;

Subtractor_8Bit S(A,B,d,b);
Complement2s C(d, d1);
assign Out=(b == 1'b1)?d1:d;
endmodule
