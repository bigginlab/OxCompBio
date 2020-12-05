# Setup instructions for the Oxford Computational Biochemistry Molecular Dynamics (MD) course

Included here are instructions to help you get started with the Oxford Computational Biochemistry MD course.

The instructions are split into two parts:

1. Setup

These instructions should be followed prior to attending the tutorial.
This will walk you through; installing the necessary software, obtaining
your ARCUS account, and testing that everything works as expected.

2. Starting the tutorial

These instructions should be followed on the day of / when starting the tutorial.
We assume here that you have completed the setup instructions on the same machine
and that testing passed as expected.

## 1. Setup

### 1.1 Pre-requisites

This tutorial uses the same `conda` environment as the one used in the Python
tutorial. You will therefore have to complete the [Python tutorial setup instructions](../Python/setup.md)
beforehand.

### 1.2 Activate environment

Using a terminal browse (i.e. using `cd`) to your local installation of this tutorial.

Then we want to activate the conda environment:

```
conda activate OxPython
```

If this fails, it may be that the Python tutorial setup was unsuccessful.

### 1.3 Setup notebook

The remainder of the setup instructions are in the `00_Setup.ipynb` notebook.

Start jupyter notebook:

```
jupyter notebook
```

And click on `00_setup.ipynb` in your browser to open the instructions.

### 1.4 On completion of the instructions

Once finished with the notebook, please remember to deactivate your conda environment:

```
conda deactivate
```


## 2. Starting the tutorial

Assuming you have already completed the setup instructions, open a terminal and
navigate to the MD tutorial.


Then activate the conda environment:

```
conda activate OxPython
```

And start the tutorial by typing:

```
jupyter notebook
```

You should then make your way through the notebooks starting with `01_Introduction.ipynb`.

Please note that you will also be required to also have an opened terminal (linux/macOS)
or MobaXterm instance (Windows) in order to connect to ARCUS.
