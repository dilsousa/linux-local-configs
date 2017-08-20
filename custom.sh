source ~/linux-local-configs/powerlevel9k-custom.sh

# git
alias g='git '

# maven
alias m='mvn clean install -U '
alias dod='docker kill $(docker ps -a -q) && docker rm $(docker ps -a -q)'

alias wifi=watch -n 1 "awk 'NR==3 {print \"WiFi Signal Strength = \" \$3 \"00 %\"}''' /proc/net/wireless"

# export MAVEN_OPTS="-Xnoagent -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000" mvn tomcat:run
