if [ -d "$HOME/.dotfiles/scripts/dmenu" ]
then
  PATH="$HOME/.dotfiles/scripts/dmenu:$PATH"
fi

# start xserver
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  startx
fi
