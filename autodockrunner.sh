# !/bin/bash

# This script will get two files (t.gpf and l.pdb).
# Then create .pdbqt file from l.pdb. Then convert into .dpf format using numbers and parameters.
# Then run autogrid4 using .gpf file as argument. And then run autodock4 using .dpf file as argument.


# If target is in .pdb format, then create .pdbqf file using tutorial. Otherwise skip this step.
#python workingdirectory/prepare_target.py -l filename.pdb -o ABC.pdbqt

# If ligand is in .pdb format, then create .pdbqf file using tutorial. Otherwise skip this step.
#python workingdirectory/prepare_ligand.py -l filename.pdb -o ABC.pdbqt

# Create gpf files from target files using numbers and other parameters.


# Create dpf files from ligand files using numbers and other parameters.


# Run autogrid using gpf file as argument.


# Run autodock using dpf file as argument.



echo "this should run before download finishes!!!!!"


