#!/bin/bash

#SBATCH --partition=htc
#SBATCH --reservation=training
#SBATCH --gres=gpu:1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=7
#SBATCH --gres-flag=disable-binding
#SBATCH --time=01:00:00
#SBATCH --job-name=EM


#Load GROMACS
module purge
module load gpu/gromacs/2020.1

#Run Energy Minimization
gmx mdrun -deffnm em -v -update gpu
