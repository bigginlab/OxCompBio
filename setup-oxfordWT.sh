#!/bin/bash

# Download and install Anaconda (miniconda)
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b -f -p $HOME/conda3

# Add Anaconda to PATH
export PATH=${PATH}:"${HOME}/conda3/bin"
echo 'export PATH=${PATH}:"${HOME}/conda3/bin"' >> ~/.bashrc 

# Create and source WTcourse conda environment
conda env create -f binder/environment.yml
source activate WTcourse

echo "source activate WTcourse" >> ~/.bashrc

# Activate nglview extension
jupyter-nbextension enable nglview --py --sys-prefix

echo "setup done"
