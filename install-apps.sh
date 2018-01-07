#!/bin/zsh

sudo apt install curl -y

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# sdk list java
sdk install gradle
sdk install maven
sdk install java 9.0.1-oracle
sdk install scala
sdk install sbt