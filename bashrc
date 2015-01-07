# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

complete -cf man
complete -cf sudo
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias halt="sudo systemctl poweroff"
alias reboot="sudo systemctl reboot"
alias ls="ls --color=auto"
alias grep="grep --color=auto"

function extract() {
	if [ -f $1 ]; then
		case $1 in
		*.tar.bz2)  tar xjf    $1 ;;
		*.tbz2)     tar xjf    $1 ;;
		*.tar.gz)   tar xzf    $1 ;;
		*.tgz)      tar xzf    $1 ;;
		*.tar.xz)   tar xJf    $1 ;;
		*.tar)      tar xf     $1 ;;
		*.bz2)      bunzip2    $1 ;;
		*.gz)       gunzip     $1 ;;
		*.rar)      unrar x    $1 ;;
		*.zip)      unzip      $1 ;;
		*.Z)        uncompress $1 ;;
		*)          echo "cannot extract '$1'" ;;
		esac
	else
		echo "invalid file: '$1'"
	fi
}

shopt -s autocd

if [ $TERM == "dumb" ]; then
	export PAGER=nobs
	export EDITOR=E
	export FCEDIT=$EDITOR
	export VISUAL=$EDITOR
	rc
fi

