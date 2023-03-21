#! /bin/bash
nitrogen --restore --head=0 &
picom --config ~/.config/picom/picom.conf --experimental-backends & 
flameshot &
discord & 
slack & 
xrandr --output HDMI-1 --rotate left 