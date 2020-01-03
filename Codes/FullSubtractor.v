`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:42:38 04/06/2019 
// Design Name: 
// Module Name:    FullSubtractor 
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
module FullSubtractor(
    input A,
    input B,
    input Bin,
    output D,
    output Bout
    );
	 
wire w1,w2,w3,w4;

xor(w1,A,B);
xor(D,w1,Bin);

and(w2,~A,~B,Bin);
and(w3,A,~B,~Bin);
and(w4,~A,B,~Bin);
and(w5,A,B,Bin);

or(Bout,w2,w3,w4,w5);

endmodule

