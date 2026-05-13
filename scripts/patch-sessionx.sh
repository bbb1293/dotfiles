#!/usr/bin/env bash
# Patch tmux-sessionx so its window list shows '*' for windows with
# the bell or silence flag set. Idempotent: safe to run on every tmux start.

set -e
f="$HOME/.tmux/plugins/tmux-sessionx/scripts/sessionx.sh"

[[ -f "$f" ]] || exit 0
grep -q window_bell_flag "$f" && exit 0

sed -i '' 's|#{window_name}|#{window_name}#{?window_bell_flag,*,#{?window_silence_flag,*,}}|' "$f"
