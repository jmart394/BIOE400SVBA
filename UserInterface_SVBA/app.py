from flask import Flask, render_template, redirect, url_for
from octorest import OctoRest

app = Flask(__name__)

# OctoPrint server info
URL = "http://localhost:4000"
API_KEY = "560EA2EF07AD48F597D7B2DD0A4AD4B9"

# Create the OctoRest client
client = OctoRest(url=URL, apikey=API_KEY)

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

@app.route('/')
def index():
    # Display the main web page with the control buttons
    return render_template('interface.html')

@app.route('/start')
def start():
    gcode_file_name = "final_presentation_demo.g"
    start_print_job(gcode_file_name)  # Start print job from the beginning
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
