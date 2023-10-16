`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2023 20:05:29
// Design Name: 
// Module Name: testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench( );
wire [1599:0]string1; reg clk;reg rst; wire[6:0] count;wire [63:0] out;reg [63:0]a;
wire [1599:0]string2;
 counter c1(clk,rst,count);
 SIPO S1(a,string1,clk,count);
 Keccakf K1(string1,string2,count,clk);
 PISO P1 (string2,out,clk,count);
initial
 begin 
    a = 64'd25;
   
    clk = 0;
    rst=1;
    #8 rst = 0;
    
#900 $finish;
 end

always #5 clk=~clk;

endmodule
