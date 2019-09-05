copy implementation\system.bit ..\bit_files\snapshot_roach2_2019_Sep_02_1022.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\snapshot_roach2_2019_Sep_02_1022.bof
copy design_info.tab ..\bit_files\snapshot_roach2_2019_Sep_02_1022.info
