#!/bin/zsh
cp agnoster.zsh-theme ~/.oh-my-zsh/themes
# drop ZSH_THEME from .zshrc

# Configure git
git config --global alias.st status
git config --global alias.a 'add .'
git config --global alias.ph push

git config --global user.email "andreformento.sc@gmail.com"
git config --global user.name "André Formento"

git config --global push.default simple

HIGHLIGHTING_PATH="${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
rm -rf $HIGHLIGHTING_PATH
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HIGHLIGHTING_PATH


ZSHRC_FILE="$HOME/.zshrc"
ZSHRC_FILE_BKP="$ZSHRC_FILE.bkp"
if [ -f "$ZSHRC_FILE_BKP" ];
then
	cp "$ZSHRC_FILE_BKP" "$ZSHRC_FILE"
else
	cp "$ZSHRC_FILE" "$ZSHRC_FILE_BKP"
fi

# http://www.yourownlinux.com/2015/04/sed-command-in-linux-append-and-insert-lines-to-file.html

sed -i '/plugins=($/ a \ \ zsh-syntax-highlighting' ${ZSHRC_FILE}
echo "source ~/linux-local-configs/custom.sh" >> ${ZSHRC_FILE}

echo "To restore execute '$ cp $ZSHRC_FILE_BKP $ZSHRC_FILE'"

source "$ZSHRC_FILE"

# dconf write /org/compiz/profiles/unity/plugins/core/hsize 1
# dconf write /org/compiz/profiles/unity/plugins/core/vsize 2
# gsettings set org.gnome.shell.overrides workspaces-only-on-primary false

# left buttons on the window:
# gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize,minimize:'

# fonts
# https://github.com/powerline/fonts
# https://powerline.readthedocs.io/en/latest/installation/linux.html
