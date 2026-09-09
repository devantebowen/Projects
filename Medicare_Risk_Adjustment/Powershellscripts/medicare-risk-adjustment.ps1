# ==========================================
# ONE-TIME PROJECT SETUP
# ==========================================

Write-Host "Starting Medicare Risk Adjustment project setup..."

# Permanently allow locally created PowerShell scripts
Set-ExecutionPolicy `
    -Scope CurrentUser `
    -ExecutionPolicy RemoteSigned `
    -Force

# Navigate to the coding folder
Set-Location "Z:\Coding"

# Create the project folder if it does not already exist
New-Item `
    -ItemType Directory `
    -Path "Medicare_Risk_Adjustment" `
    -Force

Set-Location "Z:\Coding\Medicare_Risk_Adjustment"

# Initialize Git
git init

# Create and activate the Python virtual environment
py -3.12 -m venv .venv
.\.venv\Scripts\Activate.ps1

# Upgrade pip and install project packages
python -m pip install --upgrade pip

python -m pip install `
    pandas `
    numpy `
    pyarrow `
    sqlalchemy `
    pymysql `
    python-dotenv `
    jupyter `
    ipykernel `
    matplotlib `
    seaborn `
    scikit-learn `
    openpyxl `
    pytest

# Save the installed packages
python -m pip freeze | Out-File -Encoding utf8 requirements.txt

# Verify the setup
python --version
python -m pip --version
git --version

# Open the project in VS Code
code .

Write-Host "Project setup complete."