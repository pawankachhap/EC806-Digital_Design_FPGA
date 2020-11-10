`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 08:51:00 PM
// Design Name: 
// Module Name: mux4to1_tb
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


module mux4to1_tb();

reg [3:0] X;
reg [1:0] sel;
wire Y;

mux4to1 DUT(X,sel,Y);  // Design module instantiation

integer i;
initial
begin
for(i=0;i<64;i=i+1)
  begin
    {X,sel} = i;
    #10;
  end
  $finish;
end 
endmodule
