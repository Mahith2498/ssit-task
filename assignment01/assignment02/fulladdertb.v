`timescale 1ns / 1ps
// Create Date: 06/13/2025 12:13:43 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: fulladdertb
// Project Name: FULL ADDER
module fulladdertb;
reg a;
reg b;
reg cin;
wire cout;
wire sum;
fulladder dut(
.a(a),
.b(b),
.cin(cin),
.cout(cout),
.sum(sum)
);
initial begin
$monitor("a=%b,b=%b,cin=%b,cout=%b,sum=%b",a,b,cin,sum,cout);
end
initial begin
a=0 ; b=0 ; cin = 0; #20;
a=0 ; b=0 ; cin = 1; #20;
a=0 ; b=1 ; cin = 0; #20;
a=0 ; b=1 ; cin = 1; #20;
a=1 ; b=0 ; cin = 0; #20;
a=1 ; b=0 ; cin = 1; #20;
a=1 ; b=1 ; cin = 0; #20;
a=1 ; b=1 ; cin = 1; #20;
$finish;
end


    
endmodule
