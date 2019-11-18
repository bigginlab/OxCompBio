# Oxford WT Python Workshop

## Contents

## Requirements

Python 3.6 or higher is required for this workshop. Note that Python 2.x will reach End of Life (EOL) the 1st of January 2020.

### Conda

#### Anaconda Distribution

#### Miniconda

### Environment

Create a Python environment with all the necessary libraries using `conda`:

```bash
conda env create -f conda.yml
```

#### Libraries

Default conda channel:

* [`numpy`](https://numpy.org/)
* [`matplotlib`](https://matplotlib.org/)

[conda-forge](https://conda-forge.org/) channel:

* [`MDAnalysis`](https://www.mdanalysis.org/)
* [`jupyterlab`](https://jupyterlab.readthedocs.io/en/stable/)

[bioconda](http://bioconda.github.io/) channel:

* [`nglview`](http://nglviewer.org/nglview/latest/)

#### Known Bugs

`nglview` does not work in non-Linux environments (Windows & MacOS).

## Getting Started

### Linux

1. Install [Anaconda](https://www.anaconda.com/download/) for Python 3.6 or higher
2. Execute the `setup-conda-linux.sh` script which will automatically set up a Python environment named `WTcourse`
3. Activate the conda environment with: `source activate WTcourse`

### Oxford Biochemistry VMs

1. Execute the `setup-oxfordWT.sh` script which will automatically set up a local [Anaconda](https://www.anaconda.com/download/) named `WTcourse`

## Acknowledgements

### Authors

* Marc Daemgen
* Anna Duncan
* Nicholas Michelarakis
* Fiona Naughton
* Naushad Velgy
* William Glass
* Irfan Alibay
