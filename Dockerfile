FROM resin/rpi-raspbian:jessie
MAINTAINER Laurent Perrin

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y -q transmission-daemon

VOLUME /etc/transmission-daemon

EXPOSE 9091
EXPOSE 51413
EXPOSE 51413/udp

CMD ["/usr/bin/transmission-daemon", "-f", "-g", "/etc/transmission-daemon"]