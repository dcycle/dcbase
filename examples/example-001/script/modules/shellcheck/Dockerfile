FROM debian

RUN apt-get -y update
RUN apt-get -y install shellcheck

COPY . /myscript
RUN mkdir -p /metrics/raw/phpmd

RUN cd /myscript shellcheck
RUN cd /myscript shellcheck .
