#!/bin/bash

sed -i -e"s/#BasicAuth user password/BasicAuth ${TINYPROXY_USER} ${TINYPROXY_PASSWORD}/" /etc/tinyproxy/tinyproxy.conf

/usr/bin/tinyproxy -d -c /etc/tinyproxy/tinyproxy.conf
