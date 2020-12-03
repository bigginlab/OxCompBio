#!/bin/bash

# Create conda environment
conda env create -f oxpython-env.yml
source activate OxPython

jupyter-nbextension enable nglview --py --sys-prefix

# Enable Exercise 2 extension
# https://jupyter-contrib-nbextensions.readthedocs.io/en/latest/nbextensions/exercise2/readme.html
jupyter contrib nbextension install --user
jupyter nbextension enable exercise2/main

echo "setup done"
