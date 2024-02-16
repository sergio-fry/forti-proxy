#!/bin/bash

sed -i -e"s/FORTI_HOST/${FORTI_HOST}/" /etc/forti.conf
sed -i -e"s/FORTI_PORT/${FORTI_PORT}/" /etc/forti.conf
sed -i -e"s/FORTI_USER/${FORTI_USER}/" /etc/forti.conf
sed -i -e"s/FORTI_PASSWOPRD/${FORTI_PASSWOPRD}/" /etc/forti.conf
sed -i -e"s/FORTI_CERT/${FORTI_CERT}/" /etc/forti.conf

/usr/bin/openfortivpn -c /etc/forti.conf
