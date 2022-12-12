# Loop refinement of an existing model
from modeller import *
from modeller.automodel import *

log.verbose()
env = environ()

# directories for input atom files
env.io.atom_files_directory = ['.']  # needed if you put your coordinate files somewhere

# Create a new class based on 'loopmodel' so that we can redefine
# select_loop_atoms (necessary)
class MyLoop(loopmodel):
    # This routine picks the residues to be refined by loop modeling
    def select_loop_atoms(self):
        # 10 residue insertion 
        return selection(self.residue_range('177:A', '195:A'))  # You will have CHANGE THIS FOR YOUR MODEL -
                                                                # these refer to the muscle_nAChR.pdb file -
                                                                # so change for your template that you call below... 

m = MyLoop(env,
           inimodel='Full_OmpA_YP.pdb', # initial model of the target - CHANGE TO YOUR TEMPLATE PDB
           sequence='Full_OmpA_YP')          # code of the target

m.loop.starting_model= 1           # index of the first loop model 
m.loop.ending_model  = 10          # index of the last loop model
m.loop.md_level = refine.very_fast # loop refinement method; this yields
                                   # models quickly but of low quality;
                                   # use refine.slow for better models

m.make()
