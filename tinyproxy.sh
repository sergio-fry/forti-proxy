#!/bin/bash

sed -i -e"s/#BasicAuth user password/BasicAuth ${TINYPROXY_USER} ${TINYPROXY_PASSWORD}/" $TINYPROXY_CONF

/usr/bin/tinyproxy -d -c /etc/tinyproxy/tinyproxy.conf
