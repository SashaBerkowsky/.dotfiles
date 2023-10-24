#!/bin/sh


time=$(date '+%d/%m/%Y')
percentage=$(cat /sys/class/power_supply/BAT0/capacity)

while true; do
  xsetroot -name " %$percentage | $time "
  sleep 60
done
