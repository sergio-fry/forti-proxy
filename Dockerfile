FROM ubuntu:22.04

RUN apt-get update && \
  apt-get install -y openfortivpn ppp supervisor tinyproxy && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

COPY ./supervisor-log-prefix.sh /
RUN chmod +x /supervisor-log-prefix.sh

COPY ./supervisord.conf /etc/
COPY ./tinyproxy.conf /etc/tinyproxy/
COPY ./tinyproxy.sh /usr/bin/tinyproxy.sh

RUN chmod +x /usr/bin/*

ENV TINYPROXY_USER=user
ENV TINYPROXY_PASSWORD=secret123


EXPOSE 8888
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
