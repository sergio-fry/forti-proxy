#!/bin/bash

sed -i -e"s/#BasicAuth user password/BasicAuth ${TINYPROXY_USER} ${TINYPROXY_PASSWORD}/" $TINYPROXY_CONF

/usr/bin/openfortivpn -c /etc/forti.conf
