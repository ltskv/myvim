#!/usr/bin/env bash
repo="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"

read -p "
Would you like to use template from this repository as your .vimrc?
WARNING: if you do, the existing ~/.vimrc will be deleted!
[y/n]: " responce

read -p "
Would you like to also use the .screenrc from this repo?
WARNING: if you do, the existing ~/.screenrc will be deleted!
[y/n]: " responce

[[ "$responce" = "y" ]] \
    && { ln -sf "$repo/.screenrc" "$HOME/.screenrc"; \
    echo "Created a .screenrc"; } \
    || echo "Not using .screenrc from this repo."

[ -d "$HOME/.vim" ] || { mkdir "$HOME/.vim"; \
    echo "Created .vim directory in your HOME"; }

[ -d "$HOME/.vim/colors" ] \
    && echo "~/.vim/colors already exists, deal with it manually" \
    || ln -vs "$repo/colors" "$HOME/.vim/colors"

[ -d "$HOME/.vim/plugin" ] \
    && echo "~/.vim/plugin already exists, deal with it manually" \
    || ln -vs "$repo/plugin" "$HOME/.vim/plugin"

[ -d "$HOME/.vim/ftplugin" ] \
    && echo "~/.vim/ftplugin already exists, deal with it manually" \
    || ln -vs "$repo/ftplugin" "$HOME/.vim/ftplugin"

if [ -e "$HOME/.vimrc" ]
then
    echo "~/.vimrc already exists, deal with it manually"
else
    ln -vs "$repo/.vimrc" "$HOME/.vimrc"
fi

read -p "
Would you like to install plugin manager vim-plug?
[y/n]: " responce

if [[ "$responce" = "y" ]]
then
    curl \
        -fLo \
        ~/.vim/autoload/plug.vim \
        --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo 'Not installing vim-plug'
fi

echo "Setup finished."
