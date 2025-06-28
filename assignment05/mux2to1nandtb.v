`timescale 1ns / 1ps
// Create Date: 06/23/2025 04:48:41 PM
// Designer  Name:KOTHAPALLI MAHITH VATHSAV 
// Module Name: mux2to1nandtb
// Project Name: MUX 2 to 1 using NAND gate
module mux2to1nandtb;
reg a;
reg b;
reg sel;
wire y;
mux2to1nand dut(
.a(a),
.b(b),
.sel(sel),
.y(y)
);
initial begin
$monitor("a=%b,b=%b,sel=%b,y=%b",a,b,sel,y);
end
initial begin
a = 0 ; b=0 ; sel =0 ; #20;
a = 0 ; b=0 ; sel =1 ; #20;
a = 0 ; b=1 ; sel =0 ; #20;
a = 0 ; b=1 ; sel =1 ; #20;
a = 1 ; b=0 ; sel =0 ; #20;
a = 1 ; b=0 ; sel =1 ; #20;
a = 1 ; b=1 ; sel =0 ; #20;
a = 1 ; b=1 ; sel =1 ; #20;
$finish;
end



    
endmodule
