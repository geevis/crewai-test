# Dockerfile.defaults
# Make the base image configurable
ARG BASE_IMAGE=python:3.12.8-bookworm 
FROM ${BASE_IMAGE}

USER root

RUN apt-get update && apt-get install -y nano && apt-get clean
RUN pip install crewai crewai-tools
ENV PATH=$PATH:/${HOME}/.local/bin
CMD ["/bin/bash"]
