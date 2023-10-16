`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 15:56:20
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
    always@(posedge clk)
    begin
        if(rst)
        count = 7'b1;
        else if(count==100)
        count=count;
        else
        count = count + 1;
    end
endmodule
