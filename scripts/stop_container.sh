#!/bin/bash
set -e

# Stop the running container (if any)
#echo "Hi"
containerid='sudo docker ps | awk -F " " '{print $1}''
sudo docker rm -f $containerid
