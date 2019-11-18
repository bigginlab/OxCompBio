#!/bin/bash

# Create WTcourse conda environment
conda env create -f conda.yml
source activate WTcourse

jupyter-nbextension enable nglview --py --sys-prefix

echo "setup done"
