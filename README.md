# Housing Prediction Model API

[![CircleCI](https://circleci.com/gh/BrianLusina/housing-prediction-api/tree/main.svg?style=shield)](https://app.circleci.com/pipelines/github/BrianLusina/housing-prediction-api)

## Overview

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

or you can do this with make:

```bash
make setup
```

* Run `make install` to install the necessary dependencies.

### Running the application

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. Build Docker Image `./build_docker.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Built With

* [Python](https://www.python.org/) - Programming language used
* [Scikit Learn](https://sklearn.org/) - Module used for Machine Learning in Python
* [Pip](https://pypi.org/project/pip/) - Dependency management

## Contributing

Please read [CONTRIBUTING.md](.github/CONTRIBUTING.md) for details on our code of conduct, and the process for
submitting pull requests to us. Also read [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) for details on our code of conduct.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see
the [tags on this repository](https://github.com/Wyvarn/space-rocks/releases).

## Authors

* **Brian Lusina** - *Initial work* - [BrianLusina](https://github.com/BrianLusina)

See also the list of [contributors](https://github.com/Wyvarn/space-rocks/graphs/contributors) who participated in this
project.
