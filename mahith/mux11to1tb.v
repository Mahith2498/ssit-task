`timescale 1ns / 1ps
 
// Create Date: 06/05/2025 10:30:17 AM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: mux11to1tb
// Project Name: 11*1 MUX using 2*1 mux
module mux11to1tb;
reg [10:0]a;
reg [9:0]f;
wire bigout;
mux11to1 dut(
.a(a),
.f(f),
.bigout(bigout)
);
initial begin
$monitor("a=%b,f=%b,bigout=%b",a,f,bigout);
end
initial begin
repeat(100)begin // runs 100 times by generating 100 different testcases
a= $urandom_range(0,2047); // representing a 11 bit, 11 bit has 2048 combinations
f= $urandom_range(0,511); // representing a 9 bit, 9 bit has 512 possible combinations
#5; //each case will run for 5 nano second
end
end


    
endmodule
