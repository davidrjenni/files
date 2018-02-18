#!/bin/sh

case "$1" in
	*.htm|*.html)
		fmt="firefox %s"
		;;
	*.png|*.PNG|*.gif|*.jpg|*.JPG|*.jpeg|*.JPEG)
		fmt="sxiv %s &"
		;;
	*.pdf|*.epub)
		fmt="mupdf %s 2> /dev/null &"
		;;
	*.c|*.cpp|*.h|*.hpp|*.go|*.rs|*.py|*.sh|*.js|*.toml|Makefile|*.md|*.tex|*.hs|*.xml)
		fmt="vim %s"
		;;
	*.mp3|*.ogg|*.mp4|*.avi)
		fmt="mplayer %s"
		;;
	'')
		echo "usage: open.sh [path]"
		exit 1
		;;
	*)
		fmt="less %s"
		;;
esac

exec sh -c "$(printf "$fmt" "\"$1\"")"
