`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:50:23 04/06/2019 
// Design Name: 
// Module Name:    Mux_8 
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
module Mux_8(
    input [7:0] A,
    input [7:0] B,
    input C,
    output [7:0] Out
    );
	 
 genvar j;
 
 generate 
  begin
   for(j=0;j<=7;j=j+1)
    begin
     Mux M(A[j],B[j],C,Out[j]);
    end
   end
endgenerate

endmodule
