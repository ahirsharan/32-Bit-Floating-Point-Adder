`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:47:12 04/06/2019 
// Design Name: 
// Module Name:    Mux 
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
module Mux(
    input In0,
    input In1,
    input S,
	 output Out
    );
	 
wire w1,w2; 
 
and(w1,~S,In0);
and(w2,S,In1);
or (Out,w1,w2);	 

endmodule

