`timescale 1ns / 1ps
 // Create Date: 06/11/2025 11:16:02 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: logicgatestb
// Project Name: SSIT LOGIC GATES ASSIGNMENT 
module logicgatestb;
reg a;
reg b;
wire and_gate;
wire xor_gate;
wire or_gate;
wire nand_gate;
wire nor_gate;
wire not_gate;
wire xnor_gate;
logicgates dut(
.a(a),
.b(b),
.and_gate(and_gate),
.xor_gate(xor_gate),
.or_gate(or_gate),
.nand_gate(nand_gate),
.nor_gate(nor_gate),
.not_gate(not_gate),
.xnor_gate(xnor_gate)
);
initial begin
$monitor("a=%b,b=%b,and_gate=%b,xor_gate=%b,or_gate=%b,nand_gate=%b,nor_gate=%b,not_gate=%b,xnor_gate=%b",a,b,and_gate,xor_gate,or_gate,nand_gate,nor_gate,not_gate,xnor_gate);
end
initial begin
a=0;b=0;#30;
a=0;b=1;#30;
a=1;b=0;#30;
a=1;b=1;#30;
$finish;
end


    
endmodule
