export PATH="$PATH:/usr/local/bin:/usr/bin:/usr/local/sbin"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# ==============================
#  application path
# ==============================
# ---------------------
# Version manager
# ---------------------
# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# ---------------------
# Programming language
# ---------------------
# Go
export GOPATH=$HOME/go
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"

# ==============================
#  alias
# ==============================
# External Library
alias g='cd $(ghq list -p | fzf)'
alias gg='ghq get'

# Homebrew
alias bsl='brew services list'

# Postgres
alias psql-start='brew services start postgresql@14'
alias psql-stop='brew services stop postgresql@14'

# Github
alias gpull='current_branch=$(git symbolic-ref --short HEAD) && git pull origin $current_branch'
alias gpush='current_branch=$(git symbolic-ref --short HEAD) && git push origin $current_branch'
alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'

# Docker
alias dc='docker-compose'

# General
alias repo='open "https://github.com/$(basename $(dirname $(pwd)))/$(basename $(pwd))"'
