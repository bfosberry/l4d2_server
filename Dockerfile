# L4d2 Server
#
# VERSION 0.1

FROM bfosberry/steam_base
MAINTAINER bfosberry

# set up env
ENV STEAMDIR /opt/steam
ENV SERVERDIR /opt/server/

# install l4d2 server
RUN until $STEAMDIR/steamcmd.sh +login anonymous +force_install_dir $SERVERDIR +app_update 222860 +quit; do echo Retrying; done

ADD ./init.d.sh /etc/init.d/game_server 
ADD ./update_script /etc/init.d/update_script

#define ports
EXPOSE 27015
EXPOSE 27015/udp
EXPOSE 27020

ENV PATH /opt/scripts/:/opt/server/scripts/:PATH
