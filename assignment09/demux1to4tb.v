`timescale 1ns / 1ps
 // Create Date: 06/16/2025 05:39:09 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: demux1to4tb
// Project Name: DEMUX 1 to 4
module demux1to4tb;
reg A;
reg [1:0]SEL;
wire [3:0]OUT;
demux1to4 uut(
.A(A),
.SEL(SEL),
.OUT(OUT)
);
initial begin
$monitor("A=%b,SEL=%b,OUT=%b",A,SEL,OUT);
end
initial begin
A= 1'b1 ; SEL = 2'b00 ; #50;
A= 1'b0 ; SEL= 2'b01 ; #50;
A= 1'b1 ; SEL = 2'b10 ; #50;
A = 1'b1 ; SEL= 2'b11 ; #50;
end



    
endmodule
