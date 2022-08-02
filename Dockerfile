FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && \
  apt-get -y install \
    ca-certificates \
    luakit \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "luakit" ]
