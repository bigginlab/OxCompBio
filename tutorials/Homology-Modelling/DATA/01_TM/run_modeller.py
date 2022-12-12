from modeller import *
from modeller.automodel import *    # Load the automodel class

log.verbose()
env = environ()

# directories for input atom files
env.io.atom_files_directory = ['.', '.']

a = automodel(env,
              alnfile  = 'pairwise_alignment_TM.ali',     # alignment filename
              knowns   = 'OmpATM',              # codes of the templates
              sequence = 'seq_YPTM')              # code of the target - we can call this what we like

a.starting_model= 1                 # index of the first model
a.ending_model  = 1                # index of the last model as this is 1 and the start is 1 - we will just generated 1 model
                                    # (determines how many models to calculate)
a.make()                            # do comparative modeling

