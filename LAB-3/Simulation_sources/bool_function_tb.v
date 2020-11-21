`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 01:05:01 AM
// Design Name: 
// Module Name: bool_function_tb
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


module bool_function_tb;
  reg V,W,X,Y,Z;
  wire Fout_tb;
  
  bool_function DUT(V,W,X,Y,Z,Fout_tb);
  initial begin
    // sample input sequence
    {V,W,X,Y,Z} = 5'b11101;
    #50 {V,W,X,Y,Z} = 5'b00000;
    #50 {V,W,X,Y,Z} = 5'b00010;
    #50 {V,W,X,Y,Z} = 5'b00101;
    #50 {V,W,X,Y,Z} = 5'b10001;
    #50 {V,W,X,Y,Z} = 5'b10101;
    #50 {V,W,X,Y,Z} = 5'b11100;
    #50 {V,W,X,Y,Z} = 5'b11111;
    #50 $finish;
  end
endmodule
