`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 01:45:27 PM
// Design Name: 2 to 1 Multplexer
// Module Name: mux2to1
// Project Name: Combinational circuits
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

module mux2to1(input [1:0] X,
               input sel,
               output Y);
               
     wire _sel;    // net for complemented select line
     not N0(_sel,sel);  // complement of select
     
     wire z1,z2;
     and A0(z1,X[0],_sel),  // X[0] & X[1] are input 1 and 2 respectively
         A1(z2,X[1],sel);
     
     or G0(Y,z1,z2);       // Output connection
     
endmodule