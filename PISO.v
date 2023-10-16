`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2023 10:51:45
// Design Name: 
// Module Name: PISO
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


module PISO(a,b,clk,count

    );
    input [1599:0] a;input clk; input [6:0] count;
    output  [63:0] b;reg [1599:0]c;
   assign b=c[1599:1536];
   always@(posedge clk)
   begin
        if(count ==52)
        c<=a;
      if(count<77&&count>52)
      begin
           c<={c[1535:0],64'd0};
      end  
   end
endmodule
