FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y openfortivpn ppp supervisor
RUN apt-get install -y squid
RUN apt-get install -y dante-server

COPY ./supervisor-log-prefix.sh /
RUN chmod +x /supervisor-log-prefix.sh

COPY ./supervisord.conf /etc/
COPY ./squid.conf /etc/squid/
COPY ./danted.conf /etc/danted.conf

EXPOSE 8118
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
