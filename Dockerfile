FROM ubuntu:16.04

LABEL maintainer="osamu.takahashi@sopranoworks.com"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    libssl-dev sqlite3 \
    libsqlite3-dev \
    libevent-dev \
    libboost-dev \
    libevent-dev \
    libhiredis-dev \
    curl

COPY bin/ /usr/local/bin

ADD run.sh /run.sh

EXPOSE 3478/udp 30000-60000/udp

CMD ["/bin/sh","/run.sh"]
