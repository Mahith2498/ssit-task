`timescale 1ns / 1ps
// Create Date: 06/16/2025 09:39:11 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: demux1to8
// Project Name: DEMUX 1 to 8 Using 1*2 DEMUX 
module demux1to2(
input a,
input sel,
output reg [1:0]out

    );
    always@(*)begin
    if(sel== 1'b1)begin
    out[1] = a;
    out[0] = 1'b0;
    end else begin
    out[0]= a;
    out[1] = 1'b0;
    end
    end 
endmodule
module demux1to8(
input A,
input [2:0]SEL,
output [7:0]OUT
);
wire [5:0]W;
demux1to2 m0(.a(A),.sel(SEL[0]),.out(W[1:0]));
demux1to2 m1(.a(W[1]),.sel(SEL[1]),.out(W[3:2]));
demux1to2 m2(.a(W[0]),.sel(SEL[1]),.out(W[5:4]));
demux1to2 m3(.a(W[3]),.sel(SEL[2]),.out(OUT[7:6]));
demux1to2 m4(.a(W[2]),.sel(SEL[2]),.out(OUT[5:4]));
demux1to2 m5(.a(W[5]),.sel(SEL[2]),.out(OUT[3:2]));
demux1to2 m6(.a(W[4]),.sel(SEL[2]),.out(OUT[1:0]));
endmodule 






