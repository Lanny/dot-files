#!/usr/bin/env bash

brew install zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
chsh -s "$(which zsh)"
