#!/bin/bash

if [ $ENV_TO_INJECT = "c4.large" ]; then
  echo "It has 2 cores"
elif [ $ENV_TO_INJECT = "c4.xlarge" ]; then
  echo "It has 4 cores"
elif [ $ENV_TO_INJECT = "c4.2xlarge" ]; then
  echo "It has 8 cores"
elif [ $ENV_TO_INJECT = "c4.4xlarge" ]; then
  echo "It has 16 cores"
elif [ $ENV_TO_INJECT = "c4.8xlarge" ]; then
  echo "It has 36 cores"
elif [ $ENV_TO_INJECT = "c3.large" ]; then
  echo "It has 2 cores"
elif [ $ENV_TO_INJECT = "c3.xlarge" ]; then
  echo "It has 4 cores"
elif [ $ENV_TO_INJECT = "c3.2xlarge" ]; then
  echo "It has 8 cores"
elif [ $ENV_TO_INJECT = "c3.4xlarge" ]; then
  echo "It has 16 cores"
elif [ $ENV_TO_INJECT = "c3.8xlarge" ]; then
  echo "It has 32 cores"
fi
