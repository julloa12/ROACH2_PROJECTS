import corr, time 
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

# Connect to ROACH and program it
fpga = corr.katcp_wrapper.FpgaClient('192.168.7.201', 7147) 
time.sleep(1)
#fpga.upload_program_bof('/home/ulloaroach2/Downloads/tut/snapshot_roach2/bit_files/snapshot_roach2_2019_Aug_28_1544.bof',7174)
fpga.upload_program_bof('/home/ulloaroach2/design/test_adc/snapshot_roach2/bit_files/snapshot_roach2_2019_Sep_02_0956.bof',7174)
#fpga.progdev('/home/ulloaroach2/Downloads/tut/snapshot_roach.bof') 

fig, ax = plt.subplots()
line, = plt.plot([], [], animated=True)
plt.xlim(0,255)
plt.ylim(-130,130)

def animate(_):
    snap_data = np.fromstring(fpga.snapshot_get('snapshot', man_trig=True, man_valid=True)['data'], dtype='>i1') 
    line.set_data(range(len(snap_data)), snap_data)
    return line,

ani = FuncAnimation(fig, animate, blit=True)
plt.show()
