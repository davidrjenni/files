FROM ubuntu:17.10
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apt-get update                 \
	&& apt-get install -y dafny    \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /data
ENTRYPOINT ["dafny"]
