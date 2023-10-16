`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 02:49:28
// Design Name: 
// Module Name: Permutation
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


module Permutation(sin,i,isa,b,sout

    );
    input [319:0]sin;input[3:0]i;input [3:0]isa;input [3:0]b;
    output [319:0] sout;
    wire [319:0]c,d;
    PCaddconstant P1(sin,i,isa,b,c); 
    PSsubstitutionlayer P2(c,d); 
    PLlineardiffusion P3(d,sout); 
endmodule
