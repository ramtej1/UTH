`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2023 11:09:13
// Design Name: 
// Module Name: ROL
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


module ROL(offset,a,b

    );
    input [31:0] offset;input [63:0]a;output [63:0]b;
    assign b= (a<<offset) ^ (a>>64-offset); 
endmodule
