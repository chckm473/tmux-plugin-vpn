#!/usr/bin/env bash

if [ -d /proc/sys/net/ipv4/conf/tun0 ]; then
    echo "$(ip -4 -br a sh dev tun0 | awk '{print $3}' | cut -f1 -d/)"
else
    echo "not connected"
fi