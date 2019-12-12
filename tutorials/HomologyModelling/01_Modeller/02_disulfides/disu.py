# Comparative modeling by the automodel class
from modeller import *			# Load standard Modeller classes
from modeller.automodel import *	# Load the automodel class

# Modeller can automatically build in disulfides if they are aligned with template disu
# Redefine the special_patches routine to include the additional disulfides
# (this routine is empty by default):
class MyModel(automodel):
    def special_patches(self, aln):
        # A disulfide between residues 196 and 197:
        self.patch(residue_type='DISU', residues=(self.residues['196:A'],
                                                  self.residues['197:A']))
   
	
log.verbose()    	# request verbose output
env = environ()		# create a new MODELLER environment to build this model in

a = MyModel(env, alnfile='MUSCLE_4pir-alpha7-chainA.ali',#alignment filename
              knowns='4pir', sequence='P36544', 	#knowns is code of template, sequence is code of target
              assess_methods=(assess.DOPE,	
                              assess.GA341))
a.starting_model = 1	#index of the first model
a.ending_model = 1	#index of the last model (determines how many models to calculate)
a.make()		#do comparative modeling
