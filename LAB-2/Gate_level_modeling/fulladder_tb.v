`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 02:05:38 PM
// Design Name: 
// Module Name: fulladder_tb
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

module fulladder_tb();
  reg a,b,cin;
  wire sum,cout;
  
  fulladder DUT(a,b,cin,sum,cout);  // fulladder module instantiation
  
  integer i;
  initial
        begin
          for(i=0;i<8;i=i+1)
            begin
              {a,b,cin} = i;
              #10;
            end
          $finish;
        end
endmodule
