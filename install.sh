#!/usr/bin/env bash
# Symlink configs from this repo into their expected locations.
# Backs up any existing files to *.backup-<timestamp>.

set -euo pipefail

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STAMP="$(date +%Y%m%d-%H%M%S)"

backup_and_link() {
  local src="$1" dest="$2"
  if [[ -e "$dest" && ! -L "$dest" ]]; then
    echo "  backing up existing $dest → $dest.backup-$STAMP"
    mv "$dest" "$dest.backup-$STAMP"
  elif [[ -L "$dest" ]]; then
    rm "$dest"
  fi
  mkdir -p "$(dirname "$dest")"
  ln -s "$src" "$dest"
  echo "  linked $dest → $src"
}

echo "Installing dotfiles from $DOTFILES"
backup_and_link "$DOTFILES/tmux.conf" "$HOME/.tmux.conf"
backup_and_link "$DOTFILES/nvim"      "$HOME/.config/nvim"
echo "Done. Next: install TPM + plugins (see README)."
