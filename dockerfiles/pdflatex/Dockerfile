FROM debian:jessie
MAINTAINER David R. Jenni <david.r.jenni@gmail.com>

RUN apt-get update && apt-get install -y \
	texlive-latex-recommended \
	texlive-fonts-recommended \
	texlive-lang-german \
	texlive-latex-extra \
	build-essential \
	latexmk

WORKDIR /data
ENTRYPOINT ["pdflatex"]
