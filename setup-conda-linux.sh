#!/bin/bash

# Create correct conda environment

conda create -y --name WTcourse python=3.6
source activate WTcourse

conda install -y jupyter
conda install -y numpy
conda install -y matplotlib
conda install -y ipython
conda install -y mdanalysis -c conda-forge
conda install -y nglview -c bioconda
jupyter-nbextension enable nglview --py --sys-prefix

echo "setup done"
