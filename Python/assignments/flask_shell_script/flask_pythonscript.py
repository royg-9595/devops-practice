import os
import subprocess
import sys

# Define variables
VENV_DIR = "flask_venv"
FLASK_APP = "app.py"  # Change this to your Flask application file if different
REQUIREMENTS_FILE = "requirements.txt"

# Step 1: Create a virtual environment
print("Creating virtual environment...")
if not os.path.exists(VENV_DIR):
    try:
        subprocess.check_call(["virtualenv", VENV_DIR])
        print("Virtual environment created successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error: Failed to create virtual environment. {e}")
        sys.exit(1)
else:
    print("Virtual environment already exists, skipping creation.")

# Step 2: Activate the virtual environment
activate_script = os.path.join(VENV_DIR, "Scripts", "activate_this.py")
if not os.path.exists(activate_script):
    print(f"Error: Virtual environment not found at {activate_script}.")
    sys.exit(1)

print("Activating virtual environment...")
try:
    exec(open(activate_script).read(), {'__file__': activate_script})
except Exception as e:
    print(f"Error: Failed to activate virtual environment. {e}")
    sys.exit(1)

# Step 3: Install dependencies from requirements.txt
if os.path.exists(REQUIREMENTS_FILE):
    print(f"Installing dependencies from {REQUIREMENTS_FILE}...")
    try:
        subprocess.check_call([sys.executable, "-m", "pip", "install", "--upgrade", "pip"])  # Upgrade pip
        subprocess.check_call([sys.executable, "-m", "pip", "install", "-r", REQUIREMENTS_FILE])  # Install requirements
        print("Dependencies installed successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error: Failed to install dependencies. {e}")
        sys.exit(1)
else:
    print(f"Error: {REQUIREMENTS_FILE} not found!")
    sys.exit(1)

# Step 4: Run the Flask application
print("Running Flask application...")
os.environ["FLASK_APP"] = FLASK_APP
os.environ["FLASK_ENV"] = "development"  # Optional: Set Flask environment to development

try:
    subprocess.check_call([sys.executable, "-m", "flask", "run"])
except subprocess.CalledProcessError as e:
    print(f"Error: Failed to run Flask application. {e}")
    sys.exit(1)

print("Flask application is running successfully!")
