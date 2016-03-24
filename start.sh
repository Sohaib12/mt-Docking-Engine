#!/bin/bash

# Make the following bash scripts executable.
chmod +x /autodockrunner.sh

# Check capacity and then dynamically create a Procfile that utilizes all the capacity.
# The Procfile will start  autodockrunner.sh in a parallel form.
if [ "$ENV_TO_INJECT" = "c4.large" ]; then
  echo "It has 2 cores"
  for i in {1..2}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done
    
elif [ "$ENV_TO_INJECT" = "c4.xlarge" ]; then
  echo "It has 4 cores"
  for i in {1..4}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done

elif [ "$ENV_TO_INJECT" = "c4.2xlarge" ]; then
  echo "It has 8 cores"
  for i in {1..8}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done

elif [ "$ENV_TO_INJECT" = "c4.4xlarge" ]; then
  echo "It has 16 cores"
  for i in {1..16}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done

elif [ "$ENV_TO_INJECT" = "c4.8xlarge" ]; then
  echo "It has 36 cores"
  for i in {1..36}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done

elif [ "$ENV_TO_INJECT" = "c3.large" ]; then
  echo "It has 2 cores"
  for i in {1..2}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done

elif [ "$ENV_TO_INJECT" = "c3.xlarge" ]; then
  echo "It has 4 cores"
  for i in {1..4}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done

elif [ "$ENV_TO_INJECT" = "c3.2xlarge" ]; then
  echo "It has 8 cores"
  for i in {1..8}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done

elif [ "$ENV_TO_INJECT" = "c3.4xlarge" ]; then
  echo "It has 16 cores"
  for i in {1..16}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done
    
elif [ "$ENV_TO_INJECT" = "c3.8xlarge" ]; then
  echo "It has 32 cores"
  for i in {1..32}
    do 
      touch Procfile
      echo "worker: ./autodockrunner.sh" >> Procfile
    done
fi

foreman check
foreman start
