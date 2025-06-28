`timescale 1ns / 1ps
// Create Date: 06/16/2025 10:08:12 PM
// Designer Name: KOTHAPALLI MAHITH VATHSAV
// Module Name: demux1to8tb
// Project Name: DEMUX 1 to 8 using 1*2 DEMUX
module demux1to8tb;
reg A;
reg [2:0]SEL;
wire [7:0]OUT;
demux1to8 uut(
.A(A),
.SEL(SEL),
.OUT(OUT)
);
initial begin
$monitor("A=%b , SEL=%b, OUT=%b",A,SEL,OUT);
end
initial begin
SEL = 3'b000 ; A= 1'b0; #20;
SEL = 3'b001 ; A= 1'b0; #20;
SEL = 3'b010 ; A= 1'b0; #20;
SEL = 3'b011 ; A= 1'b0; #20;
SEL = 3'b100 ; A= 1'b1; #20;
SEL = 3'b101 ; A= 1'b1; #20;
SEL = 3'b110 ; A= 1'b1; #20;
SEL = 3'b111 ; A= 1'b1; #20;
SEL = 3'b000 ; A= 1'b1; #20;
$finish;
end



    
endmodule
