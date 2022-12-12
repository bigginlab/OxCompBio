# Oxford Computational Biochemistry course

This repository contains the teaching materials for the Oxford Computational Biochemistry course.
This two and half day course is aimed at graduate students who have had no prior experience in the area of Computational Biochemistry. It assumes no prior knowledge and only tries to cover basic concepts.

## Getting started

In order to participate in these tutorials you will need specific software installations.

To get started, please see the [overall setup instructions](setup.md).

## Tutorials

### 1) [Python](tutorials/Python) [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/bigginlab/OxCompBio/master?filepath=tutorials%2FPython)

A set of jupyter notebooks which aim to teach the basics of python programming assuming no prior knowledge.
First introducing core concepts such as variables, loops, conditionals and lists, we eventually demonstrate how molecular structures can be analysed using python libraries such as [MDAnalysis](https://www.mdanalysis.org/) and [NGLView](http://nglviewer.org/nglview/latest/).

#### Summary of notebooks

|  Notebook                                       | Colab link |
|-------------------------------------------------|------------|
| 0. Introduction                                 | [![notebook 1](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/00_Introduction/no_solutions/Introduction.ipynb)
| 1. Basic Types                                  | [![notebook 2](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/01_BasicTypes/no_solutions/BasicTypes.ipynb)
| 2. Variables and Comparisons                    | [![notebook 3](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/02_Variables/no_solutions/Variables_and_Comparisons.ipynb)
| 3. Loops                                        | [![notebook 4](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/03_Loops/no_solutions/Loops.ipynb)
| 4. Conditionals                                 | [![notebook 5](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/04_Conditionals/no_solutions/Conditionals.ipynb)
| 5. Lists                                        | [![notebook 6](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/05_Lists/no_solutions/Lists.ipynb)
| 6. File Handling                                | [![notebook 7](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/06_FileHandling/no_solutions/FileHandling.ipynb)
| 7. Functions                                    | [![notebook 8](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/07_Functions/no_solutions/Functions.ipynb)
| 8. Documentation                                | [![notebook 9](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/08_Documentation/no_solutions/Documentation.ipynb)
| 9. Libraries                                    | [![notebook 10](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/09_Libraries/no_solutions/Libraries.ipynb)
| 10. NumPy                                       | [![notebook 11](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/10_Numpy/no_solutions/Numpy.ipynb)
| 11. Object Orientated Programming               | [![notebook 12](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/11_OOP/no_solutions/OOP.ipynb)
| 12. Protein Analysis                            | [![notebook 13](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/12_ProteinAnalysis/no_solutions/ProteinAnalysis.ipynb)
| 13. Simulation and Analysis                     | [![notebook 14](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/IAlibay/oxcompbio-python/blob/main/tutorial/13_Simulation_and_Analysis/no_solutions/Simulation_and_Analysis.ipynb)

### 2) [Homology Modelling](tutorials/Homology-Modelling)

Contains a practical tutorial and lecture slides that aim to:

   • Introduce the process of homology modelling.
  
   • Summarise the methods for predicting the structure from sequence.
  
   • Describe the individual steps involved in creating and optimising a protein homology model.
   
   • Outline the methods available to evaluate the quality of homology models.

### 3) [Molecular Dynamics](tutorials/MD)

Contains lecture slides on the Molecular Dynamics method and a practical [GROMACS](http://www.gromacs.org/) tutorial that aims to demonstrate how to:

- Setup, equilibrate and simulate a protein-ligand system in water.
- Visualise the system and its trajectory with [VMD](https://www.ks.uiuc.edu/Research/vmd/) and [NGLView](http://nglviewer.org/nglview/latest/).
- Perform basic analysis utilising GROMACS tools, [MDAnalysis](https://www.mdanalysis.org/), and the [matplotlib](https://matplotlib.org/) plotting tool.

### 4) <a href="https://bigginlab.github.io/OxCompBio/docking.html" title="docking">Molecular Docking</a>

A tutorial which aims to teach the basics of molecular docking.

The tutorial contains:
- Lecture slides introducing the concept of molecular docking.
- A tutorial which looks at using [Autodock Vina](http://vina.scripps.edu/) to dock small ligands to HIV-1 protease.

## Acknowledgements

The Oxford Computational Biochemistry course has been written by several authors over several years.
Please see individual tutorials for contributor logs.

Course leader: Professor Syma Khalid

## License

The code is released under the [BSD-3](https://opensource.org/licenses/BSD-3-Clause) license (see `LICENSE` file) while other content is released under the [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) license (see below).

<a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc/4.0/">Creative Commons Attribution-NonCommercial 4.0 International License</a>.
