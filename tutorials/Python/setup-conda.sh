#!/bin/bash

# Create conda environment
conda env create -f ../../environment.yml
source activate oxpy

jupyter-nbextension enable nglview --py --sys-prefix

echo "setup done"
