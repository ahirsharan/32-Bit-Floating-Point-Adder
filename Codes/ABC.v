module FloatingPointAdder(
    input [31:0] A,
    input [31:0] B,
    output [31:0] Out
    );
wire [22:0]MA;
wire [22:0]MB;
wire [7:0]EA;
wire [7:0]EB;

//Procuring the value of Mantissa MA and MB
assign MA[22:0]=A[22:0];
assign MB[22:0]=B[22:0];

//Procuring the value of Exponents EA and EB
assign EA = A[30:23];	
assign EB = B[30:23];	

//Calculation of  the magnitude of the subtraction of the expoenents 
//This will be used to decide the input given to right shifter
wire [7:0]Modulo; 
wire Borrow;		
Sub_Result subtract(EA,EB,Modulo,Borrow);
//The input with lower exponent value passed to the right shifter unit	

//Multiplexer 1 required for the right shifter unit
//Multiplexer 2 required for the 24 Bit adder
wire [23:0]mux1out;	
wire [23:0]mux2out;	
Mux24 rightshiftertop(MB,MA,Borrow,mux1out);
Mux24 addertop(MA,MB,Borrow,mux2out);


wire [23:0]outshift;			
//control input for the barrel_shifter procured from the output of subtraction operation(Max 5 bits required)
wire [4:0]shiftdiff;	
assign shiftdiff = Modulo[4:0]; 
BarrelShifter rightshift(mux1out,outshift,shiftdiff);

//24 Bit Adder
wire [23:0]adderout;	
wire cout;					
Adder_24Bit A1(mux2out,outshift,adderout,cout);

//The maximum of the both inputs' exponents is calculated and used as final exponent if cout = 0, otherwise incremented
wire [7:0]maxexp ; 
Mux_8 expmax(EA,EB,Borrow,maxexp); 

//Calculation of the exponent of the output after observing the carry operation of the 24 bit adder
wire [7:0]expfinal;	
ControlledIncrementor finexp(cout,maxexp,expfinal);

wire [23:0]finalM;
		
//Calculating the selection lines for final shifting operation	
wire [4:0]select;		
assign select[4:1] = 4'b0000;
assign select[0] = cout;

BarrelShifter finalshifter(adderout,finalM,select);

assign Out[31] = 0;//Positive Number Addition
assign Out[30:23] = expfinal;
assign Out[22:0] = finalM[22:0];

endmodule