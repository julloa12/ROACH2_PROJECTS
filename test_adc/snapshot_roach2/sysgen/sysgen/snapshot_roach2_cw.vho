
-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component snapshot_roach2_cw  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
    snapshot_roach2_asiaa_adc5g_sync: in std_logic; 
    snapshot_roach2_asiaa_adc5g_user_data_i0: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_i1: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_i2: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_i3: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_i4: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_i5: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_i6: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_i7: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_q0: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_q1: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_q2: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_q3: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_q4: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_q5: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_q6: in std_logic_vector(7 downto 0); 
    snapshot_roach2_asiaa_adc5g_user_data_q7: in std_logic_vector(7 downto 0); 
    snapshot_roach2_snapshot_bram_data_out: in std_logic_vector(127 downto 0); 
    snapshot_roach2_snapshot_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    snapshot_roach2_snapshot_bram_addr: out std_logic_vector(9 downto 0); 
    snapshot_roach2_snapshot_bram_data_in: out std_logic_vector(127 downto 0); 
    snapshot_roach2_snapshot_bram_we: out std_logic; 
    snapshot_roach2_snapshot_status_user_data_in: out std_logic_vector(31 downto 0)
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : snapshot_roach2_cw
  port map (
    ce => ce,
    clk => clk,
    snapshot_roach2_asiaa_adc5g_sync => snapshot_roach2_asiaa_adc5g_sync,
    snapshot_roach2_asiaa_adc5g_user_data_i0 => snapshot_roach2_asiaa_adc5g_user_data_i0,
    snapshot_roach2_asiaa_adc5g_user_data_i1 => snapshot_roach2_asiaa_adc5g_user_data_i1,
    snapshot_roach2_asiaa_adc5g_user_data_i2 => snapshot_roach2_asiaa_adc5g_user_data_i2,
    snapshot_roach2_asiaa_adc5g_user_data_i3 => snapshot_roach2_asiaa_adc5g_user_data_i3,
    snapshot_roach2_asiaa_adc5g_user_data_i4 => snapshot_roach2_asiaa_adc5g_user_data_i4,
    snapshot_roach2_asiaa_adc5g_user_data_i5 => snapshot_roach2_asiaa_adc5g_user_data_i5,
    snapshot_roach2_asiaa_adc5g_user_data_i6 => snapshot_roach2_asiaa_adc5g_user_data_i6,
    snapshot_roach2_asiaa_adc5g_user_data_i7 => snapshot_roach2_asiaa_adc5g_user_data_i7,
    snapshot_roach2_asiaa_adc5g_user_data_q0 => snapshot_roach2_asiaa_adc5g_user_data_q0,
    snapshot_roach2_asiaa_adc5g_user_data_q1 => snapshot_roach2_asiaa_adc5g_user_data_q1,
    snapshot_roach2_asiaa_adc5g_user_data_q2 => snapshot_roach2_asiaa_adc5g_user_data_q2,
    snapshot_roach2_asiaa_adc5g_user_data_q3 => snapshot_roach2_asiaa_adc5g_user_data_q3,
    snapshot_roach2_asiaa_adc5g_user_data_q4 => snapshot_roach2_asiaa_adc5g_user_data_q4,
    snapshot_roach2_asiaa_adc5g_user_data_q5 => snapshot_roach2_asiaa_adc5g_user_data_q5,
    snapshot_roach2_asiaa_adc5g_user_data_q6 => snapshot_roach2_asiaa_adc5g_user_data_q6,
    snapshot_roach2_asiaa_adc5g_user_data_q7 => snapshot_roach2_asiaa_adc5g_user_data_q7,
    snapshot_roach2_snapshot_bram_data_out => snapshot_roach2_snapshot_bram_data_out,
    snapshot_roach2_snapshot_ctrl_user_data_out => snapshot_roach2_snapshot_ctrl_user_data_out,
    snapshot_roach2_snapshot_bram_addr => snapshot_roach2_snapshot_bram_addr,
    snapshot_roach2_snapshot_bram_data_in => snapshot_roach2_snapshot_bram_data_in,
    snapshot_roach2_snapshot_bram_we => snapshot_roach2_snapshot_bram_we,
    snapshot_roach2_snapshot_status_user_data_in => snapshot_roach2_snapshot_status_user_data_in);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
