`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 10:42:21
// Design Name: 
// Module Name: SIPO
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


module SIPO(a,b,clk,count

    );
    input [63:0] a;input clk;input [6:0] count;
    output [1599:0] b;
    reg [1599:0] c;
    assign b=c;
    always@(posedge clk)
    begin
     if(count<27)
     c<={a,c[1599:64]};
     else
     c<=c;      
    end
endmodule
