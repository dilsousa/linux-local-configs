source ~/linux-local-configs/powerlevel9k-custom.sh

# git
alias g='git '

# maven
alias update='sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y  && sudo apt autoclean -y'
alias wip="g add -A && g commit -m 'wip' && g ph"
alias master="g checkout master && g pull"
alias screen='/snap/screen/current/screen/Screen'

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

export PATH=$PATH:~/bin/lein

alias k='kubectl'
