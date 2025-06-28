`timescale 1ns / 1ps
// Create Date: 06/12/2025 07:58:37 PM
// Designer Name:KOTHAPALLI MAHITH VATHSAV
// Module Name: halfaddertb
// Project Name: HALF ADDER 
module halfaddertb;
reg a;
reg b;
wire sum;
wire cout;
halfadder dut(
.a(a),
.b(b),
.sum(sum),
.cout(cout)
);
initial begin
$monitor("a=%b,b=%b,sum=%b,cout=%b",a,b,sum,cout);
end
initial begin
a=0 ; b= 0; #20;
a=0 ; b= 1; #20;
a=1 ; b= 0; #20;
a=1 ; b= 1; #20;
$finish;
end


    
endmodule
