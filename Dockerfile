FROM ubuntu:17.04

RUN apt-get update \
	&& apt-get install -y python python-pip imagemagick

RUN pip install Wand

ADD wateresize.py /home/wateresize.py

WORKDIR /home

