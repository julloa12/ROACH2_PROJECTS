-------------------------------------------------------------------------------
-- system_snapshot_roach2_asiaa_adc5g_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library adc5g_dmux1_interface_v1_00_a;
use adc5g_dmux1_interface_v1_00_a.all;

entity system_snapshot_roach2_asiaa_adc5g_wrapper is
  port (
    adc_clk_p_i : in std_logic;
    adc_clk_n_i : in std_logic;
    adc_data0_p_i : in std_logic_vector(7 downto 0);
    adc_data0_n_i : in std_logic_vector(7 downto 0);
    adc_data1_p_i : in std_logic_vector(7 downto 0);
    adc_data1_n_i : in std_logic_vector(7 downto 0);
    adc_data2_p_i : in std_logic_vector(7 downto 0);
    adc_data2_n_i : in std_logic_vector(7 downto 0);
    adc_data3_p_i : in std_logic_vector(7 downto 0);
    adc_data3_n_i : in std_logic_vector(7 downto 0);
    adc_reset_o : out std_logic;
    adc_sync_p : in std_logic;
    adc_sync_n : in std_logic;
    sync : out std_logic;
    user_data_i0 : out std_logic_vector(7 downto 0);
    user_data_i1 : out std_logic_vector(7 downto 0);
    user_data_i2 : out std_logic_vector(7 downto 0);
    user_data_i3 : out std_logic_vector(7 downto 0);
    user_data_i4 : out std_logic_vector(7 downto 0);
    user_data_i5 : out std_logic_vector(7 downto 0);
    user_data_i6 : out std_logic_vector(7 downto 0);
    user_data_i7 : out std_logic_vector(7 downto 0);
    user_data_q0 : out std_logic_vector(7 downto 0);
    user_data_q1 : out std_logic_vector(7 downto 0);
    user_data_q2 : out std_logic_vector(7 downto 0);
    user_data_q3 : out std_logic_vector(7 downto 0);
    user_data_q4 : out std_logic_vector(7 downto 0);
    user_data_q5 : out std_logic_vector(7 downto 0);
    user_data_q6 : out std_logic_vector(7 downto 0);
    user_data_q7 : out std_logic_vector(7 downto 0);
    dcm_reset : in std_logic;
    ctrl_reset : in std_logic;
    ctrl_clk_in : in std_logic;
    ctrl_clk_out : out std_logic;
    ctrl_clk90_out : out std_logic;
    ctrl_clk180_out : out std_logic;
    ctrl_clk270_out : out std_logic;
    ctrl_dcm_locked : out std_logic;
    fifo_full_cnt : out std_logic_vector(15 downto 0);
    fifo_empty_cnt : out std_logic_vector(15 downto 0);
    dcm_psclk : in std_logic;
    dcm_psen : in std_logic;
    dcm_psincdec : in std_logic;
    dcm_psdone : out std_logic;
    datain_pin : in std_logic_vector(4 downto 0);
    datain_tap : in std_logic_vector(4 downto 0);
    tap_rst : in std_logic
  );
end system_snapshot_roach2_asiaa_adc5g_wrapper;

architecture STRUCTURE of system_snapshot_roach2_asiaa_adc5g_wrapper is

  component adc5g_dmux1_interface is
    generic (
      adc_bit_width : INTEGER;
      clkin_period : REAL;
      mmcm_m : REAL;
      mmcm_d : INTEGER;
      mmcm_o1 : INTEGER;
      mode : INTEGER;
      use_adc0 : INTEGER;
      use_adc1 : INTEGER;
      using_cntl : INTEGER;
      bufr_div : INTEGER;
      bufr_div_str : STRING
    );
    port (
      adc_clk_p_i : in std_logic;
      adc_clk_n_i : in std_logic;
      adc_data0_p_i : in std_logic_vector((adc_bit_width-1) downto 0);
      adc_data0_n_i : in std_logic_vector((adc_bit_width-1) downto 0);
      adc_data1_p_i : in std_logic_vector((adc_bit_width-1) downto 0);
      adc_data1_n_i : in std_logic_vector((adc_bit_width-1) downto 0);
      adc_data2_p_i : in std_logic_vector((adc_bit_width-1) downto 0);
      adc_data2_n_i : in std_logic_vector((adc_bit_width-1) downto 0);
      adc_data3_p_i : in std_logic_vector((adc_bit_width-1) downto 0);
      adc_data3_n_i : in std_logic_vector((adc_bit_width-1) downto 0);
      adc_reset_o : out std_logic;
      adc_sync_p : in std_logic;
      adc_sync_n : in std_logic;
      sync : out std_logic;
      user_data_i0 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_i1 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_i2 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_i3 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_i4 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_i5 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_i6 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_i7 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_q0 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_q1 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_q2 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_q3 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_q4 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_q5 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_q6 : out std_logic_vector((adc_bit_width-1) downto 0);
      user_data_q7 : out std_logic_vector((adc_bit_width-1) downto 0);
      dcm_reset : in std_logic;
      ctrl_reset : in std_logic;
      ctrl_clk_in : in std_logic;
      ctrl_clk_out : out std_logic;
      ctrl_clk90_out : out std_logic;
      ctrl_clk180_out : out std_logic;
      ctrl_clk270_out : out std_logic;
      ctrl_dcm_locked : out std_logic;
      fifo_full_cnt : out std_logic_vector(15 downto 0);
      fifo_empty_cnt : out std_logic_vector(15 downto 0);
      dcm_psclk : in std_logic;
      dcm_psen : in std_logic;
      dcm_psincdec : in std_logic;
      dcm_psdone : out std_logic;
      datain_pin : in std_logic_vector(4 downto 0);
      datain_tap : in std_logic_vector(4 downto 0);
      tap_rst : in std_logic
    );
  end component;

begin

  snapshot_roach2_asiaa_adc5g : adc5g_dmux1_interface
    generic map (
      adc_bit_width => 8,
      clkin_period => 7.2727,
      mmcm_m => 5.0000,
      mmcm_d => 1,
      mmcm_o1 => 10,
      mode => 0,
      use_adc0 => 1,
      use_adc1 => 0,
      using_cntl => 1,
      bufr_div => 1,
      bufr_div_str => "1"
    )
    port map (
      adc_clk_p_i => adc_clk_p_i,
      adc_clk_n_i => adc_clk_n_i,
      adc_data0_p_i => adc_data0_p_i,
      adc_data0_n_i => adc_data0_n_i,
      adc_data1_p_i => adc_data1_p_i,
      adc_data1_n_i => adc_data1_n_i,
      adc_data2_p_i => adc_data2_p_i,
      adc_data2_n_i => adc_data2_n_i,
      adc_data3_p_i => adc_data3_p_i,
      adc_data3_n_i => adc_data3_n_i,
      adc_reset_o => adc_reset_o,
      adc_sync_p => adc_sync_p,
      adc_sync_n => adc_sync_n,
      sync => sync,
      user_data_i0 => user_data_i0,
      user_data_i1 => user_data_i1,
      user_data_i2 => user_data_i2,
      user_data_i3 => user_data_i3,
      user_data_i4 => user_data_i4,
      user_data_i5 => user_data_i5,
      user_data_i6 => user_data_i6,
      user_data_i7 => user_data_i7,
      user_data_q0 => user_data_q0,
      user_data_q1 => user_data_q1,
      user_data_q2 => user_data_q2,
      user_data_q3 => user_data_q3,
      user_data_q4 => user_data_q4,
      user_data_q5 => user_data_q5,
      user_data_q6 => user_data_q6,
      user_data_q7 => user_data_q7,
      dcm_reset => dcm_reset,
      ctrl_reset => ctrl_reset,
      ctrl_clk_in => ctrl_clk_in,
      ctrl_clk_out => ctrl_clk_out,
      ctrl_clk90_out => ctrl_clk90_out,
      ctrl_clk180_out => ctrl_clk180_out,
      ctrl_clk270_out => ctrl_clk270_out,
      ctrl_dcm_locked => ctrl_dcm_locked,
      fifo_full_cnt => fifo_full_cnt,
      fifo_empty_cnt => fifo_empty_cnt,
      dcm_psclk => dcm_psclk,
      dcm_psen => dcm_psen,
      dcm_psincdec => dcm_psincdec,
      dcm_psdone => dcm_psdone,
      datain_pin => datain_pin,
      datain_tap => datain_tap,
      tap_rst => tap_rst
    );

end architecture STRUCTURE;

