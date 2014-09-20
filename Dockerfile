# L4d2 Server
#
# VERSION 0.1

FROM bfosberry/steam_base
MAINTAINER bfosberry

ENV PORT 27015

USER root
ADD ./confd /opt/server/confd
RUN chown -R steam.steam /opt/*
USER steam
#define ports
EXPOSE 27015
EXPOSE 27015/udp
EXPOSE 27020
