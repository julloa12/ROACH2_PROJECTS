copy implementation\system.bit ..\bit_files\roach2_tut_intro_2019_Aug_27_1633.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\roach2_tut_intro_2019_Aug_27_1633.bof
copy design_info.tab ..\bit_files\roach2_tut_intro_2019_Aug_27_1633.info
