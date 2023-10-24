#!/bin/sh
separator="|"
time=$(date '+󱑆 %H:%M')
date=$(date '+%B %e, %A')

battery () {
  ~/.dotfiles/scripts/statusbar/battery.sh
}

wifi () {
  ~/.dotfiles/scripts/statusbar/wifi.sh
}


while true; do
  xsetroot -name " $date $separator $(wifi)  $(battery)  $time "
  sleep 1m
done
