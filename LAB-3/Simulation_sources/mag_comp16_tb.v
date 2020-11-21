`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 01:52:20 AM
// Design Name: 
// Module Name: mag_comp16_tb
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


module mag_comp16_tb;
  reg [15:0] A_test, B_test;
  wire eq,gt,lt;
  
  mag_comp16 DUT(A_test,B_test,eq,gt,lt);
  initial begin
    // Sample input sequences
        A_test  = 15'h10; B_test = 15'h00;
    #20 A_test  = 15'h1a; B_test = 15'h10;
    #20 A_test  = 15'h00; B_test = 15'h00;
    #20 A_test  = 15'h0e; B_test = 15'he0;
    #20 A_test  = 15'h10; B_test = 15'h10;
    #20 A_test  = 15'h34; B_test = 15'h11;
    #20 A_test  = 15'h12; B_test = 15'h21;
    #20 A_test  = 15'h10; B_test = 15'hf0;
    #20 $finish;
  end
endmodule
