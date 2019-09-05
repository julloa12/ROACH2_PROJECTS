//-----------------------------------------------------------------------------
// system_opb_adc5g_controller_0_wrapper.v
//-----------------------------------------------------------------------------

module system_opb_adc5g_controller_0_wrapper
  (
    OPB_Clk,
    OPB_Rst,
    Sl_DBus,
    Sl_errAck,
    Sl_retry,
    Sl_toutSup,
    Sl_xferAck,
    OPB_ABus,
    OPB_BE,
    OPB_DBus,
    OPB_RNW,
    OPB_select,
    OPB_seqAddr,
    adc0_adc3wire_clk,
    adc0_adc3wire_data,
    adc0_adc3wire_data_o,
    adc0_adc3wire_spi_rst,
    adc0_modepin,
    adc0_reset,
    adc0_dcm_reset,
    adc0_dcm_locked,
    adc0_fifo_full_cnt,
    adc0_fifo_empty_cnt,
    adc0_psclk,
    adc0_psen,
    adc0_psincdec,
    adc0_psdone,
    adc0_clk,
    adc0_datain_pin,
    adc0_datain_tap,
    adc0_tap_rst,
    adc1_adc3wire_clk,
    adc1_adc3wire_data,
    adc1_adc3wire_data_o,
    adc1_adc3wire_spi_rst,
    adc1_modepin,
    adc1_reset,
    adc1_dcm_reset,
    adc1_dcm_locked,
    adc1_fifo_full_cnt,
    adc1_fifo_empty_cnt,
    adc1_psclk,
    adc1_psen,
    adc1_psincdec,
    adc1_psdone,
    adc1_clk,
    adc1_datain_pin,
    adc1_datain_tap,
    adc1_tap_rst
  );
  input OPB_Clk;
  input OPB_Rst;
  output [0:31] Sl_DBus;
  output Sl_errAck;
  output Sl_retry;
  output Sl_toutSup;
  output Sl_xferAck;
  input [0:31] OPB_ABus;
  input [0:3] OPB_BE;
  input [0:31] OPB_DBus;
  input OPB_RNW;
  input OPB_select;
  input OPB_seqAddr;
  output adc0_adc3wire_clk;
  output adc0_adc3wire_data;
  input adc0_adc3wire_data_o;
  output adc0_adc3wire_spi_rst;
  output adc0_modepin;
  output adc0_reset;
  output adc0_dcm_reset;
  input adc0_dcm_locked;
  input [15:0] adc0_fifo_full_cnt;
  input [15:0] adc0_fifo_empty_cnt;
  output adc0_psclk;
  output adc0_psen;
  output adc0_psincdec;
  input adc0_psdone;
  input adc0_clk;
  output [4:0] adc0_datain_pin;
  output [4:0] adc0_datain_tap;
  output adc0_tap_rst;
  output adc1_adc3wire_clk;
  output adc1_adc3wire_data;
  input adc1_adc3wire_data_o;
  output adc1_adc3wire_spi_rst;
  output adc1_modepin;
  output adc1_reset;
  output adc1_dcm_reset;
  input adc1_dcm_locked;
  input [15:0] adc1_fifo_full_cnt;
  input [15:0] adc1_fifo_empty_cnt;
  output adc1_psclk;
  output adc1_psen;
  output adc1_psincdec;
  input adc1_psdone;
  input adc1_clk;
  output [4:0] adc1_datain_pin;
  output [4:0] adc1_datain_tap;
  output adc1_tap_rst;

  opb_adc5g_controller
    #(
      .C_BASEADDR ( 32'h00010000 ),
      .C_HIGHADDR ( 32'h0001ffff ),
      .C_OPB_AWIDTH ( 32 ),
      .C_OPB_DWIDTH ( 32 ),
      .C_FAMILY ( "virtex6" ),
      .INITIAL_CONFIG_MODE_0 ( 0 ),
      .INITIAL_CONFIG_MODE_1 ( 0 )
    )
    opb_adc5g_controller_0 (
      .OPB_Clk ( OPB_Clk ),
      .OPB_Rst ( OPB_Rst ),
      .Sl_DBus ( Sl_DBus ),
      .Sl_errAck ( Sl_errAck ),
      .Sl_retry ( Sl_retry ),
      .Sl_toutSup ( Sl_toutSup ),
      .Sl_xferAck ( Sl_xferAck ),
      .OPB_ABus ( OPB_ABus ),
      .OPB_BE ( OPB_BE ),
      .OPB_DBus ( OPB_DBus ),
      .OPB_RNW ( OPB_RNW ),
      .OPB_select ( OPB_select ),
      .OPB_seqAddr ( OPB_seqAddr ),
      .adc0_adc3wire_clk ( adc0_adc3wire_clk ),
      .adc0_adc3wire_data ( adc0_adc3wire_data ),
      .adc0_adc3wire_data_o ( adc0_adc3wire_data_o ),
      .adc0_adc3wire_spi_rst ( adc0_adc3wire_spi_rst ),
      .adc0_modepin ( adc0_modepin ),
      .adc0_reset ( adc0_reset ),
      .adc0_dcm_reset ( adc0_dcm_reset ),
      .adc0_dcm_locked ( adc0_dcm_locked ),
      .adc0_fifo_full_cnt ( adc0_fifo_full_cnt ),
      .adc0_fifo_empty_cnt ( adc0_fifo_empty_cnt ),
      .adc0_psclk ( adc0_psclk ),
      .adc0_psen ( adc0_psen ),
      .adc0_psincdec ( adc0_psincdec ),
      .adc0_psdone ( adc0_psdone ),
      .adc0_clk ( adc0_clk ),
      .adc0_datain_pin ( adc0_datain_pin ),
      .adc0_datain_tap ( adc0_datain_tap ),
      .adc0_tap_rst ( adc0_tap_rst ),
      .adc1_adc3wire_clk ( adc1_adc3wire_clk ),
      .adc1_adc3wire_data ( adc1_adc3wire_data ),
      .adc1_adc3wire_data_o ( adc1_adc3wire_data_o ),
      .adc1_adc3wire_spi_rst ( adc1_adc3wire_spi_rst ),
      .adc1_modepin ( adc1_modepin ),
      .adc1_reset ( adc1_reset ),
      .adc1_dcm_reset ( adc1_dcm_reset ),
      .adc1_dcm_locked ( adc1_dcm_locked ),
      .adc1_fifo_full_cnt ( adc1_fifo_full_cnt ),
      .adc1_fifo_empty_cnt ( adc1_fifo_empty_cnt ),
      .adc1_psclk ( adc1_psclk ),
      .adc1_psen ( adc1_psen ),
      .adc1_psincdec ( adc1_psincdec ),
      .adc1_psdone ( adc1_psdone ),
      .adc1_clk ( adc1_clk ),
      .adc1_datain_pin ( adc1_datain_pin ),
      .adc1_datain_tap ( adc1_datain_tap ),
      .adc1_tap_rst ( adc1_tap_rst )
    );

endmodule

