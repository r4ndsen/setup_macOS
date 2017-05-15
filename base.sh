# keyboard repeat speed:
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install wget
brew install curl --with-libssh2
brew link curl --force

brew install php71 --with-homebrew-curl
brew install php71-redis
brew install php71-pspell
#brew install php71-imagick
brew install php71-pcntl
brew install php71-intl
brew install php71-ssh2
brew install php71-xdebug

brew install composer
brew install redis
brew install htop
brew install python
brew install pigz
brew install phpunit

# update all of brew
brew upgrade `brew outdated`
