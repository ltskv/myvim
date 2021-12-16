set nocompatible

" They say to do it before plugin loading...
let g:ale_disable_lsp = 1

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
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'jceb/vim-orgmode'
Plug 'easymotion/vim-easymotion'
Plug 'felipec/vim-sanegx'
Plug 'junegunn/fzf'
Plug 'raimon49/requirements.txt.vim'

"Stuff useful if backend is available
Plug 'mcchrish/nnn.vim'
Plug 'lamchau/vim-ripgrep', { 'branch': 'patch-1' }

"Python
Plug 'vim-python/python-syntax'
Plug 'vim-scripts/indentpython.vim'
Plug 'tmhedberg/SimpylFold'

"Latex
" Plug 'LaTeX-Box-Team/LaTeX-Box'

"Weird other langs
Plug 'google/vim-jsonnet'
" Plug 'neovimhaskell/haskell-vim'
Plug 'cespare/vim-toml'
" Plug 'rust-lang/rust.vim'
" Plug 'tikhomirov/vim-glsl'

call plug#end()
"}}}

"Local settings
"{{{
set guifont=JetBrains\ Mono\ 12
"When on remote terminal this incites rage
set mouse=a

if !has('gui_running') && $TERM ==# 'linux'
    colorscheme pitchblack
else
    colorscheme snowhite
endif
"}}}
