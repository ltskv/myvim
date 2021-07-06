set nocompatible

"Vundle stuff
"{{{
filetype off

"Unix
call plug#begin('~/.vim/bundle')

"Win32
"set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
"call vundle#begin($HOME/vimfiles/bundle/)

"Autocomplete (choose one)
" Plug 'Valloric/YouCompleteMe'
" Plug 'ajh17/VimCompletesMe'

"Stuff useful everywhere
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'majutsushi/tagbar'
Plug 'jceb/vim-orgmode'

"Stuff useful if backend is available
Plug 'mcchrish/nnn.vim'
Plug 'jremmen/vim-ripgrep'

"Python
Plug 'vim-python/python-syntax'
Plug 'vim-scripts/indentpython.vim'
Plug 'tmhedberg/SimpylFold'

"Latex
" Plug 'LaTeX-Box-Team/LaTeX-Box'

"Weird other langs
" Plug 'neovimhaskell/haskell-vim'
" Plug 'cespare/vim-toml'
" Plug 'rust-lang/rust.vim'
" Plug 'tikhomirov/vim-glsl'

call plug#end()
"}}}

"Local settings
"{{{
set guifont=JetBrains\ Mono\ 12
"When on remote terminal this incites rage
set mouse=a

if $TERM ==# 'linux'
    colorscheme pitchblack
else
    colorscheme snowhite
endif
"}}}
