# .bashrc

# Source global definition
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# . $HOME/perl5/perlbrew/etc/bashrc
## plenv
eval "$(plenv init -)"

## rbenv
eval "$(rbenv init -)" 

## nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

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

export LANG
export TZ
export PAGER
export PS1

# export NVM_DIR="/Users/yamaguchi.toru/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
