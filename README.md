# .dotfiles
In order to run my dotfiles:

1. Install stow
2. `cd ~/.dotfiles`
3. run `bash sync-config.sh` 


## Sync command

| Flag | Mode | Action & Description | Example Usage |
| :--- | :--- | :--- | :--- |
| *(None)* | **Sync** | Runs `stow -R` (restow) across all packages. Updates existing symlinks, cleans stale links, and links new files cleanly. | `./sync-config.sh` |
| **`-C`** | **Clean** | Runs `stow -D` (delete) across all packages. Removes all active dotfile symlinks from `$HOME` and `$HOME/.config/` without touching source files. | `./sync-config.sh -C` |
