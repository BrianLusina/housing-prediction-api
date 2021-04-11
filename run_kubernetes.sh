#!/usr/bin/env bash

ID=${DOCKER_ID:-thelusina}
IMAGE=${DOCKER_IMAGE:-housing-prediction-api}
TAG=${DOCKER_TAG:-latest}

dockerpath=${ID}/${IMAGE}:${TAG}

kubectl run housing-prediction-api --image="$dockerpath"

kubectl get pods

kubectl port-forward housing-prediction-api 8080:8080