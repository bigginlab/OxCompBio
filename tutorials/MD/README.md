# Oxford Computational Biochemistry Molecular Dynamics Tutorial

## Contents

The Oxford Computational Biochemistry Python Tutorial is a series of notebooks which aim to teach the basics of python to new users. It assumes no prior knowledge of python or any other programming languages.

The tutorial is broken down into 11 sections which progressively introduce various python concepts. We recommend that these be followed in order, however those already acquainted with python may wish to skip ahead to some of the later topics.

## Requirements

Python 3.6 or higher is required for this workshop. Note that Python 2.x will reach End of Life (EOL) the 1st of January 2020. We advise that no new python code be written in Python 2.x.

### Conda

This tutorial uses several [libraries](#Libraries) which are not provided in standard python installations. Whilst there are many means by which to install and manage python libraries, we recommend using the `conda` manager which is provided in [Anaconda python distributions](https://www.anaconda.com/distribution/).

If you are attending the Oxford Computational Biochemistry workshop and are using the Linux VM, this has already been installed for you.

### Libraries

Default conda channel:

* [`numpy`](https://numpy.org/)
* [`matplotlib`](https://matplotlib.org/)

[conda-forge](https://conda-forge.org/) channel:

* [`MDAnalysis`](https://www.mdanalysis.org/)
* [`jupyterlab`](https://jupyterlab.readthedocs.io/en/stable/)
* [`nglview`](http://nglviewer.org/nglview/latest/)


## Getting Started

### Linux and MacOS

1. These instructions assume that an [anaconda](#Conda) python distribution is installed locally.
2. Execute the `setup-conda.sh` script which will automatically set up a Python environment named `oxpy`
3. Activate the conda environment using: `conda activate oxpy`.
4. Launch [Jupyter Notebook](https://jupyter.org/) with `jupyter notebook`.
5. Navigate to the appropriate tutorial section and open the relevant `.ipynb` file.

## Acknowledgements

This tutorial was first created in 2017 as part of the Oxford Wellcome Trust course. It is the product of the work of several authors who have contributed to it over the years. Please see `CONTRIBUTORS.md` for a full list of acknowledgements. As the tutorial was not originally tracked on github, our apologies if any authors have been missed from this list.

If you happen to contribute to the molecular dynamics tutorial, please add yourself to this list.
