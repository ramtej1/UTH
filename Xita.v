`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2023 12:22:51
// Design Name: 
// Module Name: Xita
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


module Xita(a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44,
b00,b01,b02,b03,b04,b10,b11,b12,b13,b14,b20,b21,b22,b23,b24,b30,b31,b32,b33,b34,b40,b41,b42,b43,b44

    );
    
input [63:0]a00,a01,a02,a03,a04;
input [63:0]a10,a11,a12,a13,a14;
input [63:0]a20,a21,a22,a23,a24;
input [63:0]a30,a31,a32,a33,a34;
input [63:0]a40,a41,a42,a43,a44;
    
output [63:0]b00,b01,b02,b03,b04;
output [63:0]b10,b11,b12,b13,b14;
output [63:0]b20,b21,b22,b23,b24;
output [63:0]b30,b31,b32,b33,b34;
output [63:0]b40,b41,b42,b43,b44;

assign b00 = a00^((~(a10))&a20),b10 = a10^((~(a20))&a30),b20 = a20^((~(a30))&a40),b30 = a30^((~(a40))&a00),b40 = a40^((~(a00))&a10);
assign b01 = a01^((~(a11))&a21),b11 = a11^((~(a21))&a31),b21 = a21^((~(a31))&a41),b31 = a31^((~(a41))&a01),b41 = a41^((~(a01))&a11);
assign b02 = a02^((~(a12))&a22),b12 = a12^((~(a22))&a32),b22 = a22^((~(a32))&a42),b32 = a32^((~(a42))&a02),b42 = a42^((~(a02))&a12);
assign b03 = a03^((~(a13))&a23),b13 = a13^((~(a23))&a33),b23 = a23^((~(a33))&a43),b33 = a33^((~(a43))&a03),b43 = a43^((~(a03))&a13);
assign b04 = a04^((~(a14))&a24),b14 = a14^((~(a24))&a34),b24 = a24^((~(a34))&a44),b34 = a34^((~(a44))&a04),b44 = a44^((~(a04))&a14);
endmodule
