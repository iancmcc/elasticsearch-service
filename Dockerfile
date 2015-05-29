FROM debian:wheezy
MAINTAINER Brett Taylor <sweet.brett@gmail.com>

RUN apt-get update -q && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

ENV KIBANA_VERSION 4.0.2-linux-x64
RUN curl -s https://download.elastic.co/kibana/kibana/kibana-$KIBANA_VERSION.tar.gz | tar xz -C /tmp
RUN mv /tmp/kibana-* /app

WORKDIR /app
CMD '/app/bin/kibana'
