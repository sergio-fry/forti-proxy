#!/bin/bash

sed -i -e"s/#BasicAuth user password/BasicAuth ${TINYPROXY_USER} ${TINYPROXY_PASSWORD}/" /etc/tinyproxy.conf

/usr/bin/tinyproxy -d -c /etc/tinyproxy.conf
