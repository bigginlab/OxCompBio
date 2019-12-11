For making a heteromeric receptor we need to follow the same steps as in the previous directory however make a few changes.

Copy your .clw, .alie and 6pv7.pdb file to this directory.

Make a copy of 6pv7.pdb and open this in pymol.

Type 'remove not polymer' into the GUI to remove all non protein residues.

You should also note that this protein was crystalised with the help of some auxillary subunits on the extracellular domain. Select these subunits and click 'extract to object' similar to the previous directory in order to remove these from the main receptor. 

Save the resulting structure of just the receptor protein as a new .pdb file.

Adapt your .ali file so that the structure description line covers the full protein.

Add the additional subunit alignemnts to your .ali file making sure to include '/' where the chain of the protein ends. At the end of the receptor, include a '*' after the final '/' character to denote the end of the receptor amino acid sequence.

Edit the python script included in this directory so that the requisite files are included.

Generate 1 model.



