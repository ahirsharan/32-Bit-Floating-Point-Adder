`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:02:18 04/06/2019
// Design Name:   FloatingPointAdder
// Module Name:   /home/ise/Desktop/Projects/VLSI1/Test.v
// Project Name:  VLSI1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FloatingPointAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;

	// Outputs
	wire [31:0] Out;

	// Instantiate the Unit Under Test (UUT)
	FloatingPointAdder uut (
		.A(A), 
		.B(B), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 200 ns for global reset to finish
		#200;
       A=32'b01000001001101100000000000000001;//11.375
		 B=32'b01000000101100100000010000011011;//5.56300
		 //SUM=16.938
		 $monitor("Output:  %b ",Out);
		 
		 
		#200 
		 A=32'b01000010011011111110101110000101;//59.979
		 B=32'b01000000110100000000000000000000;//6.5
		 //SUM=66.479
		 $monitor("Output:  %b ",Out);
		 
		 
		#200 
		 A=32'b01000100011110100010000000000000;//1000.5
		 B=32'b01000100011101010110100111011011;//981.654
		 //SUM=1982.1539
		 $monitor("Output:  %b ",Out);
		 
		 
		#200
		 A=32'b01000100000010010111111100101011;//549.987
		 B=32'b01000000101100100000010000011001;//5.563
		 //SUM=555.499
		 $monitor("Output:  %b ",Out);
		  
		
	end
      
endmodule

