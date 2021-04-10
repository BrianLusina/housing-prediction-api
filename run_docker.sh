#!/usr/bin/env bash

# Change this to match your docker registry
REGISTRY=${DOCKER_REGISTRY:-thelusina}

docker build -t "${REGISTRY}"/housing-prediction-api:latest .

docker images

# shellcheck disable=SC2086
docker run -p 8080:80 --name=housing-prediction-api ${REGISTRY}/housing-prediction-api:latest