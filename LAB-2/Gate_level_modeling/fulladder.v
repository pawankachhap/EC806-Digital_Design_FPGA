`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 01:45:27 PM
// Design Name: 
// Module Name: fulladder
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


module fulladder(input a,b,cin,
                 output sum,cout
    );
    
    xor X0(sum,a,b,cin);    // XOR gate instantiation for sum
    
    wire z1,z2,z3;
    
    and A0(z1,a,b),         // Carry-out gate connections
        A1(z2,b,cin),
        A3(z3,a,cin);
    or O1(cout,z1,z2,z3);
    
endmodule
