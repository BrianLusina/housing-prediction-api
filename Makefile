# Create python virtualenv & source it
setup:
	python3 -m venv .venv
	source .venv/bin/activate

# This should be run from inside a virtualenv
install:
	pip install --upgrade pip
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval notebook.ipynb

# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
lint-docker:
	hadolint Dockerfile

# Python source code linter: https://www.pylint.org/
# This should be run from inside a virtualenv
lint:
	pylint --disable=R,C,W1203 app.py

build-docker:
	./build_docker.sh

push-docker:
	./upload_docker.sh

# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
validate-circleci:
	circleci config validate

# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
process-circleci:
	circleci config process .circleci/config.yml

all: install lint lint-docker test
