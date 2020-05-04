# 32-Bit-Floating-Point-Adder
## Architecture
![alt text](https://i.ibb.co/Twgp4kx/Screen-Shot-2020-05-04-at-7-39-56-PM.png)

## Objective
Design a floating point adder that takes two 32 bit single precision floating point input values that come serially with a time difference of 8 clock cycles between two inputs and stores the resultant value into eight RAMs. Perform the addition operation for 8 sets of input values.

## Algorithm
* We need to add inputs A and B to form Out. Out=A+B
* Here, A and B need to have the same exponents if they are to be added i.e EA=EB.
* EA and EB are fed to the 8 bit subtractor and the borrow if 0 shows A>B and B has to be right shifted.
* The exponent difference (EA-EB) provides us with a measure of the shift required in the lower exponent input.
* Right shift the mantissa of the lower exponent input by the exponent Difference. Thus, both the inputs have the same exponent as a result.
* The final mantissa is taken to be maximum of the exponents of the input and is further incremented depending on the carry of the adder.
* Depending on the carry output of the adder, the final mantissa is right shifted by 1 or 0;
* The final exponent and mantissa are thus calculated.


