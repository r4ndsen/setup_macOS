# keyboard repeat speed:
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install wget
brew install curl --with-libssh2
brew link curl --force

brew install php72 --with-homebrew-curl
brew install php72-redis
brew install php72-http
brew install php72-mongodb
#brew install php72-phalcon
brew install php72-imagick
brew install php72-pcntl
brew install php72-ssh2
brew install php72-xdebug
brew install php72-libsodium
brew install php72-gmp

brew install pv
brew install composer
brew install redis
brew install htop
brew install python
brew install pigz
brew install phpunit

# update all of brew
brew upgrade `brew outdated`
