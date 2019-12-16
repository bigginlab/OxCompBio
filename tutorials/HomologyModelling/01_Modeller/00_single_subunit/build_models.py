# Comparative using a provided initial structure file (inifile)
from modeller import *
from modeller.automodel import *    # Load the automodel class

log.verbose()
env = environ()

# directories for input atom files
#env.io.atom_files_directory = ['.', '../atom_files']

a = automodel(env,
              alnfile  = 'BPD_MSA.ali',     # alignment filename
              knowns   = 'GANGR',              # codes of the templates
              sequence = 'muscle')              # code of the target
a.starting_model= 1                 # index of the first model
a.ending_model  = 1                # index of the last model
                                    # (determines how many models to calculate)
a.make()                            # do comparative modeling
