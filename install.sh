#!/bin/zsh
CONFIG_PROGRAMS=('nvim' 'picom')
HOME_PROGRAMS=('tmux' 'zsh' 'xinit')

for program in "${CONFIG_PROGRAMS[@]}"; do 
  echo 'Adding ' $program
  mkdir $HOME/'.config'/$program
  stow -t $HOME/'.config'/$program $program
done

for program in "${HOME_PROGRAMS[@]}"; do 
  echo 'Adding ' $program
  stow -t $HOME $program
done
