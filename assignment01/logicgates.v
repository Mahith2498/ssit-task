`timescale 1ns / 1ps
// Create Date: 06/11/2025 11:04:15 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: logicgates
// Project Name: SSIT LOGIC GATES ASSIGNMENT
module logicgates(
input a,
input b,
output and_gate,
output xor_gate,
output or_gate,
output nand_gate,
output nor_gate,
output not_gate,
output xnor_gate

    );
    assign and_gate = a&b;
    assign xor_gate = a^b;
    assign or_gate = a|b;
    assign nand_gate = ~(a&b);
    assign nor_gate = ~(a|b);
    assign not_gate = ~(a);
    assign xnor_gate = ~(a^b);
endmodule
