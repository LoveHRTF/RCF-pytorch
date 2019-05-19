#!/bin/bash

# Request a GPU partition node and access to 1 GPU
#SBATCH -p gpu --gres=gpu:1 -w gpu1210

# Request 8 CPU core
#SBATCH -n 8 


# Request enough memory
#SBATCH --mem=48G

#SBATCH -t 48:00:00
#SBATCH -o ./trainOut/train-%j.out



# Run Script
source ~/.local/bin/cv2/bin/activate
python train_RCF.py --tmp model_out/twenty_one  --learning_rate 1e-7 --resume /users/guest418/scratch/RCF-pytorch/model_out/twenty_one/checkpoint_epoch2.pth
