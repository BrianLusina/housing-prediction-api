#!/usr/bin/env bash

DOCKER_REGISTRY={$DOCKER_REGISTRY:-thelusina}

docker build -t thelusina/housing-prediction-api:latest .

docker images

docker run -p 8080:80 --name=housing-prediction-api thelusina/housing-prediction-api:latest