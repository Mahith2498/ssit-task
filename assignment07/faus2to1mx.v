`timescale 1ns / 1ps
// Create Date: 06/24/2025 11:54:51 PM
// Designer Name:KOTHAPALLI MAHITH VATHSAV 
// Module Name: faus2to1mx
// Project Name: FA using 2*1 MUX
module mux2to1(
input A,
input B,
input SEL,
output reg OUT
);
always@(*)begin
case(SEL)
1'b0 : OUT= A;
1'b1 : OUT= B;
default : OUT = 1'b0;
endcase
end
endmodule
module faus2to1mx(
input a,
input b,
input cin,
output sum,
output cout

    );
    wire x;
    wire y;
    wire x1;
    wire y1;
    assign x = a^b;
    assign y = ~(a^b);
    assign x1 = a&b;
    assign y1 = a|b;
    mux2to1 m0(.A(x), .B(y) , .SEL(cin) , .OUT(sum));
    mux2to1 m1(.A(x1), .B(y1) , .SEL(cin) , .OUT(cout));
    
    
    
    
endmodule
