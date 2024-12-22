FROM python:3.12.8-bookworm AS base
MAINTAINER Yeshwanth<yeshwanth.u@gmail.com>
RUN apt-get update && apt-get install -y nano && apt-get clean
RUN pip install crewai crewai-tools

