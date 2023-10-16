`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 12:14:29
// Design Name: 
// Module Name: load64
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


module load64(x0,x1,x2,x3,x4,x5,x6,x7,r

    );
    input [7:0]x0,x1,x2,x3,x4,x5,x6,x7;output [63:0] r;
    assign r={x7,x6,x5,x4,x3,x2,x1,x0};
endmodule
