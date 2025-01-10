# add macos python3 binaries to $PATH
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
# alias specific versions as default
alias python="python3"
alias pip="pip3"

# add homebrew binaries to $PATH
export PATH="/opt/homebrew/bin:$PATH"

# add custom editor variables for other tools/configs
export GIT_EDITOR="nano"
export EDITOR="zed"

# setup oh-my-zsh theme and plugins
ZSH_THEME="thibsy"
plugins=(git)
source "$HOME/.oh-my-zsh/oh-my-zsh.sh"

# add custom aliases
alias conflicts="git diff --name-only | uniq | xargs $EDITOR"
alias compi="composer install --ignore-platform-reqs --no-plugins"
alias npi="npm clean-install --ignore-scripts"
