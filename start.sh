# !/bin/bash

# Make the following bash scripts executable.
chmod +x /table.sh
chmod +x /autodockrunner.sh

# Fire up another bash script that checks the capacity...
bash table.sh "$ENV_TO_INJECT"

# İnstall the necessary packages for running autogrid and autodock.
cd yavst
cd requirements
pip install -r requirements.txt
cd ..
cd ..

# Start foreman to run autodockrunner. This will fire up the Procfile that will give the available cores their tasks.
foreman check
foreman start

# Fire up another bash script that runs the autodock depending on the capacity...


# Start autogrid.
cd x86_64Linux2
./autogrid4

# Start autodock.


# Go to previous directory.
cd ..

