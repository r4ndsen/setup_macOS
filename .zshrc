export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"
plugins=(git)

source $ZSH/oh-my-zsh.sh
source $ZSH/diary.sh

export GREP_COLOR='1;32' 
export GREP_OPTIONS='--color=auto'
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export DOCKER_HOST=unix://$HOME/.colima/docker.sock

function jira() {
	open "https://hitmeister.atlassian.net/browse/$1"
}

alias gs='git status'
alias gc='git commit -m'
alias gd='git diff'
alias gdb='gd -b'
alias bu='brew upgrade && say brew updated || say brew update failed'
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lh'
alias l='ls $LS_OPTIONS -lAh'
alias ..='cd ..'
alias ...='cd ../..'
alias cu='composer update'
alias psopen=phpstorm
alias gopen=goland
alias gitlab='glab repo view --web'
alias csfix="php-cs-fixer fix --config ~/dev/php-cs-fixer/.php-cs-fixer.php --using-cache no -v"
alias dc="docker-compose"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
