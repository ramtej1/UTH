`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 02:39:23
// Design Name: 
// Module Name: PLlineardiffusion
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


module PLlineardiffusion(sin,sout

    );
    input [319:0]sin;output [319:0]sout;
    wire [63:0]x0,x1,x2,x3,x4;
    wire [63:0]b0,b1,b2,b3,b4;
    assign x0=sin[319:256],x1=sin[255:192],x2=sin[191:128],x3=sin[127:64],x4=sin[63:0];
    assign b0= x0^((x0>>19) ^ (x0<<45)) ^ ((x0>>28) ^ (x0<<36));
    assign b1= x1^((x1>>61) ^ (x1<<3)) ^ ((x1>>39) ^ (x1<<25));
    assign b2= x2^((x2>>1) ^ (x2<<63)) ^ ((x2>>6) ^ (x2<<58));
    assign b3= x3^((x3>>10) ^ (x3<<54)) ^ ((x3>>17) ^ (x3<<47));
    assign b4= x4^((x4>>7) ^ (x4<<57)) ^ ((x4>>41) ^ (x4<<23));
    assign sout={b0,b1,b2,b3,b4};
endmodule
