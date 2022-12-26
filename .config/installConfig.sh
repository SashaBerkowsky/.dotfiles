#!/bin/bash
echo -e "#add dotfiles alias\nalias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'" >> $HOME/.bashrc
bash
config config --local status.showUntrackedFiles no
