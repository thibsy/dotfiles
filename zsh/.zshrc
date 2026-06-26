# add macos python3 binaries to $PATH
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
# alias specific versions as default
alias python="python3"
alias pip="pip3"

# add homebrew binaries to $PATH
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# add custom editor variables for other tools/configs
export GIT_EDITOR="/opt/homebrew/bin/nano"
export EDITOR="/opt/homebrew/bin/code"

# setup oh-my-zsh theme and plugins
ZSH_THEME="thibsy"
plugins=(git)
source "$HOME/.oh-my-zsh/oh-my-zsh.sh"

# add custom aliases
alias conflicts="git diff --name-only | uniq | xargs $EDITOR"
alias compi="composer install --ignore-platform-req=\"ext-*\" --ignore-platform-req=\"php\" --no-plugins"
alias compu="composer dump"
alias npi="npm clean-install --ignore-scripts"

# setup sr-legacy command
source "$HOME/Development/.sr-legacy/completion.sh"

# add custom didi aliases
alias diu="didi up --skip-composer-install --skip-npm-install"
alias dix="didi exec -uwww-data ilias"
alias diq="didi exec mysql mariadb -u ilias -pilias ilias"
alias diqx="didi exec mysql mariadb -u ilias -pilias ilias -e "

# load all environment variables (*.env)
for ENV_FILE in $(find "$HOME/Development/.dotfiles" -type f -name "*.env"); do
    set -a && source "$ENV_FILE" && set +a
done

# setup sr-cli command
source "$HOME/Development/.sr-cli/autocomplete"

# load model shortcuts
source "$HOME/Development/.dotfiles/llama/models.sh"
# load opencode shortcut
source "$HOME/Development/.dotfiles/opencode/opencode.sh"
