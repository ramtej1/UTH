`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2023 17:11:46
// Design Name: 
// Module Name: rho
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


module rho(a,b);
    input [63:0] a;
    wire [63:0] c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24;
    output [63:0]b;
    genvar t,z;
    assign c0[0]=a[63:0];
    for (t=0;t<24;t=t+1)
    begin 
       for (z=0;z<64;z=z+1)
       begin     
          assign  c[t+1]=c[(z-((t+1)*(t+2))/2)%64];
       end 
    end
    assign b[63:0]=c[23];

endmodule
