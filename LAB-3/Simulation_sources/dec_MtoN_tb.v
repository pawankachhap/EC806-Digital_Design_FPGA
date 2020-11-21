`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2020 07:45:47 PM
// Design Name: 
// Module Name: dec_MtoN_tb
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


module dec_MtoN_tb;
  parameter M_TB = 3;
  parameter N_TB = 8;

  reg [M_TB-1:0] Din;
  reg _en;
  wire [N_TB-1:0] Dout;
  
  dec_MtoN #(.M(M_TB), .N(N_TB)) DUT(.Din(Din), ._en(_en), .Dout(Dout));
  
  integer i;
  initial begin
    _en = 1;    //initializing _en with 1
    for(i=0;i<N_TB;i=i+1)
      #50 {_en,Din} = i;  
    $finish;
  end
endmodule
