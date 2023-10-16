`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.08.2023 12:38:18
// Design Name: 
// Module Name: rct
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


module rct(t,b

    );
    input [31:0]t;
    output b;
    wire nonzero = t[0]|t[1]|t[2]|t[3]|t[4]|t[5]|t[6]|t[7];
    wire [7:0]complementof7 = 248;
    wire is7= t&complementof7;
    assign b= nonzero?(is7?1:0):1;
endmodule
