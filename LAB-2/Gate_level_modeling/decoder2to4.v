`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 01:45:27 PM
// Design Name: 2 to 4 decoder
// Module Name: decoder2to4
// Project Name: combinational circuits
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


module decoder2to4(input [1:0] X, 
                   input _en,
                   output [3:0] Y);
                   
     // _en represents active-low enable signal     
     nand N0(Y[0],~_en,~X[0],~X[1]),   // NAND gate for active-low output
          N1(Y[1],~_en,X[0],~X[1]),
          N2(Y[2],~_en,~X[0],X[1]),
          N3(Y[3],~_en,X[0],X[1]);
          
endmodule