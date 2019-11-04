`timescale 1ns / 1ps

module Abacus_tb();
reg clk;
reg btnC, btnU, btnL, btnR, btnD;
reg [15:0] sw;
wire [15:0] led;
wire [6:0] seg;
wire [3:0] an; 
wire dp;

//wire [7:0] diff;
//wire [7:0] REM;
//wire [15:0] Product;
//wire [7:0] QU;
//wire [7:0] sum;
//wire cout;

Basys3_Abacus_Top U1(
    .clk(clk),
    .btnC(btnC),
    .btnU(btnU),
    .btnD(btnD),
    .btnR(btnR),
    .btnL(btnL),
    .sw(sw),
    .led(led),
    .seg(seg),
    .an(an),
    .dp(dp)
);


   initial // initial block executes only once
        begin
        clk = 1;
        btnC = 0;
        btnU = 0;
        btnD = 0;
        btnR = 0;
        btnL = 0;
        sw = 16'h0000;
        #30000;         
        btnC = 0;
        btnU = 1;
        btnD = 0;
        btnR = 0;
        btnL = 0;
        sw = 16'h0702;
        #30000;
        btnC = 0;
        btnU = 0;
        btnD = 0;
        btnR = 0;
        btnL = 0;
        sw = 16'h0702;
        #30000;  
        btnC = 0;
        btnU = 0;
        btnD = 1;
        btnR = 0;
        btnL = 0;
        sw = 16'h0702;
        #30000;
        btnC = 0;
        btnU = 0;
        btnD = 1;
        btnR = 0;
        btnL = 0;
        sw = 16'h0702;
        #30000;
        btnC = 0;
        btnU = 0;
        btnD = 0;
        btnR = 0;
        btnL = 0;
        sw = 16'h0702;
        #30000;  
        btnC = 0;
        btnU = 0;
        btnD = 0;
        btnR = 1;
        btnL = 0;
        sw = 16'h0702;
        #30000;    
        btnC = 0;
        btnU = 0;
        btnD = 0;
        btnR = 0;
        btnL = 0;
        sw = 16'h0702;
        #30000;                                                  
        btnC = 0;
        btnU = 0;
        btnD = 0;
        btnR = 0;
        btnL = 1;
        sw = 16'h0702;
        #30000;
        btnC = 0;
        btnU = 0;
        btnD = 0;
        btnR = 0;
        btnL = 0;
        sw = 16'h0702;
        #30000;     
        end 
           
        always 
        #5  clk =  ! clk; 
endmodule
