#!/bin/zsh
CONFIG_PROGRAMS=('nvim' 'kitty')
HOME_PROGRAMS=('tmux' 'zsh')

for program in "${CONFIG_PROGRAMS[@]}"; do 
  echo 'Adding ' $program
  mkdir $HOME/'.config'/$program
  stow -t $HOME/'.config'/$program $program
done

for program in "${HOME_PROGRAMS[@]}"; do 
  echo 'Adding ' $program
  stow -t $HOME $program
done
