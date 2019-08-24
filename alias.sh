#!/bin/bash

# git
alias g='git '

# maven
alias update='sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y  && sudo apt autoclean -y'
alias wip="g add -A && g commit -m 'wip' && g ph"
alias master="g checkout master && g pull"
alias code="code-insiders"
