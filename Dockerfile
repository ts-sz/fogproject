# syntax=docker/dockerfile:latest
FROM ubuntu:16.04
LABEL maintainer="Valeriu Stinca <ts@strat.zone>"
LABEL version="1.0"
LABEL vendor="Strategic Zone"
LABEL release-date="2024-08-20"
WORKDIR /usr/local/src
RUN <<eot
  export DEBIAN_FRONTEND=noninteractive
  apt-get update
  apt-get upgrade -y
  apt-get install -y wget iproute2 git jq
  cd  /usr/local/src/
  git clone https://github.com/FOGProject/fogproject.git
  cd /usr/local/src/fogproject
  git fetch --all
  git checkout dev-branch
  cd /usr/local/src/fogproject/bin
  DEBIAN_FRONTEND=noninteractive ./installfog.sh --autoaccept
eot

