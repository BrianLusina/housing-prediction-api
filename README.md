# Housing Prediction Model API

<include a CircleCI status badge, here>

## Project Overview

Machine Learning Microservice API with a pre-trained, `sklearn` model that has been trained to predict housing prices 
in Boston according to several features, such as average rooms in a home and data about highway access, 
teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, 
on [the data source site](https://www.kaggle.com/c/boston-housing). 
This is a flask app that serves out predictions (inference) about housing prices through API calls. This project could 
be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Pre-requisites

To properly setup the project you will need the following tools:

1. [Python 3](https://www.python.org/downloads/)
   
   This is the programming language used for this project. How to download can be found in the provided link

   
2. [Pip](https://pypi.org/project/pip/)
   
   Dependency management tool for Python. This is used to install the required dependencis for the project
   

3. [Virtualenv](https://pypi.org/project/virtualenv/)
   
   Used to create a _virtual environment_ for the project. This ensures that dependencies required for this project do
not conflict with dependencies on the development environment and vice versa

   
4. [Docker](https://www.docker.com/)
   
   Used to package the application in a container and allow it to run as a microservice
   

5. [Kubectl](https://kubernetes.io/docs/tasks/tools/)
   
   Allows interacting with the kubernetes API from your development machine


6. [Minikube](https://minikube.sigs.k8s.io/docs/start/)
   Allows creating and setting up a Kubernetes Cluster on your development machine
   

7. [Hadolint](https://github.com/hadolint/hadolint)
   
   Used to lint Dockerfiles

## Setup the Environment

* Create a virtualenv and activate it:
  
```bash
virtualenv .venv
source .venv/bin/activate
```

* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
