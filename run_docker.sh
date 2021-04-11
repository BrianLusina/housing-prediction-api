#!/usr/bin/env bash

# Change this to match your docker registry
REGISTRY=${DOCKER_REGISTRY:-thelusina}
IMAGE=${DOCKER_IMAGE:-housing-prediction-api}
TAG=${DOCKER_TAG:-latest}

docker build -t "${REGISTRY}"/"${IMAGE}":"${TAG}" .

docker images

# shellcheck disable=SC2086
docker run -p 8080:80 --name=housing-prediction-api ${REGISTRY}/"${IMAGE}":"${TAG}"