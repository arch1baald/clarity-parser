#!/bin/bash

# To build on M1 MacOS specify the platform argument
# For example: sh scripts/rebuild.sh --platform linux/arm64/v8
docker build -t arch1baald/clarity $1 .
docker rm -fv parser clarity-parser
docker run -d --name clarity-parser -p 5600:5600 arch1baald/clarity