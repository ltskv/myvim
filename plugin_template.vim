"Vundle stuff
"{{{
set nocompatible
filetype off

"Unix
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

"Win
"set rtp+=$HOME/vimfiles/bundle/Vundle.vim
"call vundle#begin('$HOME/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/indentpython.vim'
"Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
"Plugin 'jmcantrell/vim-virtualenv'
"Plugin 'petRUShka/vim-opencl'

call vundle#end()
"}}}

"let g:tagbar_ctags_bin = ''
"let g:ycm_global_ycm_extra_conf = ''
"let g:ycm_python_binary_path = ''
"let g:syntastic_python_python_exec = ''
