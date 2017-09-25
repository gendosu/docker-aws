# ubuntu-base
#
# VERSION               0.0.1

FROM      ubuntu:latest

MAINTAINER Gen Takahashi <gendosu@gmail.com>

RUN apt-get update \
&&  apt-get upgrade -y --force-yes \
&&  apt-get install -y --force-yes \
    python \
    python-pip \
&& apt-get clean \
&& rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

RUN pip install awscli

