FROM python:3-alpine

RUN apk add build-base

ADD . /code
WORKDIR /code
RUN echo "Hello"
RUN pip install gunicorn
RUN echo "Did it work?"
RUN pip install -r requirements.txt
