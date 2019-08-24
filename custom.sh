source ~/linux-local-configs/powerlevel9k-custom.sh

# git
alias g='git '

# maven
alias m='mvn clean install -U '
alias dod='~/linux-local-configs/docker-commands.sh'
alias update='sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y  && sudo apt autoclean -y'
alias wip="g add -A && g commit -m 'wip' && g ph"
alias master="g checkout master && g pull"

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

export PATH=$PATH:~/bin/lein

# alias wifi=watch -n 1 "awk 'NR==3 {print \"WiFi Signal Strength = \" \$3 \"00 %\"}''' /proc/net/wireless"

# export MAVEN_OPTS="-Xnoagent -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000" mvn tomcat:run
