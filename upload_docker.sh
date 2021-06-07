#!/usr/bin/env bash

# Step 1:
dockerpath="renekesenheimer/udacitymlapi"

# Step 2:  
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag udacitymlapi $dockerpath

# Step 3:
docker image push $dockerpath
