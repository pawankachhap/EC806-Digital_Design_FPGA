`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2020 08:41:15 PM
// Design Name: 
// Module Name: count_one
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


module count_one(input [7:0] num,
                 output reg [3:0] count);
                 
    integer i;
    always @(num) begin
      count = 'b0;
      for(i=0;i<8;i=i+1) begin
        if(num[i] == 1'b1)
          count = count + 1;
      end
    end
endmodule
