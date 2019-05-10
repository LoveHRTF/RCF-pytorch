#!/bin/bash

# Request a GPU partition node and access to 1 GPU
#SBATCH -p gpu --gres=gpu:1

# Request 8 CPU core
#SBATCH -n 8 

# Request enough memory
#SBATCH --mem=64G

#SBATCH -t 48:00:00
#SBATCH -o ./trainOut/train-%j.out



# Run Script
python train_RCF.py
