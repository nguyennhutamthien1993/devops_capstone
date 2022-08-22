#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=thiennnt/devops_capstone .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run --name capstone -p 8000:80 thiennnt/devops_capstone