. "$HOME/.bash_aliases"
. "$HOME/.bash_colors"

PATH=/usr/local/bin:/usr/bin:/bin
PATH=${PATH}:/usr/local/sbin:/usr/sbin:/sbin
PATH=${PATH}:/usr/texbin:/usr/X11/bin
PATH=${HOME}/.bin:${PATH}
export PATH
export EDITOR=vim

alias homeconfig='git --git-dir=$HOME/.homeconfig.git/ --work-tree=$HOME'

export PS1="\n:\w \[$BBLACK\]\$(vcprompt)\[$NO_COLOR\] (\$(rvm-prompt)) \n↪ "


if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if [[ -s "$HOME/.rvm/scripts/rvm" ]]  ; then source "$HOME/.rvm/scripts/rvm" ; fi
