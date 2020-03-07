
A typical strategy in obtaining accurate models is to generate multiple homology models and assess their quality based on various scoring functions.

Contained in the example_models directory are 100 previously generated homology models.

You can find the Modeller objective function score on the second line of each .pdb file.

This function is not an absolute measure and only pertains to models generated from the same alignment. Essentailly it is a relative scoring function for the set of models you have just built.

Go to the example_models directory and Type the following to extract these scores from all the generated models:

	grep OBJECTIVE *.pdb >> scores.txt
	
Open this file in vim and type:

	'Shift :' to enter command input

Then type:

	'set number' into the terminal. 

The line number will correspond to the pdb file number.

Use this to select the top 10 models based on the Modeller objective function.

Copy these files into a new directory.

Next we will upload these models to the QMEAN server in order to select a single model.

The QMEAN (Qualitative Model Energy ANalysis) scoring function derives a quality estimate for both local and global (per-residue) quality estimates. For more information on the scoring function see: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2703985/

Go to the QMEAN server website via:

	https://swissmodel.expasy.org/qmean/

Select just 'QMEAN' from the three method options available.

Select the top 10 models you saved in the new directory for analysis by clicking the 'select coordinate file' option and click submit once these have been uploaded. Feel free to add your email if you'd like a copy of the results sent to you.

In the output you should see QMEAN scores for each model as well as a breakdown of the local quality.

By clicking Project Archive download we can obtain a .zip with a breakdown of the results.

For each model you should be able to scroll over the local quality score which will also simultaneously display amino acid residues on a 3D projection of your model on the panel to the right.

Select the model with the highest QMEAN4 value for the next step, keeping the QMEAN tab open.

We will now check the model's backbone torsions by generating a Ramachandran plot.

Go to the following website and upload your structure:

	http://mordred.bioc.cam.ac.uk/~rapper/rampage.php

Download the postscript file to obtain a pdf.

Are there any violations and if so, why might they be occuring there?
Open up your .pdb file in pymol or VMD to check.

Do these regions also correspond to low local quality scores in QMEAN?
