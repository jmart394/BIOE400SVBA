# OctoPrint Automation Project

This repository contains files related to automating tasks in protoype using python, OctoPrint, OctoRest library and a custom web interface.

### Downloading Octoprint
- Install Anaconda Navigator 
- Open up terminal and insert following commands: 
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
The "automation_files" folder contains g-code scripts used to control the syringe. These files were created to test various functions of the syringe.
   - 'mock_demo_SP24.g' is the final presentation demo we used.
   - 'home_axis.g" homes the syringe. *NOTE: Syringe should always be homed in X->Z->Y order. Ensure syringe isnt above Y115 hieght or else homing won't work
   - 'carryover_testing.g' is the script for the carry over test
   Notes: 
   - DO NOT run any of the scripts ully without knowing for sure everything hasn't moved from our semester. Theres no hardstops on protoype so it can break if it runs into something that shouldnt be there.
   - Load the first 2 files mentioned in octoprint before running app so buttons work.


### 2. **Website Files**

- **app.py**:  
  This Python script is the backend of the web interface. It handles the interaction with the OctoPrint server, including sending commands to start, pause, cancel, and home the printer. More on Octorest: https://github.com/dougbrion/OctoRest
  - There's 3 versions of app.py. 'app_old.py' , 'app.py' , 'app_2.py'. They are all just differnt iterations of the interface. 
   - 'app_old.py' is the first iteration which doesnt have the connect to protoype functionality.
   - 'app.py' is has all buttons but just doesnt display the concentration results or the standard curve
   - 'app_2.py' is the final backend that was used in final presentaion and showcase. It shows standard curve and concentration results.

- **helper_functions.py**:  
   Helper functions for app.py
   
- **templates**:  
  This folder contains the HTML file for the website's frontend. It defines the structure and layout of the web interface used to control the printer.
  There's 2 versions of 'interface.html' and 'results.html' , 'interface.html.'. They are all just differnt iterations of the interface. 
   - 'interface_old.py' is the first iteration which doesnt have the connect to protoype functionality.
   - 'interface.html' is has all buttons used in final presentation
   - 'results.html' doesnt display the concentration results or the standard curve
   - 'results_2.html' shows standard curve and concentration results.

## Setup Instructions

1. Start up octoprint using the following commands in terminal: 
  - cd ~/Downloads/Octoprint
  - source venv/bin/activate
  - (IF YOU HAVENT DOWNLOADED OCTOREST YET THEN RUN THIS COMMAND HERE: pip install octorest )
  - Octoprint serve --port 4000
  - open octoprint at http://localhost:4000
2. Upload the two scripts(.g files) from the "automation_files" folder to OctoPrint and ensure printer is connected.
3. Install all dependencies shown at bottom of readme 
4. Run the "app.py" script to start the web interface using the following commands in VScode terminal:
  - source ~/Downloads/Octoprint/venv/bin/activate
  - python app.py [or name of file]
5. Access the web interface by clicking on link in VScode terminal 

Notes:
- Number 1 issue that arises is printer will disconnect and therefore the website will seem to not be working. If commands are not working on website, check to see if printer is properly connected.

## Install Dependencies
Run all these different commands in command window before running app
Here is a list of the `pip install` commands you've needed to run so far based on the information you've provided:

1. **Install Flask** (to create the web application):
   ```bash
   pip install Flask
   ```

2. **Install OctoRest** (for interacting with the OctoPrint API):
   ```bash
   pip install octorest
   ```

3. **Install Plotly** (for generating graphs and charts):
   ```bash
   pip install plotly
   ```

4. **Install Pandas** (for working with data tables):
   ```bash
   pip install pandas
   ```

5. **Install Kaleido** (for exporting Plotly graphs as images):
   ```bash
   pip install -U kaleido
   ```
