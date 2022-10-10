#!/bin/bash

TAG=${1:-linux}

if [ -n "$DOCKER_USERNAME" ]; then
    echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
    docker tag arch1baald/clarity arch1baald/clarity:$TAG
    docker push arch1baald/clarity:$TAG
fi

# docker tag arch1baald/clarity:$TAG
# docker push arch1baald/clarity:$TAG
