#!/bin/sh
HOST_IP=`/bin/grep $HOSTNAME /etc/hosts | /usr/bin/cut -f1`
echo "# container started with ip: ${HOST_IP}..."
