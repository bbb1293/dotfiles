#!/usr/bin/env bash
# Print "session:window* " for each flagged window NOT in the current session.
# Surfaces bell/silence flags (Claude finished, idle, etc.) from background sessions
# in the status-right area, since window-status only shows the current session.

current=$(tmux display-message -p '#S' 2>/dev/null) || exit 0
tmux list-windows -a -F '#{session_name}:#{window_index}:#{window_bell_flag}:#{window_silence_flag}' 2>/dev/null \
  | awk -F: -v cur="$current" '
    $1 != cur && ($3 == "1" || $4 == "1") {
      printf "%s:%s* ", $1, $2
    }
  '
