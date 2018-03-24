#!/bin/zsh
cp agnoster.zsh-theme ~/.oh-my-zsh/themes
# drop ZSH_THEME from .zshrc

# Configure git
git config --global alias.st status
git config --global alias.a 'add .'
git config --global alias.ph push
git config --global alias.ur '!git st; git add README.md; git commit -m "Update readme"; git ph'

git config --global user.email "andreformento.sc@gmail.com"
git config --global user.name "André Formento"

git config --global push.default simple

ZSHRC_FILE="$HOME/.zshrc"
ZSHRC_FILE_BKP="$ZSHRC_FILE.bkp"
if [ -f "$ZSHRC_FILE_BKP" ];
then
	cp "$ZSHRC_FILE_BKP" "$ZSHRC_FILE"
else
	cp "$ZSHRC_FILE" "$ZSHRC_FILE_BKP"
fi

# http://www.yourownlinux.com/2015/04/sed-command-in-linux-append-and-insert-lines-to-file.html


## declare an array variable
declare -a arr=("zsh-syntax-highlighting" "zsh-autosuggestions")

## now loop through the above array
for PLUGIN_NAME in "${arr[@]}"
do
	PLUGIN_PATH=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/$PLUGIN_NAME
	rm -rf $PLUGIN_PATH
	git clone https://github.com/zsh-users/$PLUGIN_NAME.git $PLUGIN_PATH
	sed -i "/plugins=($/ a \ \ $PLUGIN_NAME" ${ZSHRC_FILE}
done

echo "source $HOME/linux-local-configs/custom.sh" >> ${ZSHRC_FILE}
SDKMAN_INIT=${SDKMAN_CUSTOM:-$HOME/.sdkman}/bin/sdkman-init.sh
echo "source $SDKMAN_INIT" >> ${ZSHRC_FILE}


echo "To restore execute '$ cp $ZSHRC_FILE_BKP $ZSHRC_FILE'"

echo "### Run this command ###\nsource $ZSHRC_FILE"
source $ZSHRC_FILE

# dconf write /org/compiz/profiles/unity/plugins/core/hsize 1
# dconf write /org/compiz/profiles/unity/plugins/core/vsize 2
# gsettings set org.gnome.shell.overrides workspaces-only-on-primary false

# left buttons on the window:
# gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize,minimize:'

# fonts
# https://github.com/powerline/fonts
# https://powerline.readthedocs.io/en/latest/installation/linux.html
