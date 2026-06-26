#!/usr/bin/env bash

# shortcut to run opencode with the configured default model
opencode() {
    # start model in the background once, if not running
    local SESSION="opencode-$OPENCODE_DEFAULT_MODEL"
    if ! tmux has-session -t "$SESSION" 2>/dev/null; then
        # spawn interactive zsh shell (otherwise tools are unconfigured)
        # with llama-server
        tmux new-session -d -s "$SESSION" "zsh -i -c '$OPENCODE_DEFAULT_MODEL'"
    fi

    # run opencode with default model
    _opencode --model "$OPENCODE_DEFAULT_PROVIDER/$OPENCODE_DEFAULT_MODEL" "$@"
}

# shortcut to run real opencode
_opencode() {
    /usr/bin/env opencode "$@"
}
