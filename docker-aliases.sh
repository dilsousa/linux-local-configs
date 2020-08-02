#!/bin/bash
function docker_alias() {
    docker run -it --rm \
        -v $(pwd):$1 -w $1 \
        -p 3000:3000 \
        -p 8080:8080 \
        -p 8000:8000 \
        -p 80:80 \
        -p 3306:3306 \
        -p 27017:27017 \
        ${@:2}
}

# JavaScript
alias node="docker_alias /directory node node"
alias npm="docker_alias /directory node npm"
