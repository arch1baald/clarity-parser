#!/bin/bash

# if [ -n "$DOCKER_USERNAME" ]; then
#   echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
#   docker tag arch1baald/clarity:latest
#   docker push arch1baald/clarity:latest
# fi

docker tag arch1baald/clarity:latest
docker push arch1baald/clarity:latest
