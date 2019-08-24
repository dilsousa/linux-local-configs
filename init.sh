#!/bin/bash

CUSTOMIZATIONS_PATH=$(pwd)

# Configure git
git config --global alias.st status
git config --global user.email "andreformento.sc@gmail.com"
git config --global user.name "André Formento"

git config --global push.default simple

#clear old configuration
sed -i '/CUSTOMIZATIONS_PATH/d' ~/.bashrc
echo "CUSTOMIZATIONS_PATH=${CUSTOMIZATIONS_PATH}" >> ~/.bashrc
sed -i '/customizations.sh/d' ~/.bashrc
echo 'source ${CUSTOMIZATIONS_PATH}/customizations.sh' >> ~/.bashrc
source ~/.bashrc
