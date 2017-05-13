source ~/linux-local-configs/powerlevel9k-custom.sh

# git
alias g='git '

# maven
alias m='mvn clean install -U '

alias wifi=watch -n 1 "awk 'NR==3 {print \"WiFi Signal Strength = \" \$3 \"00 %\"}''' /proc/net/wireless"
