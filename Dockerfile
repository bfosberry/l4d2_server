# L4d2 Server
#
# VERSION 0.1

FROM bfosberry/steam_base
MAINTAINER bfosberry

ENV PORT 27015

#define ports
EXPOSE 27015
EXPOSE 27015/udp
EXPOSE 27020
