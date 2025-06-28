`timescale 1ns / 1ps
 // Create Date: 06/25/2025 12:42:15 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: hsus2to1mx
// Project Name: HS using 2 to 1 MUX
module mux2to1(
input A,
input B,
input SEL,
output reg OUT
);
always@(*)begin
case(SEL)
1'b0 : OUT = A;
1'b1 : OUT = B;
default : OUT = 1'b0;
endcase
end
endmodule 
module hsus2to1mx(
input a,
input b,
output diff,
output borr

    );
    mux2to1 m0(.A(b), .B(~b) , .SEL(a) , .OUT(diff));
    mux2to1 m1(.A(b) , .B(~b) , .SEL(a) , .OUT(borr));
endmodule
