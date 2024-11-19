# -*- coding: utf-8 -*-
"""
Created on Sun Nov 17 22:56:50 2024

@author: Katerina
"""

import serial

# Set up Serial port
ser = serial.Serial(port='COM22', baudrate=9600, timeout=.01)

moving = 1
while(moving == 1):
    steps_in = input("Distance to Move (+ for away from motor, - for towards motor) or Q to quit: ")
    
    if(steps_in == "Q"):
        ser.close()
        moving = 0
    else:
        ser.write(str.encode(steps_in))

    