`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 12:40:36 AM
// Design Name: 
// Module Name: count_one_tb
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


module count_one_tb;
  reg [7:0] NUM;
  wire [3:0] COUNT;

  count_one DUT(.num(NUM), .count(COUNT));
  initial begin
    NUM  = 8'b0000_0000;
    #20 NUM  = 8'b0010_0010;
    #20 NUM  = 8'b1100_0111;
    #20 NUM  = 8'b0000_0001;
    #20 NUM  = 8'b0111_1100;
    #20 NUM  = 8'b1000_0011;
    #20 NUM  = 8'b1010_1010;
    #20 NUM  = 8'b1111_1111;
    #20;
    $finish;
  end
endmodule
