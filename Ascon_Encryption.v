`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.10.2023 12:45:02
// Design Name: 
// Module Name: Ascon_Encryption
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


module Ascon_Encryption(K,N,A,P,Encryption,C,T,clk,count,Decryption,Tin,Hashing

    );
    input [127:0]K,N;output [255:0]C;output[127:0]T;input clk;input[6:0]count;input Decryption;input[127:0] Tin;
      wire [319:0]sin2,sin3,sin4,sin5;input Hashing;
    input Encryption;input[255:0]A,P;reg [319:0]s;wire [319:0]sin;
    assign sin=s; reg[3:0] b=4'd6;
    wire[319:0]A1;assign A1={A,1'b1,63'h0};wire[319:0]P1;assign P1={P,1'b1,63'h0};
    wire [319:0]sin12,sin13,sin14,sin15;reg[127:0]T1;assign T=T1;
     reg [3:0] ir;wire[319:0]sout;reg[255:0]C1;assign C=C1;
    assign sin2= {sout[319:256]^A1[255:192],sout[255:0]};
    assign sin3= {sout[319:256]^A1[191:128],sout[255:0]};
    assign sin4= {sout[319:256]^A1[127:64],sout[255:0]};
    assign sin5= {sout[319:256]^A1[63:0],sout[255:0]};
    assign sin12= {sout[319:256]^P1[255:192],sout[255:0]};
    assign sin13= {sout[319:256]^P1[191:128],sout[255:0]};
    assign sin14= {sout[319:256]^P1[127:64],sout[255:0]};
    assign sin15= {sout[319:256]^P1[63:0],sout[255:0]};
    reg [3:0] isa=4'b1111;wire [3:0]isaw;wire [3:0]irw;assign isaw=isa;assign irw=ir;
    Permutation P4(sin,irw,isaw,b,sout);
    always@(posedge clk&(Encryption|Decryption|Hashing))
    begin
        if(count==1&(Encryption|Decryption))
        begin
            s<={64'h80400c0600000000,K,N};
            ir<=0;
        end
         if(count<13&&count>1&(Encryption|Decryption))
        begin
            s<=sout;
            ir<=ir+1;
        end
         if(count==13&(Encryption|Decryption))
        begin
            s<=(sout^{192'd0,K});
            ir<=0;
        end
        if(count==14&(Encryption|Decryption))
        begin
            s<={s[319:256]^A1[319:256],s[255:0]};
            isa<=4'd0;
        end 
        if((count>14&count<20|count>20&count<26|count>26&count<32|count>32&count<38|count>38&count<44)&(Encryption|Decryption))
        begin
            s<=sout;
            ir<=ir+1;
        end 
        if(count==20&(Encryption|Decryption))
        begin
            s<={sout[319:256]^A1[255:192],sout[255:0]};
            ir<=0;
        end
        if(count==26&(Encryption|Decryption))
        begin
            s<=sin3;
            ir<=0;
        end 
         if(count==32&(Encryption|Decryption))
        begin
            s<=sin4;
            ir<=0;
        end 
         if(count==38&(Encryption|Decryption))
        begin
            s<=sin5;
            ir<=0;
        end 
        if(count==45&(Encryption|Decryption))
        begin
            s<=sout^320'h1;
            ir<=0;
        end
        if(count==46&Encryption)
        begin
            s<={s[319:256]^P1[319:256],s[255:0]};
            C1[255:192]<=s[319:256]^P1[319:256];
        end
        if(count==46&Decryption)
        begin
            s<={P1[319:256],s[255:0]};
            C1[255:192]<=s[319:256]^P1[319:256];
        end
        if((count>46&count<52|count>52&count<58|count>58&count<64|count>64&count<70|count>71&count<83)&(Encryption|Decryption))
        begin
            s<=sout;
            ir<=ir+1;
        end
          if(count==52&Encryption)
        begin
            s<=sin12;
            C1[191:128]<=sin12[319:256];
            ir<=0;
        end
        if(count==52&Decryption)
        begin
            s<={P1[255:192],sout[255:0]};
            C1[191:128]<=sin12[319:256];
            ir<=0;
        end
        if(count==58&Encryption)
        begin
            s<=sin13;
            C1[127:64]<=sin13[319:256];
            ir<=0;
        end
        if(count==58&Decryption)
        begin
            s<={P1[191:128],sout[255:0]};
            C1[127:64]<=sin13[319:256];
            ir<=0;
        end
        if(count==64&Encryption)
        begin
            s<=sin14;
            C1[63:0]<=sin14[319:256];
            ir<=0;
        end
        if(count==64&Decryption)
        begin
            s<={P1[127:64],sout[255:0]};
            C1[63:0]<=sin14[319:256];
            ir<=0;
        end
   
        if(count==70&Encryption)
        begin
            s<={sout[319:256]^P1[63:0],sout[255:0]};
        end
        if(count==70&Decryption)
        begin
            s<={sout[319:256]^64'h8000000000000000,sout[255:0]};
        end
        if(count==71&(Encryption|Decryption))
        begin
            s<=s^{64'h0,K,128'h0};
            isa<=4'b1111;
            ir<=0;
        end
        if(count==83&(Encryption|Decryption))
        begin
            T1<=sout[127:0]^K;
        end
        if(count==84&T1!=Tin&Decryption)
        begin
            C1<=256'h0;
        end
             
             
             
             
             
         if(count==1&Hashing)
        begin
            s<=320'hee9398aadb67f03d8bb21831c60f1002b48a92db98d5da6243189921b8f8e3e8348fa5c9d525e140^{P1[319:256],256'h0};
            ir<=0;
            isa<=4'd0;
            b<=4'd12;
        end
        if(((count<13&&count>1)|(count<25&&count>13)|(count<37&&count>25)|(count<49&&count>37))&Hashing)
        begin
            s<=sout;
            ir<=ir+1;
        end
            if(count==13&Hashing)
        begin
            s<=sin12;
            ir<=0;
        end
             if(count==25&Hashing)
        begin
            s<=sin13;
            ir<=0;
        end 
             if(count==37&Hashing)
        begin
            s<=sin14;
            ir<=0;
        end
           if(count==49&Hashing)
        begin
            s<=sin15;
            ir<=0;
        end

        if(count==51&Hashing)
        begin
            isa<=4'b1111;
            ir<=0;
        end
        if((count>51&count <63|count<75&count >63|count<87&count >75|count<99&count >87)&Hashing)
        begin
            s<=sout;
            ir<=ir+1;
        end
        if(count == 63&Hashing)
        begin
            C1[255:192]<=sout[319:256];
            s<=sout;
            ir<=0;
            isa<=0;
        end
        if(count==75&Hashing)
        begin
            C1[191:128]<=sout[319:256];
            s<=sout;
            ir<=0;
        end
          if(count==87&Hashing)
        begin
            C1[127:64]<=sout[319:256];
            s<=sout;
            ir<=0;
        end
          if(count==99&Hashing)
        begin
            C1[63:0]<=sout[319:256];
            s<=sout;
            ir<=0;
        end     
    end
    
    
endmodule
