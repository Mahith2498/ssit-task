`timescale 1ns / 1ps
// Create Date: 06/15/2025 03:43:31 PM
// Designer Name:KOTHAPALLI MAHITH VAHTSAV 
// Module Name: mux5to1tb
// Project Name: MUX 5 TO 1
module mux5to1tb;
reg [4:0]A;
reg [3:0]SEL;
wire OUT;
mux5to1 uut(
.A(A),
.SEL(SEL),
.OUT(OUT)
);
initial begin
$monitor("A=%b,SEL=%b,OUT=%b",A,SEL,OUT);
end
initial begin
A= 5'b00000 ; SEL = 4'b0000 ; #50;
A= 5'b10011 ; SEL = 4'b0011 ; #50;
A= 5'b01110 ; SEL = 4'b1100 ; #50;
A= 5'b11010 ; SEL = 4'b1110 ; #50;
A= 5'b00111 ; SEL = 4'b1101 ; #50;
A= 5'b11110 ; SEL = 4'b1110 ; #50;
A= 5'b01011 ; SEL = 4'b1111 ; #50;
A= 5'b10001 ; SEL = 4'b0111 ; #50;
A= 5'b11010 ; SEL = 4'b1101 ; #50;
A= 5'b11010 ; SEL = 4'b0110 ; #50;
A= 5'b01111 ; SEL = 4'b1011 ; #50;
A= 5'b11111 ; SEL = 4'b1110 ; #50;
$finish;
end




    
endmodule
