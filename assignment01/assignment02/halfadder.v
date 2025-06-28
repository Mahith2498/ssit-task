`timescale 1ns / 1ps
// Create Date: 06/12/2025 07:53:42 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: halfadder
// Project Name: HALF ADDER
module halfadder(
input a,
input b,
output sum,
output cout

    );
    assign sum = a^b;
    assign cout = a&b;
endmodule
