source ~/.git-prompt.sh
#https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
BLACK="\[\033[0;30m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true

#export PS1=$GREEN"★ \u@\h"'$(

export PS1=$GREEN"¯\_(ツ)_/¯"'$(
    if [[ $(__git_ps1) =~ \*\)$ ]]
    then echo "'$YELLOW'"$(__git_ps1 " (%s)")
    elif [[ $(__git_ps1) =~ \+\)$ ]]
    then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
    else echo "'$CYAN'"$(__git_ps1 " (%s)")
    fi)'$BLUE" \w"$BLACK": "

export GREP_COLOR='1;32'
export GREP_OPTIONS='--color=auto'

alias gitdiff='git diff -b'
alias adwords='cd ~/Documents/Products-Up/adwords'
alias dblib='cd ~/Documents/Products-Up/dblib'
alias datalib='cd ~/Documents/Products-Up/datalib'
alias datalibb='cd ~/Documents/Products-Up/datalib-boxes'
alias plugin='cd ~/Documents/Products-Up/Plugins'
alias textdata='cd ~/Documents/Products-Up/text-data'
alias processing='cd ~/Documents/Products-Up/Processing'
alias processingb='cd ~/Documents/Products-Up/Processing-box-classes'
alias getimport="php ~/Documents/Products-Up/Processing/bin/tools/get_import_sqlite.php --site $1"
alias gearman='cd ~/Documents/Products-Up/Processing-Gearman'
alias insight='cd ~/Documents/Coding/PuP/Insight'
alias iapi='cd ~/Documents/Products-Up/Insight-API'
alias boxes='cd ~/Documents/Products-Up/boxes'
ci() { ssh "root@ci-$1.productsup.com" ;}
cpu() { ssh "root@cpu-$1.productsup.com" ;}
getbin() { scp root@cpu-155.productsup.com:/usr/bin/$1* /usr/local/bin/; }
pda() { ssh "root@pda-$1.productsup.com" ;}

alias pds3='s ws.pds3.productsup.com'

alias gs='git status'
alias gc='git commit -m'
alias gd='git diff'

alias transport='s transport.productsup.io'

umask 022
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lh'
alias l='ls $LS_OPTIONS -lAh'
alias ..='cd ..'
alias ...='cd ../..'
alias s='ssh -l root'
alias cu='composer update'
alias cund='cu --no-dev'
alias cmup='COMPOSER=composer.master.json cu'

export PATH=/Users/wernerspiegel/gsutil:$PATH
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH=/usr/local/sbin:$PATH

alias php='php -dzend_extension=/usr/local/opt/php71-xdebug/xdebug.so'
# PHPUnit needs xdebug for coverage. In this case, just make an alias with php command prefix.
alias phpunit='php /usr/local/Cellar/phpunit/6.1.2/libexec/phpunit-6.1.2.phar'

alias site="bin-pupsite show"
alias siteversion="bin-pupsite set-version "
alias runsite="bin-pupsite run"
