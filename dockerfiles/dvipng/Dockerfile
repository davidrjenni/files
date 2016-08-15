FROM debian:jessie
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apt-get update \
	&& apt-get install -y dvipng \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /data
ENTRYPOINT ["dvipng"]
