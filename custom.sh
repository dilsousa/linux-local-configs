# call this file before 'source $ZSH/oh-my-zsh.sh'
# source $HOME/linux-local-configs/custom.sh

# git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
# git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions

plugins=(git "zsh-syntax-highlighting" "zsh-autosuggestions" "kubectl" "helm" "git")

# git
alias g='git '

# maven
alias update='sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y  && sudo apt autoclean -y'
alias wip="g add -A && g commit -m 'wip' && g ph"
alias master="g checkout master && g pull"
alias k='kubectl'
alias docker-rm="docker rm -f \$(docker ps -a -q)"
alias docker-rmi="docker rmi -f \$(docker images -q)"
alias kcd='kubectl config set-context $(kubectl config current-context) --namespace '
# use: kcd some-namespace

clone() {
    GIT_PATH_NAME="$1"
    if [ -z "${GIT_PATH_NAME}" ]; then
        echo "Use 'clone path/repository'"
    else
        git clone "git@github.com:${GIT_PATH_NAME}" && cd "$(basename "${GIT_PATH_NAME}" .git)"
    fi
}

ph() {
    COMMENT="$1"
    if [ -z "${COMMENT}" ]; then
        echo "ph 'my comment about this commit'"
    else
        g add -A && g commit -m "${COMMENT}" && g ph
    fi
}

nodetool() {
    docker run --rm cassandra:3.0 nodetool $@
}

mac() {
  sudo bash -c "echo 2 > /sys/module/hid_apple/parameters/fnmode"
}

export PATH=$PATH:~/bin/lein
