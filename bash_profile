[[ -f ~/.bashrc ]] && . ~/.bashrc

export BROWSER=/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
export EDITOR=vim
export PLAN9=~/code/plan9port
export GOPATH=~/gocode
export GOROOT=~/go

export CDPATH=.:~:$GOROOT/src:$GOPATH/src/golang.org:$GOPATH/src/github.com:$GOPATH/src/github.com/davidrjenni:~/code

export PATH=~/Library/Android/sdk/platform-tools:$PATH
export PATH=$GOPATH/bin:$GOROOT/bin:~/code/go_appengine:$PATH
export PATH=$PATH:$PLAN9/bin:~/code/cmd:/usr/local/bin
