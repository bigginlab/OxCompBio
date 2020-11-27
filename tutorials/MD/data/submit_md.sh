#!/bin/bash

#SBATCH --time=01:00:00

#SBATCH --job-name=MD

#SBATCH --ntasks-per-node=16

#SBATCH --partition=htc

#Load GROMACS
module purge
module load gpu/gromacs/2020.1

#Run Production MD
gmx mdrun -deffnm md -v
