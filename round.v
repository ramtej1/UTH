`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 15:29:03
// Design Name: 
// Module Name: round
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


module round(a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44,
b00,b01,b02,b03,b04,b10,b11,b12,b13,b14,b20,b21,b22,b23,b24,b30,b31,b32,b33,b34,b40,b41,b42,b43,b44
,ir
    );
input [6:0] ir;   
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

wire [63:0]c00,c01,c02,c03,c04;
wire [63:0]c10,c11,c12,c13,c14;
wire [63:0]c20,c21,c22,c23,c24;
wire [63:0]c30,c31,c32,c33,c34;
wire [63:0]c40,c41,c42,c43,c44;

wire [63:0]d00,d01,d02,d03,d04;
wire [63:0]d10,d11,d12,d13,d14;
wire [63:0]d20,d21,d22,d23,d24;
wire [63:0]d30,d31,d32,d33,d34;
wire [63:0]d40,d41,d42,d43,d44;

wire [63:0]e00,e01,e02,e03,e04;
wire [63:0]e10,e11,e12,e13,e14;
wire [63:0]e20,e21,e22,e23,e24;
wire [63:0]e30,e31,e32,e33,e34;
wire [63:0]e40,e41,e42,e43,e44;

wire [63:0]f00,f01,f02,f03,f04;
wire [63:0]f10,f11,f12,f13,f14;
wire [63:0]f20,f21,f22,f23,f24;
wire [63:0]f30,f31,f32,f33,f34;
wire [63:0]f40,f41,f42,f43,f44;



theta A1(a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44
,c00,c01,c02,c03,c04,c10,c11,c12,c13,c14,c20,c21,c22,c23,c24,c30,c31,c32,c33,c34,c40,c41,c42,c43,c44);

rhoo A2(c00,c01,c02,c03,c04,c10,c11,c12,c13,c14,c20,c21,c22,c23,c24,c30,c31,c32,c33,c34,c40,c41,c42,c43,c44,
d00,d01,d02,d03,d04,d10,d11,d12,d13,d14,d20,d21,d22,d23,d24,d30,d31,d32,d33,d34,d40,d41,d42,d43,d44);

pi A3(d00,d01,d02,d03,d04,d10,d11,d12,d13,d14,d20,d21,d22,d23,d24,d30,d31,d32,d33,d34,d40,d41,d42,d43,d44,
e00,e01,e02,e03,e04,e10,e11,e12,e13,e14,e20,e21,e22,e23,e24,e30,e31,e32,e33,e34,e40,e41,e42,e43,e44);

Xita A4(e00,e01,e02,e03,e04,e10,e11,e12,e13,e14,e20,e21,e22,e23,e24,e30,e31,e32,e33,e34,e40,e41,e42,e43,e44,
f00,f01,f02,f03,f04,f10,f11,f12,f13,f14,f20,f21,f22,f23,f24,f30,f31,f32,f33,f34,f40,f41,f42,f43,f44);

thota A5(f00,f01,f02,f03,f04,f10,f11,f12,f13,f14,f20,f21,f22,f23,f24,f30,f31,f32,f33,f34,f40,f41,f42,f43,f44,
b00,b01,b02,b03,b04,b10,b11,b12,b13,b14,b20,b21,b22,b23,b24,b30,b31,b32,b33,b34,b40,b41,b42,b43,b44,ir-7'd28);
endmodule
