#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull yekummar/yfirstawscbd:latestdoc

# Remove the Docker image existing Process
containerid='sudo docker ps | awk -F " " '{print $1}''
sudo docker rm -f $containerid

# Run the Docker image as a container
docker run -d -p 5000:5000 yekummar/yfirstawscbd:latestdoc
