#!/bin/bash

# Set up conda environment

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
bash Miniconda3-latest-MacOSX-x86_64.sh -b -f -p $HOME/conda3

export PATH=${PATH}:"${HOME}/conda3/bin"

echo 'export PATH=${PATH}:"${HOME}/conda3/bin"' >> ~/.bashrc 

# Create correct conda environment

echo "source activate WTcourse" >> ~/.bashrc

conda create -y --name WTcourse python=3.6
source activate WTcourse

conda install -y jupyter
conda install -y numpy
conda install -y matplotlib
conda install -y mdanalysis -c conda-forge
conda install -y nglview -c bioconda
jupyter-nbextension enable nglview --py --sys-prefix

echo "setup done"
