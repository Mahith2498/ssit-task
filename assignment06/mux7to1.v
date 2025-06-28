`timescale 1ns / 1ps
 // Create Date: 06/15/2025 04:47:03 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: mux7to1
// Project Name: MUX 7 to 1
module mux2to1(
input a,
input b,
input sel,
output reg out
);
always@(*)begin
case(sel)
1'b0 : out = a;
1'b1 : out = b;
default : out = 1'b0;
endcase
end
endmodule 
module mux7to1(
input [6:0]A,
input [5:0]SEL,
output OUT

    );
    wire [4:0] WIRE;
    mux2to1 f0(.a(A[0]), .b(A[1]), .sel(SEL[0]), .out(WIRE[0]));
    mux2to1 f1(.a(A[2]), .b(A[3]), .sel(SEL[1]), .out(WIRE[1]));
    mux2to1 f2(.a(WIRE[0]), .b(WIRE[1]), .sel(SEL[2]), .out(WIRE[2]));
    mux2to1 f3(.a(WIRE[2]), .b(A[4]), .sel(SEL[3]), .out(WIRE[3]));
    mux2to1 f4(.a(WIRE[3]), .b(A[5]), .sel(SEL[4]), .out(WIRE[4]));
    mux2to1 f5(.a(WIRE[4]), .b(A[6]), .sel(WIRE[5]), .out(OUT));
endmodule
