//-----------------------------------------------------------------------------
// system_snap2in_adc_mkid_4x_wrapper.v
//-----------------------------------------------------------------------------

module system_snap2in_adc_mkid_4x_wrapper
  (
    DRDY_I_p,
    DRDY_I_n,
    DRDY_Q_p,
    DRDY_Q_n,
    DI_p,
    DI_n,
    DQ_p,
    DQ_n,
    ADC_ext_in_p,
    ADC_ext_in_n,
    fpga_clk,
    adc_clk_out,
    adc_clk90_out,
    adc_clk180_out,
    adc_clk270_out,
    adc_dcm_locked,
    user_data_i0,
    user_data_i1,
    user_data_i2,
    user_data_i3,
    user_data_q0,
    user_data_q1,
    user_data_q2,
    user_data_q3,
    user_sync
  );
  input DRDY_I_p;
  input DRDY_I_n;
  input DRDY_Q_p;
  input DRDY_Q_n;
  input [11:0] DI_p;
  input [11:0] DI_n;
  input [11:0] DQ_p;
  input [11:0] DQ_n;
  input ADC_ext_in_p;
  input ADC_ext_in_n;
  input fpga_clk;
  output adc_clk_out;
  output adc_clk90_out;
  output adc_clk180_out;
  output adc_clk270_out;
  output adc_dcm_locked;
  output [11:0] user_data_i0;
  output [11:0] user_data_i1;
  output [11:0] user_data_i2;
  output [11:0] user_data_i3;
  output [11:0] user_data_q0;
  output [11:0] user_data_q1;
  output [11:0] user_data_q2;
  output [11:0] user_data_q3;
  output user_sync;

  adc_mkid_4x_interface
    #(
      .OUTPUT_CLK ( 1 )
    )
    snap2in_adc_mkid_4x (
      .DRDY_I_p ( DRDY_I_p ),
      .DRDY_I_n ( DRDY_I_n ),
      .DRDY_Q_p ( DRDY_Q_p ),
      .DRDY_Q_n ( DRDY_Q_n ),
      .DI_p ( DI_p ),
      .DI_n ( DI_n ),
      .DQ_p ( DQ_p ),
      .DQ_n ( DQ_n ),
      .ADC_ext_in_p ( ADC_ext_in_p ),
      .ADC_ext_in_n ( ADC_ext_in_n ),
      .fpga_clk ( fpga_clk ),
      .adc_clk_out ( adc_clk_out ),
      .adc_clk90_out ( adc_clk90_out ),
      .adc_clk180_out ( adc_clk180_out ),
      .adc_clk270_out ( adc_clk270_out ),
      .adc_dcm_locked ( adc_dcm_locked ),
      .user_data_i0 ( user_data_i0 ),
      .user_data_i1 ( user_data_i1 ),
      .user_data_i2 ( user_data_i2 ),
      .user_data_i3 ( user_data_i3 ),
      .user_data_q0 ( user_data_q0 ),
      .user_data_q1 ( user_data_q1 ),
      .user_data_q2 ( user_data_q2 ),
      .user_data_q3 ( user_data_q3 ),
      .user_sync ( user_sync )
    );

endmodule

