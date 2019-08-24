#!/bin/bash

clone() {
    GIT_PATH_NAME="$1"
    if [ -z "${GIT_PATH_NAME}" ]; then
        echo "Use 'clone path/repository'"
    else
        git clone "git@github.com:${GIT_PATH_NAME}" && cd "$(basename "${GIT_PATH_NAME}" .git)"
    fi
}
