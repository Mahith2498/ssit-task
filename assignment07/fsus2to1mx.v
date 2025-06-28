`timescale 1ns / 1ps
 // Create Date: 06/25/2025 02:02:23 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: fsus2to1mx
// Project Name: FS using 2*1 MUX
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
module fsus2to1mx(
input a,
input b,
input bin,
output diff,
output borr

    );
    wire x;
    wire y;
    wire x1;
    wire y1;
    wire y2;
    assign y2 = a&(~b);
    assign x = a^b;
    assign y = ~(a^b);
    assign x1 = (b)&(y2);
    assign y1 = a&(~b);
    mux2to1 m0(.A(x), .B(y) , .SEL(bin) , .OUT(diff));
    mux2to1 m1(.A(x1) , .B(y1) , .SEL(bin) , .OUT(borr));
endmodule
