FROM ubuntu:14.04
MAINTAINER Dmitry Kostyaev <dmitry@kostyaev.me>

ENV AWS_ACCESS_KEY_ID ''
ENV AWS_SECRET_ACCESS_KEY ''

RUN apt-get -y update && apt-get install -y python2.7 python-pip
RUN pip install awscli

ENTRYPOINT ["aws"]