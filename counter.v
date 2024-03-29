`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2023 23:54:34
// Design Name: 
// Module Name: counter
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


module counter(clk , rst , count
    );
    input clk,rst;
    output [6:0] count;
    reg [6:0] count;
    always@(posedge clk &&count<77)
    begin
        if(rst)
        count = 7'b1;
        else
        count = count + 1;
    end
endmodule
