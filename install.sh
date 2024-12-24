#!/bin/bash

# install and setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s "$(pwd)/zsh/.zshrc" "$HOME/.zshrc"
ls -s "$(pwd)/zsh/thibsy.zsh-theme" "$HOME/.oh-my-zsh/themes/thibsy.zsh-theme"

# install and setup homebrew
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/opt/homebrew/bin/brew bundle install --file="$(pwd)/brew/bundle"
mkdir -p "/opt/homebrew/etc/homebrew"
ln -s "$(pwd)/brew/brew.env" "/opt/homebrew/etc/homebrew/brew.env"

# setup git
ln -s "$(pwd)/git/.gitconfig" "$HOME/.gitconfig"
ln -s "$(pwd)/git/.gitignore" "$HOME/.gitignore"

# setup zed
ln -s "$(pwd)/zed/settings.json" "$HOME/.config/zed/settings.json"
ln -s "$(pwd)/zed/zed-theme.json" "$HOME/.config/zed/themes/zed-theme.json"

# setup all php versions
php_versions=("7.4" "8.0" "8.1" "8.2" "8.3" "8.4")
for version in "${php_versions[@]}"; do
    # we cannot symlink this file; it will not be recognised by php.
    cp "$(pwd)/php/php.ini" "/opt/homebrew/etc/php/${version}/conf.d/10-defaults.ini"
done
