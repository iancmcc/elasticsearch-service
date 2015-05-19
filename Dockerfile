FROM java:openjdk-7
MAINTAINER Ian McCracken <ian.mccracken@gmail.com>

# Make it nicer in the container
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update && \
    apt-get install jq && \
    rm -rf /var/lib/apt/lists/*
RUN curl -s https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.5.tar.gz | tar -C /usr/local -xz
RUN ln -s /usr/local/elasticsearch-1.4.5 /usr/local/elasticsearch
RUN mkdir -p /var/data/elasticsearch
