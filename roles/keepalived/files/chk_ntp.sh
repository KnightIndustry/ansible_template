#!/usr/bin/env bash


RS="$1"
PORT=123



timeout 3 /usr/local/ntp/bin/ntpdate -q "$RS"  > /dev/null 2>&1

if [ $? -eq 0 ]; then
  exit 0
else
  exit 1
fi

