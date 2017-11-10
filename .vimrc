"Plugin stuff
"{{{
if has("win32")
    source $HOME/vimfiles/plugins.vim
else
    source $HOME/.vim/plugins.vim
endif
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
set formatoptions-=cro
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
let g:tagbar_autofocus = 1
"}}}

"YouCompleteMe stuff
"{{{
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion = 1
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
