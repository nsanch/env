export JDK_HOME=/usr/lib/jvm/java-6-openjdk/

export PATH=$HOME/bin:$PATH

export HISTFILE=$HOME/.zhistory
export SAVEHIST=10000
# add commands to history file as they're executed instead of when the shell session ends.
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

setopt CORRECT

export EDITOR=vim

# prompt should be user@machine:directory %
# export PS1="%n@m:%~ %# "
# prompt should be user:directory %
export PS1="%n:%~ %# "

# have a timestamp at the end of the line
export RPS1="[%*]"

# use emacs key bindings like ctrl-r to search backwards in history
bindkey -e

alias ls='ls --color=auto -F'
