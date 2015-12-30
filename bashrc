# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

complete -cf man
complete -cf sudo
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias acmef="acme -a -f /mnt/font/LucidaGrande/15a/font"

PS1="% "

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

cover() {
	t=$(mktemp)
	go test -v $COVERFLAGS -coverprofile=$t $@ && go tool cover -func=$t && unlink $t
}

cover-web() {
	t=$(mktemp)
	go test -v $COVERFLAGS -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}

pdflatex() {
	eval "$(docker-machine env dev)"
	docker run --rm --env FILE="$@" -v $(pwd):/data davidrjenni/latex
}

R() {
	eval "$(docker-machine env dev)"
	docker run --rm -it -v $(pwd):/data davidrjenni/rlang
}

ghci() {
	eval "$(docker-machine env dev)"
	docker run --rm -it -v $(pwd):/data davidrjenni/haskell
}

swipl() {
	eval "$(docker-machine env dev)"
	docker run --rm -it -v $(pwd):/data davidrjenni/prolog
}

shopt -s autocd

HISTSIZE=
HISTFILESIZE=
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

if [ $TERM == "dumb" ]; then
	export PAGER=nobs
	export EDITOR=editinacme
	export FCEDIT=$EDITOR
	export VISUAL=$EDITOR
	rc
fi
