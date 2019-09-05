copy implementation\system.bit ..\bit_files\snap2in_2019_Sep_03_1340.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\snap2in_2019_Sep_03_1340.bof
copy design_info.tab ..\bit_files\snap2in_2019_Sep_03_1340.info
