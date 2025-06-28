`timescale 1ns / 1ps
// Create Date: 06/15/2025 06:11:14 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: mux11to1
// Project Name: MUX 11 to 1
module mux2to1(
input c,
input d,
input sel,
output reg out
);
always@(*)begin
case(sel)
1'b0 : out = c;
1'b1 : out = d;
default : out = 1'b0;
endcase
end
endmodule
module mux11to1(
input [10:0]a,
input [9:0]f,
output bigout


    );
    wire [8:0]w;
    mux2to1 m1(.c(a[0]), .d(a[1]), .sel(f[0]), .out(w[0]));
    mux2to1 m2(.c(a[2]), .d(a[3]), .sel(f[1]), .out(w[1]));
    mux2to1 m3(.c(a[4]), .d(a[5]), .sel(f[2]), .out(w[2]));
    mux2to1 m4(.c(a[6]), .d(a[7]), .sel(f[3]), .out(w[3]));
    mux2to1 m5(.c(w[0]), .d(w[1]), .sel(f[4]), .out(w[4]));
    mux2to1 m6(.c(w[2]), .d(w[3]), .sel(f[5]), .out(w[5]));
    mux2to1 m7(.c(w[4]), .d(w[5]), .sel(f[6]), .out(w[6]));
    mux2to1 m8(.c(w[6]), .d(a[8]), .sel(f[7]), .out(w[7]));
    mux2to1 m9(.c(w[7]), .d(a[9]), .sel(f[8]), .out(w[8]));
    mux2to1 m10(.c(w[8]), .d(a[10]), .sel(f[9]), .out(bigout));
endmodule



