"Syntax
"{{{
filetype plugin indent on
syntax enable
syntax sync maxlines=100
set synmaxcol=200

augroup customft
    autocmd!
    autocmd BufNewFile,BufRead *.vim* set filetype=vim
augroup END
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
set guicursor=n-v-i-c:block-Cursor
set guicursor+=n-v-i-c:blinkon0
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T

set langmenu=en_US.UTF-8
"}}}

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

"Coding style
"{{{
augroup badstyle
    autocmd!
    autocmd BufWinEnter * call clearmatches()
    autocmd BufWinEnter * let w:m1 = matchadd('Unstylish', '\%81v.')
    autocmd BufWinEnter * if &ft != 'make' && &ft != 'gitcommit'
                \ && &ft != 'help'
                \ | let w:m2 = matchadd('Unstylish', '\t') | endif
augroup END

augroup trailingwhite
    autocmd!
    autocmd BufWinEnter,InsertLeave * if &ft != 'markdown'
                \ | match TrailingWhite '\v\s+$' | endif
    autocmd InsertEnter * match TrailingWhite ''
augroup END
"}}}

"Mappings
"{{{
let mapleader = ","
let maplocalleader = ","
nnoremap q <nop>
nnoremap Q <nop>
nnoremap qn :nohl<cr>
nnoremap ql :lclose<cr>
nnoremap qq :cclose<cr>
nnoremap qp :pclose<cr>
nnoremap qh :helpclose<cr>
nnoremap qN :NERDTreeClose<cr>
nnoremap qT :TagbarClose<cr>

if has('win32')
    let my_settings_file = "$HOME/vimfiles/plugin/settings.vim"
else
    let my_settings_file = "$HOME/.vim/plugin/settings.vim"
endif

nnoremap <leader>sl :tabe $MYVIMRC<cr>
nnoremap <leader>ss :execute 'tabe' my_settings_file<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>:execute 'source' my_settings_file<cr>
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
nnoremap <leader>] :YcmCompleter GoTo<cr>
nnoremap <leader>ye :YcmShowDetailedDiagnostic<cr>
nnoremap <leader>yf :YcmCompleter FixIt<cr>:ccl<cr>
nnoremap <leader>yd :YcmDiags<cr>
nnoremap <leader>T :TagbarToggle<cr>
"}}}

"Abbreviations
"{{{
iabbrev rr return
iabbrev itt import
cabbrev w!! w !sudo tee > /dev/null %<cr>
"}}}
