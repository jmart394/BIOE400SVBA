from flask import Flask, render_template, redirect, url_for
from octorest import OctoRest
import time
import serial

app = Flask(__name__)

# OctoPrint server info
URL = "http://localhost:4000"
API_KEY = "560EA2EF07AD48F597D7B2DD0A4AD4B9"

# Create the OctoRest client
client = OctoRest(url=URL, apikey=API_KEY)

# Set up Serial port for Arduino
ser = serial.Serial(port='/dev/cu.usbmodem1301', baudrate=9600, timeout=.01)

# Helper function to run the print job from the beginning
def start_print_job(gcode_file_name):
    try:
        files = client.files()['files']
        for file in files:
            if file['name'] == gcode_file_name:
                client.select(gcode_file_name, print=True)
                break
        else:
            raise Exception(f"GCode file '{gcode_file_name}' not found.")
    except Exception as e:
        print(f"Error starting print: {e}")

def move_track(steps_to_move):
    try:
        steps_to_move = str(steps_to_move)
        ser.write(str.encode(steps_to_move))  # Send track movement command to Arduino
        
        while True:
            response = ser.readline().decode('utf-8').strip()  # Read line from Arduino and decode
            if response == "Done":
                print(f"Track system moved by {steps_to_move} steps.")
                break  


    except Exception as e:
        print(f"Error moving track {e}")

@app.route('/')
def index():
    # Display the main web page with the control buttons
    return render_template('interface.html')

@app.route('/start')
def start():
    gcode_file_name = "final_presentation_demo.g"
    # start_print_job(gcode_file_name)  # Start print job from the beginning


    # Move track system (hardcoded); Set hardcoded steps value (adjust as needed)
    move_to_1 = 6259
    move_to_next = 748
    move_back = (-1*move_to_1) - (6*move_to_next)

    move_track(move_to_1)
    for i in range(6):
        move_track(move_to_next)
    move_track(move_back)
        
    #Close port once track movements are done
    ser.close()

    return redirect(url_for('index'))

@app.route('/pause')
def pause():
    try:
        client.pause()
    except Exception as e:
        print(f"Error pausing print: {e}")
    return redirect(url_for('index'))

@app.route('/resume')
def resume():
    try:
        client.resume()
    except Exception as e:
        print(f"Error resuming print: {e}")
    return redirect(url_for('index'))

@app.route('/cancel')
def cancel():
    try:
        client.cancel()
    except Exception as e:
        print(f"Error canceling print: {e}")
    return redirect(url_for('index'))

@app.route('/home')
def home():
    gcode_file_name = "home_axis.g"
    start_print_job(gcode_file_name) 
    return redirect(url_for('index'))

if __name__ == "__main__":
    app.run(debug=True)
