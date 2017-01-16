# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

PS1='\[\033[31m\]\u@\h: \w\[\033[0m\] $ '

export EDITOR=vim

alias st='git status -sb'
