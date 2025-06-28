`timescale 1ns / 1ps
// Create Date: 06/13/2025 11:25:21 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: mux8to1tb
// Project Name: 
module mux8to1tb;
reg [7:0]a;
reg [2:0]sel;
wire out;
mux8to1 dut(
.a(a),
.sel(sel),
.out(out)
);
initial begin
$monitor("a=%b,sel=%b,out=%b",a,sel,out);
end
initial begin
sel= 3'b000 ; a = 8'b10100001; #20;
sel= 3'b001 ; a = 8'b10100010; #20;
sel= 3'b010 ; a = 8'b00100110; #20;
sel= 3'b011 ; a = 8'b00001011; #20;
sel= 3'b100 ; a = 8'b00010111; #20;
sel= 3'b101 ; a = 8'b10100011; #20;
sel= 3'b110 ; a = 8'b01011101; #20;
sel= 3'b111 ; a = 8'b10011100; #20;
$finish;
end



    
endmodule
