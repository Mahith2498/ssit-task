`timescale 1ns / 1ps
// Create Date: 06/23/2025 05:51:45 PM
// Designer Name: KOTHPALLI MAHITH VATHSAV 
// Module Name: mux2to1xnor
// Project Name: 2*1 MUX using XNOR gate
module mux2to1xnor(
input a,
input sel,
output reg out

    );
    wire w1;
    assign w1 = ~a;
    always@(*)begin
    case(sel)
    1'b0 : out = w1;
    1'b1 : out = a;
    default : out = a;
    endcase
    end
    
endmodule

