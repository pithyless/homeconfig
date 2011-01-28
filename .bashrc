
. "$HOME/.bash_aliases"

alias homeconfig='git --git-dir=$HOME/.homeconfig.git/ --work-tree=$HOME'

export EDITOR=vim

if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi
