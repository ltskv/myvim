#!/usr/bin/env bash
repo="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd )"

read -r -p "
Would you like to also use the .screenrc from this repo?
WARNING: if you do, the existing ~/.screenrc will be deleted!
[y/n]: " response

if [[ "$response" = "y" ]]
then
    ln -sf "$repo/.screenrc" "$HOME/.screenrc"
    echo "Created a .screenrc"
else
    echo "Not using .screenrc from this repo."
fi

if [ ! -d "$HOME/.vim" ]
then
    mkdir "$HOME/.vim"
    # shellcheck disable=SC2016
    echo 'Created .vim directory in your $HOME'
fi

function do_the_symlink() {
    src="$1"
    trg="$2"
    if [ -e "$src" ]
    then
        echo "$src already exists, deal with it manually"
    else
        ln -vs "$src" "$trg"
    fi
}

do_the_symlink "$repo/colors" "$HOME/.vim/colors"
do_the_symlink "$repo/plugin" "$HOME/.vim/plugin"
do_the_symlink "$repo/ftplugin" "$HOME/.vim/ftplugin"
do_the_symlink "$repo/.vimrc" "$HOME/.vimrc"

read -r -p "
Would you like to install plugin manager vim-plug?
[y/n]: " response

if [[ "$response" = "y" ]]
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
