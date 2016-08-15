FROM debian:jessie
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apt-get update && apt-get install -y \
	dvipng

WORKDIR /data
ENTRYPOINT ["dvipng"]
