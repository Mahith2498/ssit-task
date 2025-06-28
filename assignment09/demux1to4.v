`timescale 1ns / 1ps
 // Create Date: 06/16/2025 05:10:25 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: demux1to4
// Project Name: 1*4 DEMUX using 1*2 DEMUX
module demux1to2(
input a,
input sel,
output reg [1:0]out
);
always@(*)begin
if(sel==1'b0)begin
out[0] = a;
out[1] = 1'b0;
end else begin
out[1] = a;
out[0] = 1'b0;
end
end
endmodule 
module demux1to4(
input A,
input [1:0]SEL,
output [3:0]OUT

    );
    wire [1:0]w;
    demux1to2 d0(.a(A),.sel(SEL[0]), .out(w));
    demux1to2 d1(.a(w[1]), .sel(SEL[1]), .out(OUT[3:2]));
    demux1to2 d2(.a(w[0]), .sel(SEL[1]),.out(OUT[1:0]));
endmodule
