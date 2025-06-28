`timescale 1ns / 1ps
 // Create Date: 06/25/2025 12:17:41 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: faus2to1mxtb
// Project Name: FA using 2*1 MUX 
module faus2to1mxtb;
reg a;
reg b;
reg cin;
wire cout;
wire sum;
faus2to1mx dut(
.a(a),
.b(b),
.cin(cin),
.cout(cout),
.sum(sum)
);
initial begin
$monitor("a=%b,b=%b,cin=%b,cout=%b,sum=%b",a,b,cin,cout,sum);
end
initial begin
a = 0 ; b = 0; cin = 0; #25;
a = 0 ; b = 0; cin = 1; #25;
a = 0 ; b = 1; cin = 0; #25;
a = 0 ; b = 1; cin = 1; #25;
a = 1 ; b = 0; cin = 0; #25;
a = 1 ; b = 0; cin = 1; #25;
a = 1 ; b = 1; cin = 0; #25;
a = 1 ; b = 1; cin = 1; #25;
$finish;
end





    
endmodule
