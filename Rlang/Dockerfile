FROM debian:jessie
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apt-get update && apt-get install --no-install-recommends -y \
	r-base

WORKDIR /data
ENTRYPOINT R
