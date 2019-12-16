In this tutorial we will be building an homology model based on the human adult muscle nAChR (nicotinic acetylcholine receptor).

So that we can model our protein of interest, we must select the best possible template structure of which to base our compartive model on. In order to do this accurately, it helps to consider the following questions:


> In what state do we want to model our protein (i.e open, closed or desensitized)?

> Does a structure of a phylogenetically related protein in that particular state exist?

> Yes, OK great- are there multiple structures of this state?

> What structure possesses the best sequence alignment?

> High sequence alignment but low resolution? Perhaps it's worth considering a different template...

> Are there any other reasons why you might not want to select a particular structure? I.e. inaccurate assignemnt of EM desnsity - missing loops or regions. 


Instructions

Make a directory entitled 'nAChR_model'.

Go to uniprot.org to search for the sequences of interest.

The gene encoding the muscle nicotinic acetylcholine receptor alpha1 subunit is 'CHRNA', so type that in to the search bar and look for ACHA_HUMAN.

Click on the entry number P02708 and locate the FASTA sequence.

Two isoforms of this subunit exist. Click on the 'Isoform 1' FASTA file download. This will redirect you to a page with the amino acid sequence.

Do this for CHRNB, CHRND and CHRNE sequences as well. These are the other subunits of the adult muscle nAChR.

We'll now do a blast search to look for a suitable template sequence. This will be a sequence for which a 3D structure exists that we can use as a template to base our homology model on.

go to the blast website:

	https://blast.ncbi.nlm.nih.gov/Blast.cgi?PAGE=Proteins

In the 'choose Search set', change the Database to PDB.

Copy and paste the CHRNA amino acid seqeunce into the FASTA box and click BLAST.

6PV7 is a structure for a recently solved human nAChR with alpha3 and beta4 subunits.

Now locate the respective FASTA sequences for these subunits in uniprot and open each FASTA sequence in a new tab.


An accurate MSA will have a good balance of related sequences. As we are trying to model a cationic channel- it makes sense to include sequences of mostly cationic channels. 
If we include too many anionic channels (lower sequence identity) then the accuracy of our alignment may decrease.

Once you have all your sequences in invividual tabs, go to the MUSCLE multiple sequence alignment website:

	https://www.ebi.ac.uk/Tools/msa/muscle/

Copy and paste in all your FASTA sequences. Remember to include the first line of each respective FASTA sequence that contains the metadata. If you want to include your email address to send the resulting file to you can, although this is not necessary.

When the alignment is ready, right click on the 'Download Alignment File' tab and click 'Save link as'.

Save the resulting .clw file two your 'nAChR_model' directory.

At this point we want to visualise our results. 

*************************Jalview instructions*****************

Open up Jalview

An example alignment should open automatically so just close them after the programme has loaded up.

Drag and drop your .clw file on to the JalView GUI.

Next, click on the 'Colour' tab and select 'Clustal'. This will visualise your alignment by amino acid properties. 

Scroll through your alignment. If there are any insertions or deletions ('indels') denoted by dashes in regions of high sequence identity then you should scrutinize your alignemnt carefully and if needed, move them at the point of generating your final alignment. Indels commonly show up in regions of low sequence identity where flexible loops exist. These are usually less problematic but should be analysed before model generation. 

Next we will run a DSSP on our sequence. 
Click on the 'Web Service' tab and then find 'JPred secondary structure prediction'.
You should be able to see red lines where alpha-helices have been predicted and green lines for beta-sheets.
