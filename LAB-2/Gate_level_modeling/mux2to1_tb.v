`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 02:05:38 PM
// Design Name: 
// Module Name: mux2to1_tb
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

module mux2to1_tb();
  reg [1:0] x;
  reg sel;
  wire y;
  
  mux2to1 DUT(x,sel,y);  // mux module instantiation
  
  integer i;
  initial
          begin
            for(i=0;i<8;i=i+1)
              begin
                {x,sel} = i;
                #10;
              end
            $finish;
          end
endmodule