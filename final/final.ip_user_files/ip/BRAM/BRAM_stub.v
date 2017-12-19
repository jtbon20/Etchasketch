// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.1 (win64) Build 1538259 Fri Apr  8 15:45:27 MDT 2016
// Date        : Thu Jun 01 20:35:53 2017
// Host        : mecha-7 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub o:/ENGS31/final/final.srcs/sources_1/ip/BRAM/BRAM_stub.v
// Design      : BRAM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_2,Vivado 2016.1" *)
module BRAM(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[16:0],dina[7:0],clkb,addrb[16:0],doutb[7:0]" */;
  input clka;
  input [0:0]wea;
  input [16:0]addra;
  input [7:0]dina;
  input clkb;
  input [16:0]addrb;
  output [7:0]doutb;
endmodule
