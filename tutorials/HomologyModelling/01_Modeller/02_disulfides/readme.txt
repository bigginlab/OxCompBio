The muscle nAChR contains disulfide bonds in its structure. 

It is crucially important to check that these have been correctly formed after you generate your model.

Included in this directory is a previously built homology model that does not contain proper disulfide bonds. 

Open the model in pymol and locate the cysteine residues that should be bonded.

To help speed up the process, type 'select. br resname CYS' into the pymol GUI to help find the correct residues.

Copy your .ali file made previously into this directory.

You now need to adapt this .ali file so that your template structure is replaced with the sequence of your model. You should therefore have an alignment of your homology model with your homology model.

Adapt the disu.py script to build in a disulfide bond where required.

You can keep the number of models generated to 1 here.


