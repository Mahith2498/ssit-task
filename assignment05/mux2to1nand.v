`timescale 1ns / 1ps

// Create Date: 06/23/2025 04:41:50 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: mux2to1nand
// Project Name: MUX 2 to 1 using NAND gate
module mux2to1nand(
input a,
input b,
input sel,
output y
    );
    wire w1;
    wire w2;
    wire w3;
    assign w1 = ~sel;
    assign w2 = ~(a&sel);
    assign w3 = ~(b&w1);
    assign y = (~w2) | (~w3);
    
endmodule
