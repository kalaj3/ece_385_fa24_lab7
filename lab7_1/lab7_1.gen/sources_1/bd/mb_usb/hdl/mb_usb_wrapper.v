//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Oct 31 17:51:53 2024
//Host        : Jakes_ZenBook running 64-bit major release  (build 9200)
//Command     : generate_target mb_usb_wrapper.bd
//Design      : mb_usb_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_usb_wrapper
   (HMDI_0_tmds_clk_n,
    HMDI_0_tmds_clk_p,
    HMDI_0_tmds_data_n,
    HMDI_0_tmds_data_p,
    clk_100MHz,
    reset_rtl_0,
    uart_rtl_0_rxd,
    uart_rtl_0_txd);
  output HMDI_0_tmds_clk_n;
  output HMDI_0_tmds_clk_p;
  output [2:0]HMDI_0_tmds_data_n;
  output [2:0]HMDI_0_tmds_data_p;
  input clk_100MHz;
  input reset_rtl_0;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;

  wire HMDI_0_tmds_clk_n;
  wire HMDI_0_tmds_clk_p;
  wire [2:0]HMDI_0_tmds_data_n;
  wire [2:0]HMDI_0_tmds_data_p;
  wire clk_100MHz;
  wire reset_rtl_0;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;

  mb_usb mb_usb_i
       (.HMDI_0_tmds_clk_n(HMDI_0_tmds_clk_n),
        .HMDI_0_tmds_clk_p(HMDI_0_tmds_clk_p),
        .HMDI_0_tmds_data_n(HMDI_0_tmds_data_n),
        .HMDI_0_tmds_data_p(HMDI_0_tmds_data_p),
        .clk_100MHz(clk_100MHz),
        .reset_rtl_0(reset_rtl_0),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd));
endmodule
