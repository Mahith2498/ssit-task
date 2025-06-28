`timescale 1ns / 1ps
 // Create Date: 06/25/2025 02:15:58 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: fsus2to1mxtb
// Project Name: FS using 2*1 MUX 
module fsus2to1mxtb;
reg a;
reg b;
reg bin;
wire diff;
wire borr;
fsus2to1mx dut(
.a(a),
.b(b),
.bin(bin),
.diff(diff),
.borr(borr)
);
initial begin
$monitor("a=%b,b=%b,bin=%b,diff=%b,borr=%b",a,b,bin,diff,borr);
end
initial begin
a = 0 ; b = 0; bin = 0; #25;
a = 0 ; b = 0; bin = 1; #25;
a = 0 ; b = 1; bin = 0; #25;
a = 0 ; b = 1; bin = 1; #25;
a = 1 ; b = 0; bin = 0; #25;
a = 1 ; b = 0; bin = 1; #25;
a = 1 ; b = 1; bin = 0; #25;
a = 1 ; b = 1; bin = 1; #25;
a = 0 ; b = 1; bin = 0; #25;
a = 0 ; b = 0; bin = 1; #25;
$finish;
end



    
endmodule
