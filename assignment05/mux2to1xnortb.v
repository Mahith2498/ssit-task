`timescale 1ns / 1ps
// Create Date: 06/23/2025 05:55:01 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: mux2to1xnortb
// Project Name: MUX 2 to 1 using XNOR gate
module mux2to1xnortb;
reg a;
reg sel;
wire out;
mux2to1xnor dut(
.a(a),
.sel(sel),
.out(out)
);
initial begin
$monitor("a=%b,sel=%b,out=%b",a,sel,out);
end
initial begin
a = 0; sel = 0; #20;
a = 0; sel = 1; #20;
a = 1; sel = 0; #20;
a = 1; sel = 1; #20;
$finish;
end



   
endmodule
