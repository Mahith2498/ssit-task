`timescale 1ns / 1ps
// Create Date: 06/24/2025 10:36:29 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: haus2to1mx
// Project Name: HA using 2*1 MUX
// 2:1 MUX module
module mux2to1(
    input A,
    input B,
    input SEL,
    output reg OUT
);
    always @(*) begin
        case(SEL)
            1'b0 : OUT = A;
            1'b1 : OUT = B;
            default : OUT = 1'b0;
        endcase
    end
endmodule

// Half Adder using 2:1 MUXes
module haus2to1mx(
    input a,
    input b,
    output sum,
    output carry
);
mux2to1 m0 (.A(b), .B(~b), .SEL(a), .OUT(sum));
mux2to1 m1 (.A(1'b0), .B(b), .SEL(a), .OUT(carry));
endmodule

