FROM ubuntu:16.04

MAINTAINER Dani Hodovic

RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install libstdc++5:i386 curl -y

RUN mkdir /app
WORKDIR /app

RUN curl -O http://download.sopcast.com/download/sp-auth.tgz
RUN tar -xf sp-auth.tgz

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
