`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 06/13/2025 11:18:53 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: mux8to1
// Project Name: MUX 8 TO 1 
module mux8to1(
input [7:0]a,
input [2:0]sel,
output reg out

    );
    always@(*)begin
    case(sel)
    3'b000 : out = a[0];
    3'b001 : out = a[1];
    3'b010 : out = a[2];
    3'b011 : out = a[3];
    3'b100 : out = a[4];
    3'b101 : out = a[5];
    3'b110 : out = a[6];
    3'b111 : out = a[7];
    default : out = 1'b1;
    endcase
    end
endmodule
