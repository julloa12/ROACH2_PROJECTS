-------------------------------------------------------------------------------
-- system_snap2in_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_snap2in_xsg_core_config_wrapper is
  port (
    clk : in std_logic;
    snap2in_adc_mkid_4x_user_data_i0 : in std_logic_vector(11 downto 0);
    snap2in_adc_mkid_4x_user_data_i1 : in std_logic_vector(11 downto 0);
    snap2in_adc_mkid_4x_user_data_i2 : in std_logic_vector(11 downto 0);
    snap2in_adc_mkid_4x_user_data_i3 : in std_logic_vector(11 downto 0);
    snap2in_adc_mkid_4x_user_data_q0 : in std_logic_vector(11 downto 0);
    snap2in_adc_mkid_4x_user_data_q1 : in std_logic_vector(11 downto 0);
    snap2in_adc_mkid_4x_user_data_q2 : in std_logic_vector(11 downto 0);
    snap2in_adc_mkid_4x_user_data_q3 : in std_logic_vector(11 downto 0);
    snap2in_adc_mkid_4x_user_sync : in std_logic;
    snap2in_adcsnap0_bram_data_out : in std_logic_vector(127 downto 0);
    snap2in_adcsnap0_bram_addr : out std_logic_vector(9 downto 0);
    snap2in_adcsnap0_bram_data_in : out std_logic_vector(127 downto 0);
    snap2in_adcsnap0_bram_we : out std_logic;
    snap2in_adcsnap0_ctrl_user_data_out : in std_logic_vector(31 downto 0);
    snap2in_adcsnap0_status_user_data_in : out std_logic_vector(31 downto 0);
    snap2in_adcsnap0_trig_offset_user_data_out : in std_logic_vector(31 downto 0);
    snap2in_gpio_gateway : out std_logic;
    snap2in_gpio1_gateway : out std_logic;
    snap2in_gpio2_gateway : out std_logic;
    snap2in_gpio3_gateway : out std_logic
  );
end system_snap2in_xsg_core_config_wrapper;

architecture STRUCTURE of system_snap2in_xsg_core_config_wrapper is

  component snap2in is
    port (
      clk : in std_logic;
      snap2in_adc_mkid_4x_user_data_i0 : in std_logic_vector(11 downto 0);
      snap2in_adc_mkid_4x_user_data_i1 : in std_logic_vector(11 downto 0);
      snap2in_adc_mkid_4x_user_data_i2 : in std_logic_vector(11 downto 0);
      snap2in_adc_mkid_4x_user_data_i3 : in std_logic_vector(11 downto 0);
      snap2in_adc_mkid_4x_user_data_q0 : in std_logic_vector(11 downto 0);
      snap2in_adc_mkid_4x_user_data_q1 : in std_logic_vector(11 downto 0);
      snap2in_adc_mkid_4x_user_data_q2 : in std_logic_vector(11 downto 0);
      snap2in_adc_mkid_4x_user_data_q3 : in std_logic_vector(11 downto 0);
      snap2in_adc_mkid_4x_user_sync : in std_logic;
      snap2in_adcsnap0_bram_data_out : in std_logic_vector(127 downto 0);
      snap2in_adcsnap0_bram_addr : out std_logic_vector(9 downto 0);
      snap2in_adcsnap0_bram_data_in : out std_logic_vector(127 downto 0);
      snap2in_adcsnap0_bram_we : out std_logic;
      snap2in_adcsnap0_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      snap2in_adcsnap0_status_user_data_in : out std_logic_vector(31 downto 0);
      snap2in_adcsnap0_trig_offset_user_data_out : in std_logic_vector(31 downto 0);
      snap2in_gpio_gateway : out std_logic;
      snap2in_gpio1_gateway : out std_logic;
      snap2in_gpio2_gateway : out std_logic;
      snap2in_gpio3_gateway : out std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of snap2in : component is "user_black_box";

begin

  snap2in_XSG_core_config : snap2in
    port map (
      clk => clk,
      snap2in_adc_mkid_4x_user_data_i0 => snap2in_adc_mkid_4x_user_data_i0,
      snap2in_adc_mkid_4x_user_data_i1 => snap2in_adc_mkid_4x_user_data_i1,
      snap2in_adc_mkid_4x_user_data_i2 => snap2in_adc_mkid_4x_user_data_i2,
      snap2in_adc_mkid_4x_user_data_i3 => snap2in_adc_mkid_4x_user_data_i3,
      snap2in_adc_mkid_4x_user_data_q0 => snap2in_adc_mkid_4x_user_data_q0,
      snap2in_adc_mkid_4x_user_data_q1 => snap2in_adc_mkid_4x_user_data_q1,
      snap2in_adc_mkid_4x_user_data_q2 => snap2in_adc_mkid_4x_user_data_q2,
      snap2in_adc_mkid_4x_user_data_q3 => snap2in_adc_mkid_4x_user_data_q3,
      snap2in_adc_mkid_4x_user_sync => snap2in_adc_mkid_4x_user_sync,
      snap2in_adcsnap0_bram_data_out => snap2in_adcsnap0_bram_data_out,
      snap2in_adcsnap0_bram_addr => snap2in_adcsnap0_bram_addr,
      snap2in_adcsnap0_bram_data_in => snap2in_adcsnap0_bram_data_in,
      snap2in_adcsnap0_bram_we => snap2in_adcsnap0_bram_we,
      snap2in_adcsnap0_ctrl_user_data_out => snap2in_adcsnap0_ctrl_user_data_out,
      snap2in_adcsnap0_status_user_data_in => snap2in_adcsnap0_status_user_data_in,
      snap2in_adcsnap0_trig_offset_user_data_out => snap2in_adcsnap0_trig_offset_user_data_out,
      snap2in_gpio_gateway => snap2in_gpio_gateway,
      snap2in_gpio1_gateway => snap2in_gpio1_gateway,
      snap2in_gpio2_gateway => snap2in_gpio2_gateway,
      snap2in_gpio3_gateway => snap2in_gpio3_gateway
    );

end architecture STRUCTURE;

