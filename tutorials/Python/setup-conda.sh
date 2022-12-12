#!/bin/bash

# Create conda environment
conda create -y -n OxPython -c conda-forge mamba python=3.9

source activate OxPython

mamba install -y -c jaimergp/label/unsupported-cudatoolkit-shim -c conda-forge notebook jupyter_contrib_nbextensions numpy matplotlib "MDAnalysis>=2.0.0" nglview openmm parmed "ipywidgets<8"

jupyter-nbextension enable nglview --py --sys-prefix

# Enable Exercise 2 extension
# https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/nbextensions/exercise2/readme.html
jupyter contrib nbextension install --user
jupyter nbextension enable exercise2/main

echo "setup done"
