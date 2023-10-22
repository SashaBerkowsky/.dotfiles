if [ -d "$HOME/.dotfiles/scripts" ]
then
  PATH="$HOME/.dotfiles/scripts:$PATH"
fi

# start xserver
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  startx
fi
