export EDITOR=vim

# prompt should be user:directory %
export PS1="%n:%~ %# "

# have a timestamp at the end of the line
export RPS1="[%*]"

# use emacs key bindings like ctrl-r to search backwards in history
bindkey -e

alias ls='ls --color=auto -F'
