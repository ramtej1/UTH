`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2023 09:37:11
// Design Name: 
// Module Name: Ascon_Encryption_upper
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


module Ascon_Encryption_upper(clk,rst,Encryption,C,T,Decryption,Hashing

    );
input clk;input rst; wire[6:0] count;wire [127:0]K,N;input Decryption;wire [127:0]Tin;
wire [255:0] A,P;input Encryption;output[255:0]C;output[127:0]T;input Hashing;
    
    assign K[63:0]=64'd54,
    K[127:64]=64'd55;
    
    assign N[63:0]=64'd54,
    N[127:64]=64'd55;
   
    assign Tin=128'h57368fee085688e93909d6f8d5cb32af;
    assign   A[63:0]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd32},
    A[127:64]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd53},
    A[191:128]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd32},
    A[255:192]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd55},
    
    P[63:0]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd32},
    P[127:64]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd53},
    P[191:128]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd32},
    P[255:192]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd55};
 counter c1(clk,rst,count);
Ascon_Encryption A1(K,N,A,P,Encryption,C,T,clk,count,Decryption,Tin,Hashing);
endmodule
