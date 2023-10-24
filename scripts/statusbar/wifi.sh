#!/bin/sh
if [ $(nmcli general | awk '{print 1}' | tail -n 1) = "disconnected" ]; then
  echo 󰖪
else
  echo 󰖩
fi

