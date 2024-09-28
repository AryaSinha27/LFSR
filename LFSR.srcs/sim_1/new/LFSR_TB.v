`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2024 19:11:19
// Design Name: 
// Module Name: LFSR_TB
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


module LFSR_TB;
  reg clk;
  reg rst;
  wire [3:0] op;
  
  LFSR lfsr(clk,rst,op);
  
  initial begin
  $monitor("op=%b",op);
  clk=0; rst=1;
  #5 rst=0;
  
  #50; $finish;
  end
  
  always #2 clk=~clk;
  
  initial begin 
  $dumpfile("Dump.vcd");
  $dumpvars;
  
  end
  
  
  
endmodule
