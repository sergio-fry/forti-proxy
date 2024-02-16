FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y openfortivpn ppp supervisor

COPY ./supervisor-log-prefix.sh /
RUN chmod +x /supervisor-log-prefix.sh

COPY ./supervisord.conf /etc/

EXPOSE 8118
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
