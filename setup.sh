#!/usr/bin/env bash
repo="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

read -p "Would you like to use template from this repository
as your .vimrc? WARNING: if you do, the existing ~/.vimrc
will be deleted! [y/n]: " responce

[[ "$responce" = "y" ]] \
    && { [ -f "$HOME/.vimrc" ] && rm "$HOME/.vimrc"; \
    cp "$repo/.vimrc_template" "$HOME/.vimrc"; \
    echo "Created ~/.vimrc from template"; } \
    || echo "Not creating ~/.vimrc from template"

[ -d "$HOME/.vim" ] || { mkdir "$HOME/.vim"; \
    echo "Created .vim directory in your HOME"; }

[ -d "$HOME/.vim/colors" ] \
    && echo "~/.vim/colors already exists, deal with it manually" \
    || ln -s "$repo/colors" "$HOME/.vim/colors"

[ -d "$HOME/.vim/plugin" ] \
    && echo "~/.vim/plugin already exists, deal with it manually" \
    || ln -s "$repo/plugin" "$HOME/.vim/plugin"

[ -d "$HOME/.vim/ftplugin" ] \
    && echo "~/.vim/ftplugin already exists, deal with it manually" \
    || ln -s "$repo/ftplugin" "$HOME/.vim/ftplugin"

[ -d "$HOME/.vim/bundle" ] \
    && echo "You seem to already have some plugin manager" \
    || { mkdir "$HOME/.vim/bundle"; \
    git clone https://github.com/Vundle/Vundle.vim.git \
    "$HOME/.vim/bunlde/Vundle.vim"; }

echo "Setup finished."
