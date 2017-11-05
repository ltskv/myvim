"Vundle stuff
"{{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
"Plugin 'jmcantrell/vim-virtualenv'
Plugin 'petRUShka/vim-opencl'

call vundle#end()
"}}}

"Syntax
"{{{
filetype plugin indent on
syntax enable
syntax sync maxlines=256
set synmaxcol=200
"}}}

"Options
"{{{
set expandtab
set shiftwidth=4
set tabstop=4
set foldlevel=99
set encoding=utf-8
set number
set showmatch
set matchtime=2

set hlsearch
set incsearch

set laststatus=2
"set splitbelow
"}}}

"Gui stuff
"{{{
set guifont=Consolas:h12
set guicursor=n-v-i-c:block-Cursor
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

set langmenu=en_US.UTF-8
"}}}

"Colors
"{{{
colorscheme izi
"let g:airline_theme='light'
""}}}

"Tagbar stuff
"{{{
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_autofocus = 1
"}}}

"YouCompleteMe stuff
"{{{
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_global_extra_config.py'
let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:syntastic_python_python_exec = '/usr/local/bin/python3'
set shortmess+=c
"}}}

"Mappings
"{{{
let mapleader = ","
let maplocalleader = ","
nnoremap q <nop>
nnoremap ql :lclose<cr>
nnoremap qq :cclose<cr>
nnoremap qp :pclose<cr>
nnoremap qh :helpclose<cr>
nnoremap qN :NERDTreeClose<cr>
nnoremap qT :TagbarClose<cr>

nnoremap <leader>ss :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>n :noh<cr>
nnoremap <leader>k <c-w><c-k>
nnoremap <leader>j <c-w><c-j>
nnoremap <leader>h <c-w><c-h>
nnoremap <leader>l <c-w><c-l>
nnoremap <leader>se :syntax enable<cr>
nnoremap <leader>so :syntax off<cr>

vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <c-c> "+y

onoremap p i(
onoremap qd i"
onoremap qs i'
"}}}

"Mappings for Plugins
"{{{
nnoremap <leader>N :NERDTree<cr>
nnoremap <leader>r :AirlineRefresh<cr>
nnoremap <leader>] :YcmCompleter GoTo<cr>
nnoremap <leader>ye :YcmShowDetailedDiagnostic<cr>
nnoremap <leader>yf :YcmCompleter FixIt<cr>:ccl<cr>
nnoremap <leader>yd :YcmDiags<cr>
nnoremap <leader>T :TagbarToggle<cr>
"}}}

"Abbreviations
"{{{
iabbrev rr return
"}}}
