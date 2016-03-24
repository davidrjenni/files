FROM debian:jessie
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apt-key adv \
		--keyserver hkp://keyserver.ubuntu.com:80 \
		--recv 7F0CEB10 && \
	echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.0 main" \
		| tee /etc/apt/sources.list.d/mongodb-org-3.0.list && \
	apt-get update && apt-get install --no-install-recommends -y \
	mongodb-org-shell \
	mongodb-org-tools

WORKDIR /data
ENTRYPOINT bash
