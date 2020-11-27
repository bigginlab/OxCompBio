#!/bin/bash

#SBATCH --time=00:30:00

#SBATCH --job-name=EM

#SBATCH --ntasks-per-node=4

#SBATCH --partition=htc

#Load GROMACS
module purge
module load gpu/gromacs/2020.1

#Run energy minimisation
gmx mdrun -deffnm em -v
