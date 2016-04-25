#!/bin/bash

cd ComputeUnitNetworkManager/src/

# Run the java code..
javac -cp .:/ComputeUnitNetworkManager/lib/* ComputeUnitNetworkManager.java
java -cp .:/ComputeUnitNetworkManager/lib/* ComputeUnitNetworkManager
