#!/usr/bin/env bash

# Change this to match your docker registry
REGISTRY=${DOCKER_REGISTRY:-thelusina}
IMAGE=${DOCKER_IMAGE:-housing-prediction-api}
TAG=${DOCKER_TAG:-latest}

docker build -t "${REGISTRY}"/"${IMAGE}":"${TAG}" .
