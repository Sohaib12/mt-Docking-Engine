# !/bin/bash

#

# Start autogrid.
cd x86_64Linux2
./autogrid4

# Start autodock.


# Go to previous directory.
cd ..

# Start foreman to run autodockrunner. This will fire up the Procfile that will give the available cores their tasks.
foreman check
foreman start
