#!/bin/zsh
alias check_battery="cat /sys/class/power_supply/BAT0/capacity"

dotfiles() {
  if [ ! -z "$1" ]
  then
    DOTFILES_DIR=$(find $HOME/.dotfiles -type d -name $1)
    if [ ! -z "$DOTFILES_DIR" ]
    then
      cd $DOTFILES_DIR
    else
      echo "Program not found"
    fi
  else
    cd $HOME/.dotfiles
  fi
}

wallpapers() {
  wallpaper=$(ls $HOME/.dotfiles/wallpapers | dmenu -i -l 50)
  [ $wallpaper -z ] || feh --bg-fill $HOME/.dotfiles/wallpapers/$wallpaper
}
