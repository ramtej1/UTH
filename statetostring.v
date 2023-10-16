`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2023 18:30:31
// Design Name: 
// Module Name: statetostring
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


module statetostring(a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44,string);

input [63:0]a00,a01,a02,a03,a04;
input [63:0]a10,a11,a12,a13,a14;
input [63:0]a20,a21,a22,a23,a24;
input [63:0]a30,a31,a32,a33,a34;
input [63:0]a40,a41,a42,a43,a44;

output [1599:0] string;

assign string[1599:0]={a00,a10,a20,a30,a40,a01,a11,a21,a31,a41,a02,a12,a22,a32,a42,a03,a13,a23,a33,a43,a04,a14,a24,a34,a44};
endmodule
