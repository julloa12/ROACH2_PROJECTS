----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity roach2_tut_intro_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
      roach2_tut_intro_a_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_intro_b_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_intro_counter_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_intro_counter_value_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_intro_gpio1_gateway: out std_logic; 
      roach2_tut_intro_gpio2_gateway: out std_logic; 
      roach2_tut_intro_gpio3_gateway: out std_logic; 
      roach2_tut_intro_gpio_gateway: out std_logic; 
      roach2_tut_intro_sum_a_b_user_data_in: out std_logic_vector(31 downto 0)
    );
end roach2_tut_intro_cw_stub;

architecture Behavioral of roach2_tut_intro_cw_stub is

  component roach2_tut_intro_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
      roach2_tut_intro_a_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_intro_b_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_intro_counter_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_intro_counter_value_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_intro_gpio1_gateway: out std_logic; 
      roach2_tut_intro_gpio2_gateway: out std_logic; 
      roach2_tut_intro_gpio3_gateway: out std_logic; 
      roach2_tut_intro_gpio_gateway: out std_logic; 
      roach2_tut_intro_sum_a_b_user_data_in: out std_logic_vector(31 downto 0)
    );
  end component;
begin

roach2_tut_intro_cw_i : roach2_tut_intro_cw
  port map (
    ce => ce,
    clk => clk,
    roach2_tut_intro_a_user_data_out => roach2_tut_intro_a_user_data_out,
    roach2_tut_intro_b_user_data_out => roach2_tut_intro_b_user_data_out,
    roach2_tut_intro_counter_ctrl_user_data_out => roach2_tut_intro_counter_ctrl_user_data_out,
    roach2_tut_intro_counter_value_user_data_in => roach2_tut_intro_counter_value_user_data_in,
    roach2_tut_intro_gpio1_gateway => roach2_tut_intro_gpio1_gateway,
    roach2_tut_intro_gpio2_gateway => roach2_tut_intro_gpio2_gateway,
    roach2_tut_intro_gpio3_gateway => roach2_tut_intro_gpio3_gateway,
    roach2_tut_intro_gpio_gateway => roach2_tut_intro_gpio_gateway,
    roach2_tut_intro_sum_a_b_user_data_in => roach2_tut_intro_sum_a_b_user_data_in);
end Behavioral;

