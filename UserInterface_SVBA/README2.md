# OctoPrint Automation Project

This repository contains files related to automating tasks in OctoPrint using the OctoRest library and a custom web interface.

### Downloading Octoprint
- Install Anaconda Navigator 
- Open up terminal on Mac and insert following commands: 
   * pip install virtualenv
   * mkdir OctoPrint
   * cd OctoPrint
   * virtualenv venv
   * source venv/bin/activate
   * pip install -U pyobjc
   * pip install OctoPrint

### Running OctoPrint:
   * cd ~/Downloads/Octoprint
   * source venv/bin/activate
   * Octoprint serve --port 4000
Then open the following link on the web:  http://localhost:4000   
To kill/stop running the program-> press control C 

## Project Structure

### 1. **Automation Files** (`automation_files`)
The "automation_files" folder contains initial scripts used for exploring the capabilities of the OctoRest library. These files were created to test various functions of OctoPrint. Before running the website, two scripts from this folder must be uploaded to OctoPrint.

### 2. **Website Files**

- **app.py**:  
  This Python script is the backend of the web interface. It handles the interaction with the OctoPrint server, including sending commands to start, pause, cancel, and home the printer.

- **templates**:  
  This folder contains the HTML file for the website's frontend. It defines the structure and layout of the web interface used to control the printer.

## Setup Instructions

1. Start up octoprint using the following commands in terminal: 
  - cd ~/Downloads/Octoprint
  - source venv/bin/activate
  - (IF YOU HAVENT DOWNLOADED OCTOREST YET THEN RUN THIS COMMAND HERE: pip install octorest )
  - Octoprint serve --port 4000
  - open octoprint at http://localhost:4000
2. Upload the two scripts(.g files) from the "automation_files" folder to OctoPrint and ensure printer is connected.
3. Run the "app.py" script to start the web interface using the following commands in VScode terminal:
  - source ~/Downloads/Octoprint/venv/bin/activate
  - python app.py
5. Access the web interface by clicking on link in VScode terminal to control the printer, with options to start, pause, cancel, and home the printer.

Notes:
- Number 1 issue that arrises is printer will disconnect and therfore the website will seem to not be working. If commands are not working on website, check to see if printer is properly connected

