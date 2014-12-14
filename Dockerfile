# L4d2 Server
#
# VERSION 0.1

FROM bfosberry/steam_base
MAINTAINER bfosberry

ENV PORT 27015

ADD ./confd /opt/server/confd
RUN mkdir /opt/server/cfg
RUN sudo chown -R appuser:appuser /opt/

WORKDIR /opt/server
#define ports
EXPOSE 26901/udp
EXPOSE 27005/udp
EXPOSE 27015
EXPOSE 27015/udp
EXPOSE 27020/udp
