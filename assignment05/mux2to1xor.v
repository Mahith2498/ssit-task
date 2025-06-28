`timescale 1ns / 1ps

// Create Date: 06/23/2025 05:19:27 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV 
// Module Name: mux2to1xor
// Project Name: MUX 2 to 1 using XOR gate
module mux2to1xor(
input a,
input sel,
output reg out

    );
    wire w1;
    assign w1 = ~a;
    always@(*)begin
    case(sel)
    1'b0 : out = a;
    1'b1 : out = w1;
    default : out = a;
    endcase
    end
    
endmodule
