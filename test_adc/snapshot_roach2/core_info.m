% snapshot_roach2/XSG_core_config
snapshot_roach2_XSG_core_config_type         = 'xps_xsg';
snapshot_roach2_XSG_core_config_param        = '';

% snapshot_roach2/asiaa_adc5g
snapshot_roach2_asiaa_adc5g_type         = 'xps_adc5g';
snapshot_roach2_asiaa_adc5g_param        = '';
snapshot_roach2_asiaa_adc5g_ip_name      = 'adc5g_dmux1_interface';

% snapshot_roach2/snapshot/bram
snapshot_roach2_snapshot_bram_type         = 'xps_bram';
snapshot_roach2_snapshot_bram_param        = '4096';
snapshot_roach2_snapshot_bram_ip_name      = 'bram_if';
snapshot_roach2_snapshot_bram_addr_start   = hex2dec('01000000');
snapshot_roach2_snapshot_bram_addr_end     = hex2dec('01003FFF');

% snapshot_roach2/snapshot/ctrl
snapshot_roach2_snapshot_ctrl_type         = 'xps_sw_reg';
snapshot_roach2_snapshot_ctrl_param        = 'in';
snapshot_roach2_snapshot_ctrl_ip_name      = 'opb_register_ppc2simulink';
snapshot_roach2_snapshot_ctrl_addr_start   = hex2dec('01004000');
snapshot_roach2_snapshot_ctrl_addr_end     = hex2dec('010040FF');

% snapshot_roach2/snapshot/status
snapshot_roach2_snapshot_status_type         = 'xps_sw_reg';
snapshot_roach2_snapshot_status_param        = 'out';
snapshot_roach2_snapshot_status_ip_name      = 'opb_register_simulink2ppc';
snapshot_roach2_snapshot_status_addr_start   = hex2dec('01004100');
snapshot_roach2_snapshot_status_addr_end     = hex2dec('010041FF');

