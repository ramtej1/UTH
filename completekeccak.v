`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 12:22:13
// Design Name: 
// Module Name: completekeccak
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


module completekeccak(a,b,clk,rst
    );
    input [63:0]a;output [63:0] b;input clk;input rst;wire [6:0]count;wire[1599:0] keccakin;wire[1599:0] keccakout;
    counter C (clk,rst,count);
    SIPO s1 (a,keccakin,clk,count);
    Keccakf K1(keccakin,keccakout,count,clk);
    PISO P1(keccakout,b,clk,count);
endmodule
