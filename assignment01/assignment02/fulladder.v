`timescale 1ns / 1ps
// Create Date: 06/13/2025 12:08:01 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: fulladder
// Project Name: FULL ADDER
module fulladder(
input a,
input b,
input cin,
output cout,
output sum

    );
    assign sum = a^b^cin;
    assign cout = (a&b) | (a&cin) | (b&cin);
endmodule
