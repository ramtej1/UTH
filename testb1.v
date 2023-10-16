`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2023 09:37:33
// Design Name: 
// Module Name: testb1
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

module testb1();
 reg clk;reg rst; wire[6:0] count;reg [127:0]K,N;reg Decryption;reg Hashing;
reg [255:0] A,P;reg Encryption;wire[255:0]C;wire[127:0]T;reg [127:0]Tin;
 counter c1(clk,rst,count);
Ascon_Encryption A1(K,N,A,P,Encryption,C,T,clk,count,Decryption,Tin,Hashing);

initial
 begin
  clk=0; 
     rst=1;
    #8 rst = 0;
   Decryption=1;
    K[63:0]=64'd54;
    K[127:64]=64'd55;
    Hashing=0;
    N[63:0]=64'd54;
    N[127:64]=64'd55;
    
    A[63:0]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd32};
    A[127:64]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd53};
    A[191:128]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd32};
    A[255:192]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd55};
    
//        P[63:0]=64'h34;
//    P[127:64]=64'h35;
//    P[191:128]=64'h36;
//    P[255:192]=64'h37;
    
//    P[63:0]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd32};
//    P[127:64]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd53};
//    P[191:128]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd32};
//    P[255:192]={8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd55};

      P[63:0]=64'h9c754290bedbac42;
    P[127:64]=64'h71654ebc9b16fc41;
    P[191:128]=64'h2ddb00ef83a70874;
    P[255:192]=64'ha601a28746d4d31c;
    Tin=128'h57368fee085688e93909d6f8d5cb32af;
    Encryption=0;
    
#1500 $finish;
 end

always #5 clk=~clk;

endmodule
