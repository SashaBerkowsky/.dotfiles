#!/usr/bin/env bash

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

CONFIG_PROGRAMS=('nvim' 'kitty' 'hypr' 'swaync' 'waybar')
HOME_PROGRAMS=('tmux' 'zsh')

CLEAN_MODE=false

# Parse flags
while getopts "C" opt; do
  case "$opt" in
    C)
      CLEAN_MODE=true
      ;;
    *)
      echo "Usage: $0 [-C]"
      exit 1
      ;;
  esac
done

if [ "$CLEAN_MODE" = true ]; then
  echo "==> Cleaning (unstowing) all dotfile symlinks..."

  for program in "${CONFIG_PROGRAMS[@]}"; do
    if [ -d "$HOME/.config/$program" ]; then
      echo "Unstowing $program from ~/.config/$program"
      stow --dir="$DOTFILES_DIR" --target="$HOME/.config/$program" -D "$program"
    fi
  done

  for program in "${HOME_PROGRAMS[@]}"; do
    echo "Unstowing $program from ~/"
    stow --dir="$DOTFILES_DIR" --target="$HOME" -D "$program"
  done

  echo "Clean complete!"
  exit 0
fi

# Default sync behavior
echo "==> Syncing dotfile symlinks..."
mkdir -p "$HOME/.config"

for program in "${CONFIG_PROGRAMS[@]}"; do
  echo "Restowing $program -> ~/.config/$program"
  stow --dir="$DOTFILES_DIR" --target="$HOME/.config/$program" -R "$program"
done

for program in "${HOME_PROGRAMS[@]}"; do
  echo "Restowing $program -> ~/"
  stow --dir="$DOTFILES_DIR" --target="$HOME" -R "$program"
done

echo "Sync complete!"
