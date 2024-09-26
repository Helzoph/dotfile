# debug
set -x debug true


# 不显示 Fish 启动欢迎信息
set -g fish_greeting


# PATH
set -gx GO_BIN_PATH $HOME/go/bin
set -gx RUST_BIN_PATH $HOME/.cargo/bin
set -gx PATH $GO_BIN_PATH $RUST_BIN_PATH $PATH


# zellij
if set -q ZELLIJ
else
  zellij
end


# starship
starship init fish | source


# alias
## systemctl
alias scstart 'sudo systemctl start'
alias scstop 'sudo systemctl stop'
alias screstart 'sudo systemclt restart'
alias scenabel 'sudo systemctl enable'
alias scdisable 'sudo systemctl disable'
alias screload 'sudo systemctl reload'

## apt
alias apti 'sudo apt install'
alias aptiy 'sudo apt install -y'
alias aptud 'sudo apt update'
alias aptug 'sudo apt upgrade'

## docker compose
alias dco 'docker-compose'
alias dcup 'docker-compose up'
alias dcupd 'docker-compose up -d'
alias dcdn 'docker-compose down'

## golang
alias gor 'go run'
alias gob 'go build'
alias got 'go test'
alias gog 'go get'
alias gom 'go mod'
alias gomi 'go mod init'
alias gomt 'go mod tidy'

## go-zero goctl
alias genapi 'goctl api go -api *api -dir ../ --style=gozero'
alias genmod 'goctl model mysql ddl -src *.sql -dir ./'
alias genmodc 'goctl model mysql ddl -src *.sql -dir ./ -c'

## ptyhon
### venv
alias pyvenv 'python -m venv venv'
alias scven 'source venv/bin/activate.fish'

## system
### ls
alias l 'ls -lFh'
alias la 'ls -lFhA'
alias ll 'ls -l'
### file
alias cp 'cp -iv'
alias mv 'mv -iv'
alias rm 'rm -iv'
alias mkdir 'mkdir -pv'
### find & grep
alias fd 'find . -type d -name'
alias ff 'find . -type f -name'
alias grep 'grep --color=auto'
alias sgrep 'grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS}'


if status is-interactive	
    # Commands to run in interactive sessions can go here
end
