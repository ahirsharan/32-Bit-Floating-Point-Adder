`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:00 04/06/2019 
// Design Name: 
// Module Name:    Mux24 
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
module Mux24(

    input [22:0] A,
    input [22:0] B,
    input S,
	 output [23:0] Out
    );
	 
genvar i;

generate
 begin
  for(i=0;i<23;i = i + 1)
    Mux M(A[i],B[i],S,Out[i]);
  end
endgenerate

assign Out[23]=1'b1;

endmodule
