Due to the uncertainty of how to model flexible loops, you may need to try a few different loop conformations before you obtain something that makes sense. You can do that with the loop_refine.py script. 

Copy your final model from ../01_heteromeric_receptor/ and edit the loop_refine.py so that it has the correct .pdb file named.

You do not need a .ali file here so once you've edited the python script you can go ahead and run it by typing:

	python loop_refine.py 

into the terminal.

A modeller objective function will be displayed in the pdb files as before.

Open all these structures in pymol to see the different loop conformation outputs.
