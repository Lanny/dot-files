#!/usr/bin/env bash

# Link up qutebrowser config
mkdir -p ~/Library/Preferences/qutebrowser
ln qutebrowser/autoconfig.yml ~/Library/Preferences/qutebrowser

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install zsh
brew install zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
chsh -s "$(which zsh)"

# Link up zsh config
ln .zshrc ~/
touch ~/.zhsrc-local

# Set up kitty
brew install kitty
mkdir -p ~/.config/kitty
ln kitty/kitty.conf ~/.config/kitty

# Set up yabai
brew tap koekeishiya/formulae
brew install yabai
brew install skhd
ln .yabairc ~/.yabairc
ln .skhdrc ~/.skhdrc
brew services start yabai
brew services start skhd
echo "Disable SIP and run: sudo yabai --install-sa"



# Misc installs
brew install \
macvim \
nvm \
fzf \
rg \
gpg \
pyenv

mkdir -p ~/.bin
ln bin/devil ~/.bin/
ln bin/genpass ~/.bin/
ln bin/pwedit ~/.bin/
ln bin/sel ~/.bin/
ln bin/ptf ~/.bin/
