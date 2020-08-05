#!/bin/zsh

sudo apt install curl silversearcher-ag jq vim copyq shotwell xclip golang-go -y

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# sdk list java
sdk install gradle
sdk install maven
sdk install java 9.0.1-oracle
sdk install scala
sdk install sbt

echo "configure editor 'sudo update-alternatives --config editor'"

sudo snap install code
# for work code on terminal:
ln -s /snap/bin/code /usr/bin/code

# Docker
sudo apt-get install -y containerd.io
wget -O docker-ce-cli.deb https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce-cli_19.03.6~3-0~ubuntu-bionic_amd64.deb
wget -O docker-ce.deb https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce_19.03.6~3-0~ubuntu-bionic_amd64.deb

sudo dpkg -i docker-ce-cli.deb
sudo dpkg -i docker-ce.deb
rm -rf docker-ce.deb docker-ce-cli.deb
