" Syntax
" {{{
filetype plugin indent on
syntax enable
syntax sync maxlines=100
set synmaxcol=200

augroup customft
    autocmd!
    autocmd BufNewFile,BufRead *.vim* set filetype=vim
augroup END
" }}}

" Options
" {{{
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
set nojoinspaces
" set splitbelow
" }}}

" Globals
" {{{
let g:tex_fold_enabled = 1
let g:javaScript_fold = 1
" }}}

" Gui stuff
" {{{
set guicursor=n-v-i-c:block-Cursor
set guicursor+=n-v-i-c:blinkon0
set guioptions=
set mouse=c

set langmenu=en_US.UTF-8
" }}}

" Tagbar stuff
" {{{
let g:tagbar_autofocus = 1
" }}}

" LatexBox stuff
" {{{
let g:LatexBox_no_mappings = 1
let g:LatexBox_quickfix = 2
let g:LatexBox_build_dir = 'build'
let g:LatexBox_latexmk_options = '-xelatex -outdir=build'
" }}}

" YouCompleteMe stuff
" {{{
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_filetype_blacklist = {
            \ 'tex': 1,
            \ 'markdown': 1,
            \ 'text': 1
            \ }
set shortmess+=c
" }}}

" Syntastic Stuff
" {{{
let g:syntastic_mode_map = {'mode': 'passive'}
" let g:syntastic_aggregate_errors = 1
" }}}

" Coding style
" {{{
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

augroup prose
    autocmd!
    autocmd FileType tex,text,markdown
                \ setlocal spell spelllang=en_us textwidth=80
augroup END
" }}}

" Mappings
" {{{
let mapleader = ","
let maplocalleader = " "
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

nnoremap <leader>c mc:CommenseComment<cr>`c:delm c<cr>
nnoremap <leader>xc mc:CommenseUncomment<cr>`c:delm c<cr>
vnoremap <leader>c :CommenseComment<cr>
vnoremap <leader>xc :CommenseUncomment<cr>
vnoremap <leader>b :CommenseBlock<cr>
nnoremap <leader>xb mc:CommenseUnblock<cr>`c:delm c<cr>

nnoremap <leader>sl :tabe $MYVIMRC<cr>
nnoremap <leader>ss :execute 'tabe' my_settings_file<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>:execute 'source' my_settings_file<cr>
nnoremap <leader>k <c-w><c-k>
nnoremap <leader>j <c-w><c-j>
nnoremap <leader>h <c-w><c-h>
nnoremap <leader>l <c-w><c-l>
nnoremap <leader>se :syntax enable<cr>
nnoremap <leader>so :syntax off<cr>

nnoremap <leader>fl mf081lF<space>r<cr>`f:delm f<cr>

vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <c-c> "+y
nnoremap <c-v> "+p
inoremap <c-v> <esc>"+p
" }}}

" Mappings for Plugins
" {{{
nnoremap <leader>N :NERDTree<cr>
nnoremap <leader>] :YcmCompleter GoTo<cr>
nnoremap <leader>ye :YcmShowDetailedDiagnostic<cr>
nnoremap <leader>yf :YcmCompleter FixIt<cr>:ccl<cr>
nnoremap <leader>yd :YcmDiags<cr>
nnoremap <leader>sd :SyntasticSetLoclist<cr>:lopen<cr>
nnoremap <leader>sc :w<cr>:SyntasticCheck<cr>
nnoremap <leader>sr :SyntasticReset<cr>
nnoremap <leader>T :TagbarToggle<cr>
" }}}

" Abbreviations
" {{{
iabbrev rr return
iabbrev itt import
cabbrev w!! w !sudo tee > /dev/null %<cr>
" }}}
