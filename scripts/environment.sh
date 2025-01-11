#!/bin/bash

# Exit on any error
set -e

# Initialize Conda in the current shell
if ! command -v conda &> /dev/null; then
    echo "Conda is not installed or not in PATH. Please install Conda before running this script."
    exit 1
fi

# Source Conda to ensure proper activation
source $(conda info --base)/etc/profile.d/conda.sh

# Function to register the environment with Jupyter Lab
register_jupyter() {
    echo "Registering environment with Jupyter Lab..."
    conda activate exercise-planner.ai
    pip install ipykernel
    python -m ipykernel install --user --name=exercise-planner.ai --display-name "Python (exercise-planner.ai)"
    echo "Environment registered with Jupyter Lab."
}

# Create a new conda environment
echo "Creating the conda environment 'exercise-planner.ai'..."
conda create -y -n exercise-planner.ai python=3.9

# Activate the environment
echo "Activating the environment..."
conda activate exercise-planner.ai

# Install basic dependencies
echo "Installing dependencies..."
pip install dash python-dotenv pandas numpy plotly

# Optional: Register with Jupyter Lab
read -p "Would you like to register this environment with Jupyter Lab? (y/n): " register
if [[ "$register" == "y" || "$register" == "Y" ]]; then
    register_jupyter
else
    echo "Skipping Jupyter Lab registration."
fi

# Completion message
echo "Environment 'exercise-planner.ai' created and ready to use."

