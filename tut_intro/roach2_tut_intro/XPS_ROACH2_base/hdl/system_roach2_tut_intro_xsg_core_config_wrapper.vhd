-------------------------------------------------------------------------------
-- system_roach2_tut_intro_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_roach2_tut_intro_xsg_core_config_wrapper is
  port (
    clk : in std_logic;
    roach2_tut_intro_a_user_data_out : in std_logic_vector(31 downto 0);
    roach2_tut_intro_b_user_data_out : in std_logic_vector(31 downto 0);
    roach2_tut_intro_counter_ctrl_user_data_out : in std_logic_vector(31 downto 0);
    roach2_tut_intro_counter_value_user_data_in : out std_logic_vector(31 downto 0);
    roach2_tut_intro_gpio_gateway : out std_logic;
    roach2_tut_intro_gpio1_gateway : out std_logic;
    roach2_tut_intro_gpio2_gateway : out std_logic;
    roach2_tut_intro_gpio3_gateway : out std_logic;
    roach2_tut_intro_sum_a_b_user_data_in : out std_logic_vector(31 downto 0)
  );
end system_roach2_tut_intro_xsg_core_config_wrapper;

architecture STRUCTURE of system_roach2_tut_intro_xsg_core_config_wrapper is

  component roach2_tut_intro is
    port (
      clk : in std_logic;
      roach2_tut_intro_a_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_intro_b_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_intro_counter_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_intro_counter_value_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_intro_gpio_gateway : out std_logic;
      roach2_tut_intro_gpio1_gateway : out std_logic;
      roach2_tut_intro_gpio2_gateway : out std_logic;
      roach2_tut_intro_gpio3_gateway : out std_logic;
      roach2_tut_intro_sum_a_b_user_data_in : out std_logic_vector(31 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of roach2_tut_intro : component is "user_black_box";

begin

  roach2_tut_intro_XSG_core_config : roach2_tut_intro
    port map (
      clk => clk,
      roach2_tut_intro_a_user_data_out => roach2_tut_intro_a_user_data_out,
      roach2_tut_intro_b_user_data_out => roach2_tut_intro_b_user_data_out,
      roach2_tut_intro_counter_ctrl_user_data_out => roach2_tut_intro_counter_ctrl_user_data_out,
      roach2_tut_intro_counter_value_user_data_in => roach2_tut_intro_counter_value_user_data_in,
      roach2_tut_intro_gpio_gateway => roach2_tut_intro_gpio_gateway,
      roach2_tut_intro_gpio1_gateway => roach2_tut_intro_gpio1_gateway,
      roach2_tut_intro_gpio2_gateway => roach2_tut_intro_gpio2_gateway,
      roach2_tut_intro_gpio3_gateway => roach2_tut_intro_gpio3_gateway,
      roach2_tut_intro_sum_a_b_user_data_in => roach2_tut_intro_sum_a_b_user_data_in
    );

end architecture STRUCTURE;

