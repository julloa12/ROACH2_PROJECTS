import corr, time 
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

def exit_fail():
    print 'Fallo la conexion'
    exit()

# Connect to ROACH and program it
print ('Conectando con ROach2')
fpga = corr.katcp_wrapper.FpgaClient('192.168.70.44', 7147) 
time.sleep(3)
if fpga.is_connected():
	print 'conexion ok'
else:
	exit_fail()

time.sleep(5)
print ('Cargando archivo')

#fpga.upload_program_bof('/home/ulloaroach2/Downloads/tut/snapshot_roach2/bit_files/snapshot_roach2_2019_Aug_28_1606.bof',7174)
fpga.upload_program_bof('/home/ulloaroach2/design/test_adc2/snap2in/bit_files/snap2in_2019_Sep_04_1330.bof',7174)
#fpga.progdev('/home/ulloaroach2/Downloads/tut/snapshot_roach.bof') 

fig, ax = plt.subplots()
line, = plt.plot([], [], animated=True)
plt.xlim(0,3000)
plt.ylim(-200,200)

def animate(_):
    snap_data = np.fromstring(fpga.snapshot_get('adcsnap0', man_trig=True, man_valid=True)['data'], dtype='>i1') 
    line.set_data(range(len(snap_data)), snap_data)
    return line,

ani = FuncAnimation(fig, animate, blit=True)
plt.show()
