#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AGENTS_SRC="$DOTFILES_DIR/.claude/agents"
AGENTS_DEST="$HOME/.claude/agents"

mkdir -p "$AGENTS_DEST"

for f in "$AGENTS_SRC"/*.md; do
  name="$(basename "$f")"
  ln -sf "$f" "$AGENTS_DEST/$name"
  echo "Linked $name"
done

echo "Dotfiles installation complete."
