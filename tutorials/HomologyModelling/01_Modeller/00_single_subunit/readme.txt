For large heteromeric proteins- it may help to just try and build a single subunit in the first instance.


1) Make a copy of your .clw file and save it with .ali at the end of the file name. 

2) Included in the directory will be an example .ali file for a single subunit. What you need to do here is take your .clw file and format it so that it takes on a .ali structure. First remove all subunits that you wont include in your homology model.

3) For your template structure, make sure to include the pdb code and chain information in correct fields (where the ::::::: is at the structure description in the .ali file).

4) For the description line for the sequence to be modelled- add nAChR_alpha to the second field.

5) Make a copy of the 6pv7.pdb and open in pymol.

6) Click 's' in the bottom right corner of the GUI to show the amino acid sequence of the protein.

7) Highlight the alpha subunit of the receptor and in the 'sele' tab click 'A' and then 'copy to object'.

8) Save the resulting Obj01 as alpha3.pdb

9) Change the second field of the template structure description to alpha3.pdb

10) Open build_models.py and check that the .ali file is named correctly. 'knowns' and 'sequence' should match the P1 line above each structure and sequence description line.

11) a.starting_model and a.ending_model should both = 1 at this stage.

12) When ready, type python build_models.py into your terminal.





In a different tab go to the blast website:

https://blast.ncbi.nlm.nih.gov/Blast.cgi?PAGE=Proteins

In the 'choose Search set', change the Database to PDB.

Copy and paste the full amino acid seqeunce into the FASTA box and click BLAST.

Open tabs for 6PV7_A and 6PV7_B- This corresponds to Fusion protein of Neuronal acetylcholine receptor ssubunit alpha-3 and beta-4 and Soluble CYTOCHROME B562 [Homo sapiens]
