from modeller import *
from modeller.automodel import *    # Load the automodel class

log.verbose()
env = environ()

# directories for input atom files
env.io.atom_files_directory = ['.', '.']

a = automodel(env,
              alnfile  = 'pairwise_alignment_CT.ali',     # alignment filename
              knowns   = 'OmpACT',              # codes of the templates
              sequence = 'seq_YPCT_G',              # code of the target - we can call this what we like
              assess_methods=(assess.DOPE,	
                              assess.GA341))


a.starting_model= 1                 # index of the first model
a.ending_model  = 10                # index of the last model as this is 1 and the start is 1 - we will just generated 1 model
                                    # (determines how many models to calculate)
a.make()                            # do comparative modeling

