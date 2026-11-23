#!/usr/bin/env bash
# 恢复 dotfiles 备份：把 dotfiles/ 里的配置拷回 $HOME
set -euo pipefail
SRC="${1:-$HOME/config-backup}"
[ -d "$SRC/dotfiles" ] || { echo "usage: restore.sh [backup-dir-with-dotfiles]"; exit 1; }
for f in "$SRC"/dotfiles/*; do
  name=$(basename "$f")
  target="$HOME/.$name"
  if [ -e "$target" ]; then
    cp -a "$target" "$target.bak.$(date +%s)"
  fi
  cp -a "$f" "$target"
  echo "restored .$name"
done
echo "tip: source $SRC/dotfiles/bash_aliases to enable aliases"
