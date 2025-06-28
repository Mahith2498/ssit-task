`timescale 1ns / 1ps

// Create Date: 06/23/2025 05:25:44 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: mux2to1xortb
// Project Name: MUX 2 to 1 using XOR gate
module mux2to1xortb;
reg a;
reg sel;
wire out;
mux2to1xor dut(
.a(a),
.sel(sel),
.out(out)
);
initial begin
$monitor("a=%b,sel=%b,out=%b",a,sel,out);
end
initial begin
a = 0 ; sel = 0; #20;
a = 0 ; sel = 1; #20;
a = 1 ; sel = 0; #20;
a = 1 ; sel = 1; #20;
$finish;
end


    
endmodule
