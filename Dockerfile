FROM ubuntu

RUN apt-get update; apt-get install -y openfortivpn

ADD entrypoint.sh /usr/bin/entrypoint.sh
RUN chmod +x /usr/bin/entrypoint.sh

# ENTRYPOINT ["/usr/bin/entrypoint.sh"]

