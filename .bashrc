# .bashrc

# Source global definition
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PATH=/usr/local/bin:$PATH

# git
GIT_VERSION=`git --version | cut -d " " -f 3`
GIT_BASH_DIR=/usr/local/Cellar/git/$GIT_VERSION/etc/bash_completion.d
source $GIT_BASH_DIR/git-prompt.sh
source $GIT_BASH_DIR/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
PS1='[\[\e[1;33m\]\t \[\e[1;32m\]\u@\h\[\e[00m\]\[\e[1;35m\]$(__git_ps1)\[\e[00m\] -> \[\e[1;36m\]\w\[\e[00m\]]\n\$\[\e[m\] '
export PS1

# . $HOME/perl5/perlbrew/etc/bashrc
## plenv
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"

## rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)" 

## nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
export NODE_PATH=$HOME/.nodebrew/current/lib/node_modules

## npm
export PATH=$(npm bin):$PATH

## gvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export PATH=$HOME/go/bin:$PATH
export GOPATH=$HOME/go

## TeX
export PATH=/usr/texbin:$PATH

# User specific aliases and functions
alias less="/usr/bin/env less -r"
alias ls="/usr/bin/env ls -GF"
alias random_str='perl -MString::Random=random_regex -E '\''say random_regex($ARGV[0])'\'

function dic() { open dict://$1; }

# User specific environment and startup programs
LANG=ja_JP.UTF-8
TZ=JST-9
PAGER="less -R"
# PS1="[\u@\h \t \w]$ "
EDITOR=vim
XML_CATALOG_FILES=/usr/local/etc/xml/catalog

export LANG
export TZ
export PAGER
export PS1
export XML_CATALOG_FILES

# export NVM_DIR="/Users/yamaguchi.toru/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
eval "$(boot2docker shellinit)"
