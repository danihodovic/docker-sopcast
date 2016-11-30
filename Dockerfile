FROM ubuntu:16.04

MAINTAINER Dani Hodovic

# Install the dependencies
RUN 	dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install libstdc++5:i386 curl -y

RUN mkdir /app
WORKDIR /app

# Install sopcast
RUN 	curl http://download.sopcast.com/download/sp-auth.tgz | \
	tar --strip-components 1 -xzf - && \
	mv /app/sp-sc-auth /app/sopcast

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
