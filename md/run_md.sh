#!/bin/bash
#SBATCH --job-name=md_1oei
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=4G
#SBATCH --time=01:00:00
#SBATCH --output=md_%j.out
#SBATCH --error=md_%j.err

# Minimise, then NVT, NPT and production, each as grompp (pack the inputs) then mdrun (run it).
# Needs 1oEI_solv.gro and topol.top from the setup steps, plus the four .mdp files, in this folder.
set -e
module load compiler/gcc/11 openmpi/4.1 gromacs/2025.3
T=$SLURM_CPUS_PER_TASK

gmx grompp -f minim.mdp -c 1OEI_solv.gro -p topol.top -o em.tpr
gmx mdrun -deffnm em -ntomp $T

gmx grompp -f nvt.mdp -c em.gro -r em.gro -p topol.top -o nvt.tpr
gmx mdrun -deffnm nvt -ntomp $T

gmx grompp -f npt.mdp -c nvt.gro -r nvt.gro -t nvt.cpt -p topol.top -o npt.tpr
gmx mdrun -deffnm npt -ntomp $T

gmx grompp -f md.mdp -c npt.gro -t npt.cpt -p topol.top -o md_0_1.tpr
gmx mdrun -deffnm md_0_1 -ntomp $T
