FROM python:3.7

WORKDIR /usr/src
COPY ./versioneer.py ./
COPY ./setup* ./
COPY ./Pipfile* ./
COPY ./docs/requirements.txt ./docs/requirements.txt
COPY ./Makefile ./
RUN pip install pipenv && make init && rm -rf /root/.cache/pip