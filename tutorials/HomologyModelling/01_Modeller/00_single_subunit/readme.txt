It may help to just build a single subunit in the first instance before generating a full heteromer.

1) Make a copy of your .clw file and save it with .ali at the end of the file name. 

2) Included in the directory will be an example .ali file for a single subunit. What you need to do here is take your .clw file and format it so that it takes on a .ali structure. First remove all subunits that you wont include in your homology model.

A quick way of doing this is within VIM. Open your .ali file and hold 'shift :'. Then type g/Sequence_to_be_deleted/d and press enter. This will delete all lines containing a particular string.

Take time with this step as it's the most important. Mistakes made at this point carry through to the final model.

3) Once you are satisfied with your alignment you can focus on generating a 3D model. 

   Go to http://www.rcsb.org/ and search for 6pv7

   Download a .pdb file of 6pv7 to your current working directory.

   Open 6v7 in pymol.

4) Click 's' in the bottom right corner of the GUI to show the amino acid sequence of the protein.

5) Highlight the alpha subunit of the receptor and in the 'sele' tab click 'A' and then 'copy to object'.

6) Save the resulting Obj01 as alpha3.pdb

7) You will now need to update your .ali file to contain the correct information for what template you are using.

   For your template structure, make sure to include the pdb code and chain information in correct fields (where the ::::::: is at the structure description in the .ali file). If you are unsure how to do this, have a look at the example .ali file.

8) For the description line for the sequence to be modelled- add nAChR_alpha to the second field.

9) Change the second field of the template structure description to alpha3.pdb

10) Open build_models.py and check that the .ali file is named correctly. 'knowns' and 'sequence' should match the P1 line above each structure and sequence description line.

11) a.starting_model and a.ending_model should both = 1 at this stage.

12) When ready, type python build_models.py into your terminal.

13) Open the resulting model in pymol with your template to see if the backbones of your structures are similar.
