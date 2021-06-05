FROM docker.io/cimg/python:3.9

USER root

RUN apt-get -y update \
	&& apt-get -y install \
		python3-pip
	&& rm -rf /var/cache/apt /var/lib/apt/lists

RUN python -m pip install --upgrade pip \
	&& python -m pip install --upgrade poetry

USER circleci

RUN poetry config virtualenvs.in-project true
