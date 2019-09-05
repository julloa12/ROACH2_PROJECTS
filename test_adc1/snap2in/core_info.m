% snap2in/XSG_core_config
snap2in_XSG_core_config_type         = 'xps_xsg';
snap2in_XSG_core_config_param        = '';

% snap2in/adc_mkid_4x
snap2in_adc_mkid_4x_type         = 'xps_adc_mkid_4x';
snap2in_adc_mkid_4x_param        = '';
snap2in_adc_mkid_4x_ip_name      = 'adc_mkid_4x_interface';

% snap2in/adcsnap0/bram
snap2in_adcsnap0_bram_type         = 'xps_bram';
snap2in_adcsnap0_bram_param        = '4096';
snap2in_adcsnap0_bram_ip_name      = 'bram_if';
snap2in_adcsnap0_bram_addr_start   = hex2dec('01000000');
snap2in_adcsnap0_bram_addr_end     = hex2dec('01003FFF');

% snap2in/adcsnap0/ctrl
snap2in_adcsnap0_ctrl_type         = 'xps_sw_reg';
snap2in_adcsnap0_ctrl_param        = 'in';
snap2in_adcsnap0_ctrl_ip_name      = 'opb_register_ppc2simulink';
snap2in_adcsnap0_ctrl_addr_start   = hex2dec('01004000');
snap2in_adcsnap0_ctrl_addr_end     = hex2dec('010040FF');

% snap2in/adcsnap0/status
snap2in_adcsnap0_status_type         = 'xps_sw_reg';
snap2in_adcsnap0_status_param        = 'out';
snap2in_adcsnap0_status_ip_name      = 'opb_register_simulink2ppc';
snap2in_adcsnap0_status_addr_start   = hex2dec('01004100');
snap2in_adcsnap0_status_addr_end     = hex2dec('010041FF');

% snap2in/adcsnap0/trig_offset
snap2in_adcsnap0_trig_offset_type         = 'xps_sw_reg';
snap2in_adcsnap0_trig_offset_param        = 'in';
snap2in_adcsnap0_trig_offset_ip_name      = 'opb_register_ppc2simulink';
snap2in_adcsnap0_trig_offset_addr_start   = hex2dec('01004200');
snap2in_adcsnap0_trig_offset_addr_end     = hex2dec('010042FF');

% snap2in/gpio
snap2in_gpio_type         = 'xps_gpio';
snap2in_gpio_param        = '';
snap2in_gpio_ip_name      = 'gpio_simulink2ext';

% snap2in/gpio1
snap2in_gpio1_type         = 'xps_gpio';
snap2in_gpio1_param        = '';
snap2in_gpio1_ip_name      = 'gpio_simulink2ext';

% snap2in/gpio2
snap2in_gpio2_type         = 'xps_gpio';
snap2in_gpio2_param        = '';
snap2in_gpio2_ip_name      = 'gpio_simulink2ext';

% snap2in/gpio3
snap2in_gpio3_type         = 'xps_gpio';
snap2in_gpio3_param        = '';
snap2in_gpio3_ip_name      = 'gpio_simulink2ext';

