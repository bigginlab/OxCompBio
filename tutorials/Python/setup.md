# Setup instructions for the Oxford Computational Biochemistry Python workshop

## Contents

This workshop is delivered through a series of [Jupyter notebooks](https://jupyter-notebook.readthedocs.io/en/stable/) which allow for interactive Python programming.

To run these the following instructions should be followed:

### 1. Download the workshop materials

In a terminal, close the workshop repository:

```bash
git clone https://github.com/IAlibay/oxcompbio-python.git
```

### 2. Create the conda environment

First navigate within your shell to inside the repository

```bash
cd oxcompbio-python
```

Then create the conda environment

```bash
conda env create --file=environment.yml
```

Once it's finished, activate the environment

```bash
conda activate OxPython
```

### 3. Activate Jupyter extensions

The workshop leverages the extended utility of several Jupyter nbextensions.

To install these, the followed should be run once (after having activated the conda environment):

```bash
jupyter contrib nbextension install --user
jupyter nbextension enable splitcell/splitcell
jupyter nbextension enable rubberband/main
jupyter nbextension enable exercise2/main
jupyter nbextension enable autosavetime/main
jupyter nbextension enable collapsible_headings/main
jupyter nbextension enable codefolding/main
jupyter nbextension enable limit_output/main
jupyter nbextension enable toc2/main
```

### 4. Start a jupyter notebook seession

Finally start a jupyter notebook session by typing the following in your shell.

```bash
jupyter notebook
```

