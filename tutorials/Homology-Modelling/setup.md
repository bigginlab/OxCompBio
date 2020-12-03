# Setup instructions for the Oxford Computational Biochemistry Homology Modelling Course

Navigation: [return to the main setup page](../../setup.md)

Included here are instructions to get you started with the Oxford Computational
Biochemistry Homology Modelling course.


# 1. Setup

These are instructions that should be followed prior to the tutorial. These
will set you started with creating the appropriate conda environment to go
through the tutorial's contents. Two days have been set aside on the 10th and
11th of December to do this and setup ask questions to demonstrators where needed.


## Installing the pre-requisites

The install instructions are all contained within the tutorial notebook
`homology-modelling-tutorial.ipynb`.

We recommend that you open it on github and then using a terminal
(see [main setup instructions](../../setup.md)) go from `Objectives` through
to just before `1. Perform a multiple sequence alignment`.

As part of the instructions you will be asked to create a new conda environment
named `OxHomology` and install various associated software.

**Important note:** You do not need to re-install anaconda/miniconda, this
should have already been done as part of the [main setup instructions](../../setup.md).
Please do ignore this third bullet point entry from the `BEFORE YOU START` instructions.

Once you have finished these instructions please remember to deactivate your
conda environment within your terminal using:

```
conda deactivate
```

You can then continue for the setup of the other tutorials:

- [Main setup instructions](../../setup.md)
- [Python tutorial](../Python/setup.md)
- [MD tutorial](../MD/setup.md)
- [Docking](../Docking/README.md)


# 2. Starting the tutorial

This will be done on the day of the course.

In your terminal, navigate to the `Homology-Modelling` folder of your local download of
this tutorial.

Then start a jupyter notebook instance using:

```
jupyter notebook
```

In the session that opens in your browser you can then click on `homology-modelling-tutorial.ipynb`
to start the tutorial notebook.

As you will have already done the setup instructions, you can jump directly to
section `1. Perform a multiple sequence alignment` (although you may find it useful to review the objectives).
