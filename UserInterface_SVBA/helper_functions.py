import os
import random
import pandas as pd
import plotly.express as px
from octorest import OctoRest
from app_2 import client,ser # Import the client from app.py

# OctoPrint server info
# URL = "http://localhost:4000"
# API_KEY = "560EA2EF07AD48F597D7B2DD0A4AD4B9"
# client = OctoRest(url=URL, apikey=API_KEY)

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


# Helper function to check connection status
def check_connection_status():
    try:
        connection_info = client.connection_info()
        state = connection_info['current']['state']
        return state
    except Exception as e:
        print(f"Error checking connection: {e}")
        return "Disconnected"

# Simulate absorbance reading
def take_reading(cuvette_number):
    if cuvette_number == 1:  # Blank
        return 0.0
    return round(random.uniform(0.1, 1), 3)  # Simulated absorbance values

def calculate_concentration(absorbance):
    # Example standard curve equation: y = 2x (Absorbance = 2 * Concentration)
    # Modify according to your actual calibration curve
    return round(absorbance / 2, 3)  # Inverting the equation to find concentration

def generate_graph(data):
    df = pd.DataFrame(data)

    # Generate scatter plot for absorbance vs. concentration
    fig = px.scatter(
        df,
        x="Concentration",
        y="Absorbance",
        title="Standard Curve and Results",
        labels={"Concentration": "Concentration (µM)", "Absorbance": "Absorbance"},
        text="Cuvette"
    )

    # Fit a trend line (linear regression)
    fig.update_traces(textposition='top center')
    fig.add_scatter(x=df["Concentration"], y=df["Absorbance"], mode="lines", name="Trend Line")

    # Save as HTML and PNG
    static_dir = os.path.join(os.getcwd(), 'static')
    if not os.path.exists(static_dir):
        os.makedirs(static_dir)

    graph_path = os.path.join("static", "absorbance_graph.html")
    fig.write_html(graph_path)

    image_path = os.path.join("static", "absorbance_graph.png")
    fig.write_image(image_path)

    return graph_path, image_path

def save_table(data):
    df = pd.DataFrame(data)
    table_path = os.path.join("static", "absorbance_table.csv")
    df.to_csv(table_path, index=False)
    return table_path

    # # Simulate absorbance reading
# def take_reading(cuvette_number):
#     if cuvette_number == 1:  # Blank
#         return 0.0
#     return round(random.uniform(0.1, 1), 3)  # Simulated absorbance values
# def generate_graph(data):
#     # Convert the data into a DataFrame for easier handling
#     df = pd.DataFrame(data)

#     # Generate the bar plot
#     fig = px.bar(
#         df,
#         x="Cuvette",  # X-axis: Cuvette numbers
#         y="Absorbance",  # Y-axis: Absorbance readings
#         title="Absorbance Readings",
#         labels={"Cuvette": "Cuvette Number", "Absorbance": "Absorbance"},
#         text="Absorbance"  # Display values on bars
#     )

#     # Adjust figure layout
#     fig.update_traces(textposition='outside')
#     fig.update_layout(
#         xaxis=dict(tickmode="linear"),  # Ensure consistent ticks
#         font=dict(family="Arial", size=12),
#     )

#     # Ensure the 'static' directory exists
#     static_dir = os.path.join(os.getcwd(), 'static')
#     if not os.path.exists(static_dir):
#         os.makedirs(static_dir)

#     # Save the graph as an HTML file
#     graph_path = os.path.join("static", "absorbance_graph.html")
#     fig.write_html(graph_path)

#     # Optionally save as PNG (static image)
#     static_image_path = os.path.join("static", "absorbance_graph.png")
#     fig.write_image(static_image_path)

#     return graph_path, static_image_path
# def save_table(data):
#     # Convert the data into a DataFrame
#     df = pd.DataFrame(data)

#     # Save as a CSV file
#     table_path = os.path.join("static", "absorbance_table.csv")
#     df.to_csv(table_path, index=False)

#     return table_path