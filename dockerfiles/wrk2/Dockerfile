FROM debian:jessie
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apt-get update \
	&& apt-get install -y build-essential libssl-dev git \
	&& rm -rf /var/lib/apt/lists/* \
	&& git clone https://github.com/giltene/wrk2.git \
	&& cd wrk2 \
	&& make

ENTRYPOINT ["/wrk2/wrk"]
