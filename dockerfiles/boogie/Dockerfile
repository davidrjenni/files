FROM debian:sid
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apt-get update				\
	&& apt-get install -y			\
		boogie				\
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /data
ENTRYPOINT ["boogie"]
