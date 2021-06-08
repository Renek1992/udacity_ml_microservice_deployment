#!/usr/bin/env bash

# Step 1:
dockerpath="renekesenheimer/udacitymlapi:latest"

# Step 2
kubectl run udacitymlapi \
                --image=$dockerpath \
                --port=80

# Step 3:
sleep 5
kubectl get pods

# Step 4:
kubectl port-forward udacitymlapi 8000:80

