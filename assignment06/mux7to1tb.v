`timescale 1ns / 1ps
// Create Date: 06/15/2025 05:03:34 PM
// Designer Name: KOTHAPALLI MAHITH VAHTSAV
// Module Name: mux7to1tb
// Project Name: MUX 7 to 1
module mux7to1tb;
reg [6:0]A;
reg [5:0]SEL;
wire OUT;
mux7to1 uut(
.A(A),
.SEL(SEL),
.OUT(OUT)
);
initial begin
$monitor("A=%b, SEL= %b , OUT= %b", A,SEL,OUT);
end
initial begin
A= 7'b0000000 ; SEL = 6'b000000 ; #50;
A= 7'b0000111 ; SEL = 6'b000111 ; #50; 
A= 7'b1010101 ; SEL = 6'b010101 ; #50; 
A= 7'b0110110 ; SEL = 6'b111001 ; #50; 
A= 7'b1010111 ; SEL = 6'b111100 ; #50; 
A= 7'b0011100 ; SEL = 6'b101110 ; #50; 
A= 7'b1011101 ; SEL = 6'b110011 ; #50; 
A= 7'b1111001 ; SEL = 6'b101111 ; #50; 
end
 

    
endmodule
