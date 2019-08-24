#!/bin/bash

sudo apt install curl -y

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# sdk list java
sdk install gradle
sdk install maven
sdk install java 9.0.1-oracle
sdk install scala
sdk install sbt

# Instal lein (clojure)
mkdir -p ~/bin
curl 'https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein' > ~/bin/lein
chmod +x ~/bin/lein
echo "export PATH=$PATH:~/bin/lein" >> ~/.bashrc

open https://github.com/Bash-it/bash-it
export BASH_IT_THEME="powerline-multiline"
export THEME_SHOW_CLOCK_CHAR=false
export THEME_SHOW_CLOCK=false
