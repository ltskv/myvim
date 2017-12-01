#!/usr/bin/env bash
read -p "---WARNING---
This script will brutally delete your .vimrc file,
if such exists in your home directory.
Are you sure you want to proceed? [y/n]: " responce

[[ "$responce" = "y" ]] || { echo "Abort!" >&2; exit 1; }
echo "Proceeding..."
repo="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

[ -f "$HOME/.vimrc" ] && rm "$HOME/.vimrc"
ln -s "$repo/.vimrc" "$HOME/.vimrc"
echo "Created link to .vimrc"

[ -d "$HOME/.vim" ] || { mkdir "$HOME/.vim"; \
    echo "Created .vim directory in your HOME"; }

[ -d "$HOME/.vim/colors" ] \
    && echo "colors dir already exists, deal with it manually" \
    || ln -s "$repo/colors" "$HOME/.vim/colors"

[ -d "$HOME/.vim/plugin" ] \
    && echo "plugin dir already exists, deal with it manually" \
    || ln -s "$repo/plugin" "$HOME/.vim/plugin"

[ -d "$HOME/.vim/ftplugin" ] \
    && echo "ftplugin already exists, deal with it manually" \
    || ln -s "$repo/ftplugin" "$HOME/.vim/ftplugin"

[ -f "$HOME/.vimplugin" ] \
    && echo "not creating ~/.vimplugin, it exists already" \
    || cp "$repo/plugin_template.vim" "$HOME/.vimplugin"

[ -f "$HOME/.vimlocal" ] \
    && echo "not creating ~/.vimlocal, it exists already" \
    || cp "$repo/local_template.vim" "$HOME/.vimlocal"

[ -d "$HOME/.vim/bundle" ]\
    && echo "You seem to already have some plugin manager" \
    || { mkdir "$HOME/.vim/bundle"; \
    git clone https://github.com/Vundle/Vundle.vim.git \
    "$HOME/.vim/bunlde/Vundle.vim"; }

echo "Setup finished."
