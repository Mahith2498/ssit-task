`timescale 1ns / 1ps
// Create Date: 06/25/2025 01:06:50 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: hsus2to1mxtb
// Project Name: HS using 2*1 MUX
module hsus2to1mxtb;
reg a;
reg b;
wire diff;
wire borr;
hsus2to1mx uut(
.a(a),
.b(b),
.diff(diff),
.borr(borr)
);
initial begin
$monitor("a=%b,b=%b,diff=%b,borr=%b",a,b,diff,borr);
end
initial begin
a= 0 ; b=0; #25;
a= 0 ; b=1; #25;
a= 1 ; b=0; #25;
a= 1 ; b=1; #25;
$finish;
end

    
endmodule
