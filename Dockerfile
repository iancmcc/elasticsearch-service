FROM java:openjdk-8
MAINTAINER Brett Taylor <sweet.brett@gmail.com>

# Make it nicer in the container
ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update && \
    apt-get install jq && \
    rm -rf /var/lib/apt/lists/*
RUN curl -s https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.5.2.tar.gz | tar -C /usr/local -xz
RUN ln -s /usr/local/elasticsearch-1.5.2 /usr/local/elasticsearch
RUN mkdir -p /var/data/elasticsearch
