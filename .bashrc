# .bashrc

# Source global definition
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

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
PAGER=less
PS1="[\u@\h \t \w]$ "
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
