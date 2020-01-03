`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:25:47 04/06/2019 
// Design Name: 
// Module Name:    Adder24Bit 
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
module Adder_24Bit(
    input [23:0] A,
    input [23:0] B,
    output [23:0] Out,
    output Cout
    );
	 
 wire [23:0] Cin;
 HalfAdder H1(A[0],B[0],Out[0],Cin[0]);
 
 genvar j;
 generate 
  begin
   for(j=1;j<=23;j=j+1)
    begin
     FullAdder F1(A[j],B[j],Cin[j-1],Out[j],Cin[j]);
    end
  end
 assign Cout = Cin[23];
endgenerate

endmodule
