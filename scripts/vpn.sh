#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

no_of_pointtopoint="$(ifconfig | grep pointtopoint | wc -l)"

if [ $no_of_pointtopoint -gt "0" ]; then
  vpn="$(ifconfig | grep pointtopoint | awk '{print $2}' | tail -n1)"
  echo $vpn
else
  echo "not connected"
fi