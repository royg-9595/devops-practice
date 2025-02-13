#!/bin/bash
#Author: Jayanth Roy
#Usage:deploy flask app
#Running: ./flask_script.sh

# Exit the script on any error
set -e

# Define variables
VENV_DIR="flask_venv"
FLASK_APP="app.py"
REQUIREMENTS_FILE="requirements.txt"

# Step 1: Create a virtual environment
echo "Creating virtual environment..."
if [ ! -d "$VENV_DIR" ]; then
  virtualenv "$VENV_DIR"
  echo "Virtual environment created successfully."
else
  echo "Virtual environment already exists, skipping creation."
fi

# Step 2: Activate the virtual environment
echo "Activating virtual environment..."
source "$VENV_DIR/Scripts/activate"

pip list
# Step 3: Install dependencies from requirements.txt
if [ -f "$REQUIREMENTS_FILE" ]; then
  echo "Installing dependencies from $REQUIREMENTS_FILE..."
  pip install --upgrade pip  # Ensure pip is up-to-date
  pip install -r "$REQUIREMENTS_FILE"
else
  echo "Error: $REQUIREMENTS_FILE not found!"
  exit 1
fi

# Step 4: Run the Flask application
echo "Running Flask application..."
export FLASK_APP="$FLASK_APP"
export FLASK_ENV=development  # Optional: Set Flask environment to development (can be changed to production for deployment)
flask run

if [ $? -ne 0 ]; then
  echo "Error: Failed to run Flask application."
  exit 1
fi

echo "Flask application is running successfully!"
