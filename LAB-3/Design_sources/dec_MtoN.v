`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2020 04:56:12 PM
// Design Name: 
// Module Name: dec_MtoN
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

module dec_MtoN(Din, _en, Dout);
    
    input [M-1:0] Din;
    input _en;
    output [N-1:0] Dout;
    
    parameter M = 3;
    parameter N = 8;
    
    reg [N-1:0] temp_out;
    
    always @(Din, _en) begin
      if(!_en)
        temp_out = 'b1 << Din;
      else
        temp_out = 0;
    end
    assign Dout = (~temp_out);
endmodule