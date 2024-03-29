from smbus2 import SMBus
import sys
import os
import time
from os.path import exists

def scan(bus_num, start=0x03, end=0x78):
    try:
        bus = SMBus(bus_num)
    except PermissionError:
        print("Permission error!")
        sys.exit()
    except FileNotFoundError:
        print("Error: Unable to locate I2C bus")
        file_exists = exists("/usr/bin/raspi-config")
        if file_exists:
          try: 
            print("raspi-config found:\n\tEnabeling i2c bus")       
            os.system("sudo raspi-config nonint do_i2c 0 ; sleep 1")
            bus = SMBus(bus_num)                     
          except:         
            print("Unknown ERROR:")
            sys.exit()
  
        else:
          print("Enable I2C first")
          sys.exit()
#    print("I2C bus       : " + str(bus_num))
#    print("Start address : " + hex(start))
#    print("End address   : " + hex(end) + "\n")
    
    for i in range(start, end):
        val = 1
        try:
            bus.read_byte(i)
        except OSError as e:        
          val = e.args[0]
        finally:
            if val != 5:    # No device
                if val == 1:
                    res = "Found "                                           
                    print(hex(i) + " -> " + res)
                elif val == 16:
                    res = "Busy "
                    print(hex(i) + " -> " + res)
                elif val == 110:
                    res = "Timeout "
                    print(hex(i) + " -> " + res)
                elif val == 121:
                    res = "Unused "
                    #uncomment to view unused adresses 
                    #print(hex(i) + " -> " + res)
                else:
                    res = "Error code: " + str(val)
                    print(hex(i) + " -> " + res)
                

if __name__ == "__main__":
    args = sys.argv
    if len(args) < 2:
        print("Specify desired I2C bus!")
        print("Usage : i2c-scanner.py <bus>")
        sys.exit()       
    scan(int(args[1]))
