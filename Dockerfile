ARG UBUNTU_VERSION=19.04

FROM ubuntu:${UBUNTU_VERSION}

RUN apt-get update && apt-get install -y firefox
CMD /usr/bin/firefox
