#!/bin/bash
#SBATCH --job-name=orca_big
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=4G
#SBATCH --time=04:00:00
#SBATCH --output=orca_%j.out
#SBATCH --error=orca_%j.err

set -e
module load compiler/gcc/11 openmpi/4.1 orca/6.1

$(which orca) $1.inp > $1.out
