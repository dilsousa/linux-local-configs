#!/bin/sh
cp agnoster.zsh-theme ~/.oh-my-zsh/themes
# drop ZSH_THEME from .zshrc

# Configure git
git config --global alias.co checkout
git config --global alias.b branch
git config --global alias.c commit
git config --global alias.s status
git config --global alias.a 'add .'
git config --global alias.p push
git config --global alias.u pull
git config --global alias.um 'pull origin master'


# then run
echo "put 'source ~/linux-local-configs/custom.sh' on ~/.zshrc"
echo "RUN $ source ~/.zshrc"

dconf write /org/compiz/profiles/unity/plugins/core/hsize 1
dconf write /org/compiz/profiles/unity/plugins/core/vsize 2

# fonts
# https://github.com/powerline/fonts
# https://powerline.readthedocs.io/en/latest/installation/linux.html