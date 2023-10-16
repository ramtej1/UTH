`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 01:56:40
// Design Name: 
// Module Name: PCaddconstant
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


module PCaddconstant(sin,i,isa,b,sout

    );
    input [319:0]sin;input[3:0]i;input [3:0]isa;input [3:0]b;
    output [319:0] sout;wire[3:0] ir;
    assign ir=isa&i|(~isa)&(i+12-b);
    wire [63:0]c;
    assign c={56'h0,4'hf-ir,ir};
 assign    sout[191:128]=sin[191:128]^c;
 assign sout[319:192]=sin[319:192];
 assign sout[127:0]=sin[127:0];
endmodule
