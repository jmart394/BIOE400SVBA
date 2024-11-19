from flask import Flask, render_template, redirect, url_for, jsonify
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
ser = serial.Serial(port='COM22', baudrate=9600, timeout=.01)

# Helper function to check connection status
def check_connection_status():
    try:
        connection_info = client.connection_info()
        state = connection_info['current']['state']
        return state
    except Exception as e:
        print(f"Error checking connection: {e}")
        return "Disconnected"
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

        # Move track system (hardcoded)
        steps_to_move = "100"  # Set hardcoded steps value (adjust as needed)
        ser.write(str.encode(steps_to_move))  # Send track movement command to Arduino
        print(f"Track system moved by {steps_to_move} steps.")


        #Close port once track movements are done
        ser.close()
    except Exception as e:
        print(f"Error starting print: {e}")

@app.route('/')
def index():
    # Display the main web page with the control buttons
    return render_template('interface_2.html')

# Connect to Prototype function
@app.route('/connect')
def connect():
    try:
        client.connect()
        time.sleep(2)  # Short delay to allow connection status update
        if check_connection_status() in ['Operational', 'Opening serial port']:
            return jsonify({"status": "connected", "message": "Connection successful!"})
        else:
            return jsonify({"status": "connecting", "message": "Connecting to printer..."})
    except Exception as e:
        print(f"Error connecting to printer: {e}")
        return jsonify({"status": "failed", "message": "Failed to connect to printer."})

@app.route('/check_connection')
def check_connection():
    status = check_connection_status()
    return jsonify({"status": status})
#OLD START PROCESS
#@app.route('/start')
#def start():
  #  gcode_file_name = "final_presentation_demo.g"
   # start_print_job(gcode_file_name)  # Start print job from the beginning
   # return redirect(url_for('index'))
@app.route('/start')
def start():
    try:
        gcode_file_name = "final_presentation_demo.g"
        # Function that starts the print job (you already have this defined)
        start_print_job(gcode_file_name) 
        return jsonify({"status": "success", "message": "Start process initiated successfully."})
    except Exception as e:
        print(f"Error starting process: {e}")
        return jsonify({"status": "error", "message": "Failed to start the process."})

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
    try:
        # Send G-code commands to home each axis in order
        client.gcode(['G28 X', 'G28 Z', 'G28 Y'])
        print("Homing command sent: G28 X, G28 Z, G28 Y")
    except Exception as e:
        print(f"Error homing printer: {e}")
    return redirect(url_for('index'))


if __name__ == "__main__":
    app.run(debug=True)
