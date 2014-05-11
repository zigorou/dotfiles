# .bashrc

# Source global definition
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# . $HOME/perl5/perlbrew/etc/bashrc
## plenv
eval "$(plenv init -)"

## nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

## npm
export PATH=$(npm bin):$PATH

## gvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# User specific aliases and functions
alias less="/bin/less -r"
alias ls="/bin/ls -GF"

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
