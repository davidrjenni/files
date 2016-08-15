FROM alpine:3.4
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apk add --update --no-cache nodejs \
	&& npm install -g cleaver

WORKDIR /data
ENTRYPOINT ["cleaver"]
