#!/bin/zsh
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
