# !/bin/bash

# This file should be dynamically edited.
# For example it should take the names of the files (target, ligand) and then create (gpf, dpf) files from them.
# Then it should run autogrid with the gpf file in arguments.
# And then it should run autodock with the dpf file in arguments.

# Recieve files/file names.
#URLS=”www.abcd.com/page1/file1.pdf \
#http://www.efgh.com/page2/file2.ogg \
#http://www.ijkl.com/page3/file3.jpg&#8221;

#for u in $URLS
#do
#    wget -b -P /home/user/Downloads $u –no-check-certificate –user=username –password=password
#done

# If target is in .pdb format, then create .pdbqf file using tutorial. Otherwise skip this step.
#python workingdirectory/prepare_target.py -l filename.pdb -o ABC.pdbqt

# If ligand is in .pdb format, then create .pdbqf file using tutorial. Otherwise skip this step.
#python workingdirectory/prepare_ligand.py -l filename.pdb -o ABC.pdbqt

# Create gpf files from target files using numbers and other parameters.


# Create dpf files from ligand files using numbers and other parameters.


# Run autogrid using gpd file as argument.


# Run autodock using dpf file as argument.



echo "autodocker runner starts!!!!!"


