`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/18/2020 02:15:51 AM
// Design Name: 
// Module Name: leading_zeros_tb
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


module leading_zeros_tb;
  reg [7:0] NUM;
  wire [3:0] ZEROS;
  
  leading_zeros DUT(NUM, ZEROS);
  initial begin
    // sample input sequences
        NUM = 8'b00100100;
    #50 NUM = 8'b00000100;
    #50 NUM = 8'b01100100;
    #50 NUM = 8'b00000001;
    #50 NUM = 8'b10100101;
    #50 NUM = 8'b00001100;
    #50 NUM = 8'b00000000;
    #50 NUM = 8'b00000011;
    #50 $finish;    
  end
endmodule
