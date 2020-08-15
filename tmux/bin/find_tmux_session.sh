#! /bin/bash
#
# fs [FUZZY PATTERN] - Select selected tmux session
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fs() {
  local session
  session=$(tmux list-sessions -F "#{session_name}" | fzf-tmux -d10 --select-1 --exit-0)
  tmux switch-client -t "$session"
}

fs "$@"

