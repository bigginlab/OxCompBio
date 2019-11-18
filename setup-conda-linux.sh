#!/bin/bash

# Create WTcourse conda environment
conda env create -f environment.yml
source activate WTcourse

jupyter-nbextension enable nglview --py --sys-prefix

echo "setup done"
