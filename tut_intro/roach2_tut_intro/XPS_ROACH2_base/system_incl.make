#################################################################
# Makefile generated by Xilinx Platform Studio 
# Project:/home/ulloaroach2/design/tut_intro/roach2_tut_intro/XPS_ROACH2_base/system.xmp
#
# WARNING : This file will be re-generated every time a command
# to run a make target is invoked. So, any changes made to this  
# file manually, will be lost when make is invoked next. 
#################################################################

XILINX_EDK_DIR = /opt/Xilinx/14.7/ISE_DS/EDK

SYSTEM = system

MHSFILE = system.mhs

FPGA_ARCH = virtex6

DEVICE = xc6vsx475tff1759-1

INTSTYLE = default

XPS_HDL_LANG = vhdl
GLOBAL_SEARCHPATHOPT = 
PROJECT_SEARCHPATHOPT = 

SEARCHPATHOPT = $(PROJECT_SEARCHPATHOPT) $(GLOBAL_SEARCHPATHOPT)

SUBMODULE_OPT = 

PLATGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(SUBMODULE_OPT) -msg __xps/ise/xmsgprops.lst

OBSERVE_PAR_OPTIONS = -error yes

MICROBLAZE_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop.elf
MICROBLAZE_BOOTLOOP_LE = $(XILINX_EDK_DIR)/sw/lib/microblaze/mb_bootloop_le.elf
PPC405_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc405/ppc_bootloop.elf
PPC440_BOOTLOOP = $(XILINX_EDK_DIR)/sw/lib/ppc440/ppc440_bootloop.elf
BOOTLOOP_DIR = bootloops

BRAMINIT_ELF_IMP_FILES =
BRAMINIT_ELF_IMP_FILE_ARGS =

BRAMINIT_ELF_SIM_FILES =
BRAMINIT_ELF_SIM_FILE_ARGS =

SIM_CMD = xterm -e ./isim_system

BEHAVIORAL_SIM_SCRIPT = simulation/behavioral/$(SYSTEM)_setup.tcl

STRUCTURAL_SIM_SCRIPT = simulation/structural/$(SYSTEM)_setup.tcl

TIMING_SIM_SCRIPT = simulation/timing/$(SYSTEM)_setup.tcl

DEFAULT_SIM_SCRIPT = $(BEHAVIORAL_SIM_SCRIPT)

SIMGEN_OPTIONS = -p $(DEVICE) -lang $(XPS_HDL_LANG) -intstyle $(INTSTYLE) $(SEARCHPATHOPT) $(BRAMINIT_ELF_SIM_FILE_ARGS) -msg __xps/ise/xmsgprops.lst -s isim


CORE_STATE_DEVELOPMENT_FILES = pcores/roach_infrastructure_v1_00_a/hdl/verilog/roach_infrastructure.v \
pcores/reset_block_v1_00_a/hdl/verilog/reset_block.v \
pcores/epb32_opb_bridge_v1_00_a/hdl/verilog/epb32_opb_bridge.v \
pcores/epb_infrastructure_v1_00_a/hdl/verilog/epb_infrastructure.v \
pcores/sys_block_v1_00_a/hdl/verilog/sys_block.v \
pcores/opb_register_ppc2simulink_v1_00_a/hdl/verilog/opb_register_ppc2simulink.v \
pcores/opb_register_simulink2ppc_v1_00_a/hdl/verilog/opb_register_simulink2ppc.v \
pcores/gpio_simulink2ext_v1_00_a/hdl/vhdl/gpio_simulink2ext.vhd

WRAPPER_NGC_FILES = implementation/system_infrastructure_inst_wrapper.ngc \
implementation/system_reset_block_inst_wrapper.ngc \
implementation/system_opb0_wrapper.ngc \
implementation/system_epb_opb_bridge_inst_wrapper.ngc \
implementation/system_epb_infrastructure_inst_wrapper.ngc \
implementation/system_sys_block_inst_wrapper.ngc \
implementation/system_roach2_tut_intro_a_wrapper.ngc \
implementation/system_roach2_tut_intro_b_wrapper.ngc \
implementation/system_roach2_tut_intro_counter_ctrl_wrapper.ngc \
implementation/system_roach2_tut_intro_counter_value_wrapper.ngc \
implementation/system_roach2_tut_intro_gpio_wrapper.ngc \
implementation/system_roach2_tut_intro_gpio1_wrapper.ngc \
implementation/system_roach2_tut_intro_gpio2_wrapper.ngc \
implementation/system_roach2_tut_intro_gpio3_wrapper.ngc \
implementation/system_roach2_tut_intro_sum_a_b_wrapper.ngc

POSTSYN_NETLIST = implementation/$(SYSTEM).ngc

SYSTEM_BIT = implementation/$(SYSTEM).bit

DOWNLOAD_BIT = implementation/download.bit

SYSTEM_ACE = implementation/$(SYSTEM).ace

UCF_FILE = data/system.ucf

BMM_FILE = implementation/$(SYSTEM).bmm

BITGEN_UT_FILE = etc/bitgen.ut

XFLOW_OPT_FILE = etc/fast_runtime.opt
XFLOW_DEPENDENCY = __xps/xpsxflow.opt $(XFLOW_OPT_FILE)

XPLORER_DEPENDENCY = __xps/xplorer.opt
XPLORER_OPTIONS = -p $(DEVICE) -uc $(SYSTEM).ucf -bm $(SYSTEM).bmm -max_runs 7

FPGA_IMP_DEPENDENCY = $(BMM_FILE) $(POSTSYN_NETLIST) $(UCF_FILE) $(XFLOW_DEPENDENCY)

SDK_EXPORT_DIR = SDK/SDK_Export/hw
SYSTEM_HW_HANDOFF = $(SDK_EXPORT_DIR)/$(SYSTEM).xml
SYSTEM_HW_HANDOFF_BIT = $(SDK_EXPORT_DIR)/$(SYSTEM).bit
SYSTEM_HW_HANDOFF_DEP = $(SYSTEM_HW_HANDOFF) $(SYSTEM_HW_HANDOFF_BIT)