# !/bin/bash

# Make the following bash scripts executable.
chmod +x /autodockrunner.sh

# Check capacity and then dynamically create a Procfile that utilizes all the capacity.
# Also it will start foreman to run autodockrunner. 
# And will fire up the Procfile that will give the available cores their tasks.
touch Procfile
if [ $ENV_TO_INJECT = "c4.large" ]; then
  echo "It has 2 cores"
  open -e Procfile
  for i in {1..2}
    do 
      echo "it should run two times"
    done
  foreman check
  foreman start
elif [ $ENV_TO_INJECT = "c4.xlarge" ]; then
  echo "It has 4 cores"
  foreman check
  foreman start
elif [ $ENV_TO_INJECT = "c4.2xlarge" ]; then
  echo "It has 8 cores"
  foreman check
  foreman start
elif [ $ENV_TO_INJECT = "c4.4xlarge" ]; then
  echo "It has 16 cores"
  foreman check
  foreman start
elif [ $ENV_TO_INJECT = "c4.8xlarge" ]; then
  echo "It has 36 cores"
  foreman check
  foreman start
elif [ $ENV_TO_INJECT = "c3.large" ]; then
  echo "It has 2 cores"
  foreman check
  foreman start
elif [ $ENV_TO_INJECT = "c3.xlarge" ]; then
  echo "It has 4 cores"
  foreman check
  foreman start
elif [ $ENV_TO_INJECT = "c3.2xlarge" ]; then
  echo "It has 8 cores"
  foreman check
  foreman start
elif [ $ENV_TO_INJECT = "c3.4xlarge" ]; then
  echo "It has 16 cores"
  foreman check
  foreman start
elif [ $ENV_TO_INJECT = "c3.8xlarge" ]; then
  echo "It has 32 cores"
  foreman check
  foreman start
fi

# Start autogrid.
cd x86_64Linux2
./autogrid4

# Start autodock.
./autodock4

# Go to previous directory.
cd ..

