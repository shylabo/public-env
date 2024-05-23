#!/bin/bash

# ===============================
# oh-my-zsh
# ===============================
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc
ln -s ~/ghq/github.com/shylabo/env/.zshrc ~/.zshrc

# ===============================
# Homebrew
# ===============================
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/shuya/.zprofile

# ===============================
# Apps
# ===============================
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask clipy
brew install --cask postman
brew install --cask dbeaver-community
brew install --cask discord
brew install --cask slack
brew install --cask figma
brew install --cask whatsapp
brew install --cask messenger
brew install --cask notion
brew install --cask firefox
brew install --cask adobe-acrobat-reader
brew install --cask microsoft-teams
brew install --cask zoom
brew install --cask karabiner-elements
brew install mas
mas install 497799835 # xcode
mas install 302584613 # kindle
mas install 310633997 # whatsapp

# ===============================
# Deb tools
# ===============================
brew install ghq
brew install fzf
brew install tree
brew install tig
brew install git-secrets
brew install zsh
brew install yarn
brew install goenv
brew install rbenv ruby-build
brew install nvm
brew install postgresql@14
brew install --cask google-cloud-sdk
brew install pyenv
brew install wget

# ===============================
# Configure
# ===============================
# ---------------------
# vscode
# ---------------------
# set symbolic link of settings.json
rm ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/ghq/github.com/shylabo/env/settings.json ~/Library/Application\ Support/Code/User

# install all the extensions in vscode
cat ~/ghq/github.com/shylabo/env/extensions.txt | xargs -n 1 code --install-extension

# ---------------------
# general
# ---------------------
ln -s ~/ghq/github.com/shylabo/env/pre-commit ~/ghq/github.com/shylabo/env/.git/hooks # run  extensions in vscode before commit
chmod +x ~/ghq/github.com/shylabo/env/.git/hooks/pre-commit
