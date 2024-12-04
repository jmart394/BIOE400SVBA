from flask import Flask, render_template, redirect, url_for, send_file
from octorest import OctoRest
import time
import serial
import random
import os
import plotly.express as px
import pandas as pd
from flask_socketio import SocketIO, emit
from helper_functions import * 

app = Flask(__name__)

##Final Interface Used in Final Presentation
# OctoPrint server info
URL = "http://localhost:4000"
API_KEY = "560EA2EF07AD48F597D7B2DD0A4AD4B9"

# Create the OctoRest client
client = OctoRest(url=URL, apikey=API_KEY)

# ser = serial.Serial(port='/dev/cu.usbmodem1201', baudrate=9600, timeout=.01)

@app.route('/')
def index():
    # Display the main web page with the control buttons
    return render_template('interface_2.html')

@app.route('/start')
def start():
    gcode_file_name = "mock_demo_SP24.g"
    start_print_job(gcode_file_name)  # Start print job from the beginning
    time.sleep(136)

    absorbance_results = []
    # Move track and take readings for each cuvette
    move_to_1 = 6259
    move_to_next = 748
    move_back = (-1 * move_to_1) - (6 * move_to_next)

    # Move to the first cuvette (blank) and take reading
     move_track(move_to_1)
    absorbance_results.append({"Cuvette": 1, "Absorbance": take_reading(1)})

    # Process the next 6 cuvettes
    for i in range(2, 8):  # Cuvettes 2 through 7
         move_track(move_to_next)
        
        absorbance_results.append({"Cuvette": i, "Absorbance": take_reading(i)})
        time.sleep(2)

     move_track(move_back)  # Return track to initial position

    # Close port once track movements are done
     ser.close()
    
    # Generate the graph
    generate_graph(absorbance_results)
    # Save graph and table
    graph_path, _ = generate_graph(absorbance_results)
    table_path = save_table(absorbance_results)

    # Render the results page, passing results and file paths
    return render_template('results.html', results=absorbance_results, graph_path=graph_path, table_path=table_path)

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

# Add the download route
@app.route("/download/<filename>")
def download_file(filename):
    file_path = os.path.join("static", filename)
    return send_file(file_path, as_attachment=True)

if __name__ == "__main__":
    app.run(debug=True)
