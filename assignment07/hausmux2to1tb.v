`timescale 1ns / 1ps

// Create Date: 06/24/2025 11:03:30 PM
// Designer  Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: hausmux2to1tb
// Project Name: HA using 2*1 MUX 
module hausmux2to1tb;
reg a;
reg b;
wire sum;
wire carry;
haus2to1mx dut(
.a(a),
.b(b),
.sum(sum),
.carry(carry)
);
initial begin
$monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
end
initial begin
a = 0; b=0; #30;
a=0 ; b=1 ; #30;
a=1 ; b = 0 ; #30;
a= 1 ; b =1 ; #30;
$finish;
end

    
endmodule
