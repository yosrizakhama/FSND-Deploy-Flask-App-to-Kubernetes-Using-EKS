#!/usr/bin/env python
FROM python:stretch
#FROM debian:9


RUN pip install  pyjwt
RUN pip install flask
RUN pip install gunicorn
RUN pip install pytest



ADD . /app/
WORKDIR /app


ENTRYPOINT ["gunicorn","-b", ":8080","main:APP"]