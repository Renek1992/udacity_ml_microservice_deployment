#!/usr/bin/env bash

# Step 1:
dockerpath="renekesenheimer/udacitymlapi"

# Step 2
kubectl run mlmicroserviceapi \
                --image=$dockerpath \
                --port=80 \
                --labels app=mlmicroserviceapi

# Step 3:
sleep 5
kubectl get pods

# Step 4:
kubectl port-forward mlmicroserviceapi 8000:80

