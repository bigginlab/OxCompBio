from modeller import *
from modeller.automodel import *

log.verbose()
env = environ()

# directories for input atom files
env.io.atom_files_directory = ['.', '../atom_files']

class MyModel(automodel):
    def special_restraints(self, aln):
        rsr = self.restraints
		#Add some restraints from a file:
		#rsr.append(file='my_rsrs1.rsr')

#       Residues 5 through 9 should be an alpha helix:
       # rsr.add(secondary_structure.alpha(self.residue_range('5:', '42:')))
       # rsr.add(secondary_structure.alpha(self.residue_range('288:', '300:')))


a = MyModel(env, alnfile='a2b4_muscle.ali',
              knowns=('5KXI'), 
	      sequence='musclenachr',
	      assess_methods=(assess.DOPE, assess.GA341))

a.starting_model = 1
a.ending_model = 2
a.make()

# Get a list of all successfully built models from a.outputs
ok_models = filter(lambda x: x['failure'] is None, a.outputs)

# Rank the models by DOPE score
key = 'DOPE score'
ok_models.sort(lambda a,b: cmp(a[key], b[key]))

# Get top model
m = ok_models[0]
print "Top model: %s (DOPE score %.3f)" % (m['name'], m[key])
