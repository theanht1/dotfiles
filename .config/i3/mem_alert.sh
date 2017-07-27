#!/usr/bin/env sh

function check_mem() {
  total=$(cat /proc/meminfo | grep MemTotal | sed -e 's/[^0-9]*//g')
  avail=$(cat /proc/meminfo | grep MemAvailable | sed -e 's/[^0-9]*//g')

  x=$((total / 9))
  if [ "$avail" -lt "$x" ]
  then
    i3-nagbar -t warning -m 'Memory run out!!'
  fi
}

check_mem
while true; do
  sleep 2
  check_mem
done
