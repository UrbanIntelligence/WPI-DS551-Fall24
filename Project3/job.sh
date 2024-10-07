#!/usr/bin/env bash
#SBATCH -A cs525
#SBATCH -p academic
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --gres=gpu:1
#SBATCH -C A100
#SBATCH -t 24:00:00
#SBATCH --mem 12G
#SBATCH --job-name="P3"

source activate myenv
python main.py --train_dqn
