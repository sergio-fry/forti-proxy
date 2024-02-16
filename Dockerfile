FROM ubuntu:22.04

RUN apt-get update && \
  apt-get install -y openfortivpn ppp supervisor tinyproxy && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

COPY ./etc/* /etc/
COPY ./bin/* /usr/bin/

RUN chmod +x /usr/bin/*

ENV TINYPROXY_USER=user
ENV TINYPROXY_PASSWORD=secret123


EXPOSE 8888
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
