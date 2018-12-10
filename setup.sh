#!/bin/bash

echo "source activate WTcourse" >> ~/.bashrc

conda create -y --name WTcourse python=3.6
source activate WTcourse

conda install -y jupyter
conda install -y mdanalysis numpy matplotlib
conda install -y nglview -c bioconda
jupyter-nbextension enable nglview --py --sys-prefix

echo "setup done"
