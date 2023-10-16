`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 02:14:29
// Design Name: 
// Module Name: PSsubstitutionlayer
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


module PSsubstitutionlayer(sin,sout

    );
    input [319:0]sin;output [319:0]sout;
    wire [63:0]x0,x1,x2,x3,x4;
    wire [63:0]a0,a1,a2,a3,a4;
    wire [63:0]t0,t1,t2,t3,t4;
    wire [63:0]b0,b1,b2,b3,b4;
    wire [63:0]c0,c1,c2,c3,c4;
    wire [63:0]d0,d1,d2,d3,d4;
    assign x0=sin[319:256],x1=sin[255:192],x2=sin[191:128],x3=sin[127:64],x4=sin[63:0];
    assign a0=x0^x4,a4=x4^x3,a2=x2^x1,a1=x1,a3=x3;
    assign t0=~a0,t1=~a1,t2=~a2,t3=~a3,t4=~a4;
    assign b0=t0&a1,b1=t1&a2,b2=t2&a3,b3=t3&a4,b4=t4&a0;
    assign c0=b1^a0,c1=b2^a1,c2=b3^a2,c3=b4^a3,c4=b0^a4;
    assign d0=c0^c4,d1=c1^c0,d2=~c2,d3=c3^c2,d4=c4;
    assign sout={d0,d1,d2,d3,d4};
    
   
    
endmodule
