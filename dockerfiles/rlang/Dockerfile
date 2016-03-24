FROM debian:jessie
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apt-get update && apt-get install --no-install-recommends -y \
	libcurl4-gnutls-dev \
	build-essential \
	r-base \
	gcc

WORKDIR /data
ENTRYPOINT R
