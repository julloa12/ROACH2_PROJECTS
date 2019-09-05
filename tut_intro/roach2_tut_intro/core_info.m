% roach2_tut_intro/XSG_core_config
roach2_tut_intro_XSG_core_config_type         = 'xps_xsg';
roach2_tut_intro_XSG_core_config_param        = '';

% roach2_tut_intro/a
roach2_tut_intro_a_type         = 'xps_sw_reg';
roach2_tut_intro_a_param        = 'in';
roach2_tut_intro_a_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_intro_a_addr_start   = hex2dec('01000000');
roach2_tut_intro_a_addr_end     = hex2dec('010000FF');

% roach2_tut_intro/b
roach2_tut_intro_b_type         = 'xps_sw_reg';
roach2_tut_intro_b_param        = 'in';
roach2_tut_intro_b_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_intro_b_addr_start   = hex2dec('01000100');
roach2_tut_intro_b_addr_end     = hex2dec('010001FF');

% roach2_tut_intro/counter_ctrl
roach2_tut_intro_counter_ctrl_type         = 'xps_sw_reg';
roach2_tut_intro_counter_ctrl_param        = 'in';
roach2_tut_intro_counter_ctrl_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_intro_counter_ctrl_addr_start   = hex2dec('01000200');
roach2_tut_intro_counter_ctrl_addr_end     = hex2dec('010002FF');

% roach2_tut_intro/counter_value
roach2_tut_intro_counter_value_type         = 'xps_sw_reg';
roach2_tut_intro_counter_value_param        = 'out';
roach2_tut_intro_counter_value_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_intro_counter_value_addr_start   = hex2dec('01000300');
roach2_tut_intro_counter_value_addr_end     = hex2dec('010003FF');

% roach2_tut_intro/gpio
roach2_tut_intro_gpio_type         = 'xps_gpio';
roach2_tut_intro_gpio_param        = '';
roach2_tut_intro_gpio_ip_name      = 'gpio_simulink2ext';

% roach2_tut_intro/gpio1
roach2_tut_intro_gpio1_type         = 'xps_gpio';
roach2_tut_intro_gpio1_param        = '';
roach2_tut_intro_gpio1_ip_name      = 'gpio_simulink2ext';

% roach2_tut_intro/gpio2
roach2_tut_intro_gpio2_type         = 'xps_gpio';
roach2_tut_intro_gpio2_param        = '';
roach2_tut_intro_gpio2_ip_name      = 'gpio_simulink2ext';

% roach2_tut_intro/gpio3
roach2_tut_intro_gpio3_type         = 'xps_gpio';
roach2_tut_intro_gpio3_param        = '';
roach2_tut_intro_gpio3_ip_name      = 'gpio_simulink2ext';

% roach2_tut_intro/sum_a_b
roach2_tut_intro_sum_a_b_type         = 'xps_sw_reg';
roach2_tut_intro_sum_a_b_param        = 'out';
roach2_tut_intro_sum_a_b_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_intro_sum_a_b_addr_start   = hex2dec('01000400');
roach2_tut_intro_sum_a_b_addr_end     = hex2dec('010004FF');

