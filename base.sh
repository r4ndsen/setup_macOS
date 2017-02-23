# keyboard repeat speed:
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

brew install curl --with-libssh2
brew link curl --force

brew install php71 --with-homebrew-curl
