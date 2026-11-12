#!/bin/bash
#SBATCH --job-name=analyse
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=4G
#SBATCH --time=00:30:00
#SBATCH --output=analyse_%j.out
#SBATCH --error=analyse_%j.err

module load python/3.12
python analyse.py
