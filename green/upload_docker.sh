#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub, assuming that an image has been built via `run_docker.sh`

# Step 1 : Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=rajdeep07/testgreenimage

# Step 2 :  Authenticate & tag
docker login --username rajdeep07
docker tag testgreenimage rajdeep07/testgreenimage

# Step 3 : Push image to a docker repository
docker push rajdeep07/testgreenimage
