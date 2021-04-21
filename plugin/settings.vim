" Syntax
" {{{
filetype plugin indent on
syntax enable
syntax sync maxlines=100
set synmaxcol=200

augroup customvimft
    autocmd!
    autocmd BufNewFile,BufRead *.vim* set filetype=vim
augroup END

augroup customvueft
    autocmd!
    autocmd BufNewFile,BufRead *.vue set filetype=vue
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
set autoread

set hlsearch
set incsearch

set laststatus=2
set nojoinspaces
set backspace=
set cino=(0,u0,Ws,m1
" set splitbelow
" }}}

" Globals
" {{{
let g:tex_fold_enabled = 1
let g:javaScript_fold = 1
let g:rust_recommended_style = 0
" }}}

" Gui stuff
" {{{
set guicursor=n-v-i-c:block-Cursor
set guicursor+=n-v-i-c:blinkon0
set guioptions=a

set langmenu=en_US.UTF-8
" }}}

" Tagbar stuff
" {{{
let g:tagbar_autofocus = 1
let g:tagbar_map_close = "qT"
" }}}

" Python-syntax stuff
" {{{
let g:python_highlight_all = 1
let g:python_highlight_operators = 0
" }}}

" Webdev stuff
" {{{
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key = '<c-f>'
augroup webdev
    autocmd!
    autocmd FileType html,jinja,css,vue EmmetInstall
    autocmd FileType html,jinja,vue setlocal omnifunc=htmlcomplete#CompleteTags sw=2 tabstop=2
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
augroup END
runtime macros/matchit.vim
" }}}

" LatexBox stuff
" {{{
let g:LatexBox_no_mappings = 1
let g:LatexBox_quickfix = 2
let g:LatexBox_build_dir = 'build'
let g:LatexBox_latexmk_options = '-outdir=build -shell-escape'
" }}}

" YouCompleteMe stuff
" {{{
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_auto_hover = ''
let g:ycm_key_detailed_diagnostics = ''
let g:ycm_extra_conf_globlist  = ['!*']
let g:ycm_filetype_blacklist = {
            \ 'tex': 1,
            \ 'plaintex': 1,
            \ 'markdown': 1,
            \ 'text': 1,
            \ 'rst': 1,
            \ 'html': 1,
            \ 'org': 1
            \ }
let g:ycm_clangd_args = ['--header-insertion=never']
if has('patch-8.0')
    " This is supposed to hide User defined completion ^U^X^P
    set shortmess+=c
endif
" }}}

" Syntastic Stuff
" {{{
let g:syntastic_mode_map = {
            \ 'mode': 'passive',
            \ 'active_filetypes': ['python', 'go']
            \}
let g:syntastic_python_checkers = ['python', 'pyflakes']
let g:syntastic_go_checkers = ['go']
" }}}

" Doge Stuff
" {{{
let g:doge_enable_mappings = 0
let g:doge_doc_standard_python = 'numpy'
" }}}

" Coding style
" {{{

hi def link Unstylish ColorColumn
hi def link TrailingWhite Unstylish

" Related to Fugitive
hi! link diffAdded Comment
hi! link diffRemoved String

augroup badstyle
    autocmd!
    autocmd BufWinEnter * call clearmatches()
    autocmd BufWinEnter * let w:m1 = matchadd('Unstylish', '\%80v.')
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
    autocmd FileType tex,text,plaintex,markdown,rst
                \ setlocal spell spelllang=en_us textwidth=79
augroup END

augroup fuckingcomment
    autocmd!
    autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END
" }}}

" For Terminal
" {{{
if has('terminal')
    augroup terminalsettings
        autocmd!
        autocmd TerminalWinOpen * setlocal nonu
    augroup END
endif
" }}}

" Mappings
" {{{
let mapleader = ","
nnoremap , <nop>
let maplocalleader = " "
nnoremap <space> <nop>

inoremap <s-cr> <c-o>O

nnoremap q <nop>
nnoremap Q <nop>
nnoremap Y y$
nnoremap qn :nohl<cr>
nnoremap ql :lclose<cr>
nnoremap qq :cclose<cr>
nnoremap qp :pclose<cr>
nnoremap qh :helpclose<cr>
nnoremap qN :NERDTreeClose<cr>
nnoremap qT :TagbarClose<cr>

nnoremap <silent> gb :bn<cr>
nnoremap <silent> gB :bp<cr>

let opener = ':term ++close ++hidden xo'
let termexe = $TERMEXE

nnoremap <leader>xod :execute opener '%:p:h'<cr>
nnoremap <leader>xot :term cd %:p:h
" nnoremap <leader>xow viw"ay:execute opener '<c-r>a'<cr>qaq
" nnoremap <leader>xol ^vg_"ay:execute opener '<c-r>a'<cr>qaq
" nnoremap <leader>xo" vi"ayy:execute opener '<c-r>a'<cr>qaq
" vnoremap <leader>xo "ay:execute opener '<c-r>a'<cr>qaq

nnoremap <silent> <leader>u mwviwu`w:delm w<cr>
nnoremap <silent> <leader>U mwviwU`w:delm w<cr>

if has('win32')
    let my_settings_file = "$HOME/vimfiles/plugin/settings.vim"
else
    let my_settings_file = "$HOME/.vim/plugin/settings.vim"
endif

nnoremap <silent> <leader>c mc:CommenseComment<cr>`c:delm c<cr>
nnoremap <silent> <leader>xc mc:CommenseUncomment<cr>`c:delm c<cr>
vnoremap <silent> <leader>c :CommenseComment<cr>
vnoremap <silent> <leader>xc :CommenseUncomment<cr>
vnoremap <silent> <leader>b :CommenseBlock<cr>
nnoremap <silent> <leader>xb mc:CommenseUnblock<cr>`c:delm c<cr>

nnoremap <leader>sl :pedit $MYVIMRC<cr>
nnoremap <leader>ss :execute 'pedit' my_settings_file<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>:execute 'source' my_settings_file<cr>
nnoremap <leader>w <c-w>
tnoremap <leader>w <c-w>
nnoremap <leader>dd cc<esc>
nnoremap <leader>se :syntax enable<cr>
nnoremap <leader>so :syntax off<cr>

nnoremap <leader>fl mf080lF<space>r<cr>`f:delm f<cr>
nnoremap <silent> <leader>fw :%s/\s\+$//ge<cr>:nohl<cr>

nnoremap <leader>v <c-v>
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <c-c> "+y
nnoremap <c-v> "+p
inoremap <c-v> <esc>"+p
vnoremap <c-v> x"+P

nnoremap <leader>t :term<cr>
nnoremap <leader>sw /\<\><Left><Left>
nnoremap <leader>rw :%s/\<\><Left><Left>
vnoremap <leader>rw :s/\<\><Left><Left>
nnoremap <leader>ln :lnext<cr>
nnoremap <leader>lp :lprev<cr>
" }}}

" Mappings for Plugins
" {{{
nnoremap <leader>N :NERDTree %<cr>
nnoremap <leader>] :YcmCompleter GoTo<cr>
nnoremap <leader>yt :YcmCompleter GetType<cr>
nnoremap <leader>ye :YcmShowDetailedDiagnostic<cr>
nnoremap <leader>yh :YcmCompleter GetDoc<cr>
nnoremap <leader>yf :YcmCompleter FixIt<cr>:ccl<cr>
nnoremap <leader>yd :YcmDiags<cr>
nnoremap <leader>yp <plug>(YCMHover)
nnoremap <leader>sd :SyntasticSetLoclist<cr>:lopen<cr>
nnoremap <leader>sc :w<cr>:SyntasticCheck<cr>
nnoremap <leader>sr :SyntasticReset<cr>
nnoremap <leader>T :TagbarToggle<cr>
nnoremap <leader>g :Gstatus<cr>
" }}}

" Abbreviations
" {{{
iabbrev rr return
iabbrev itt import
iabbrev miu µ
cabbrev w!! w !sudo tee > /dev/null %<cr>
cabbrev ddf %:p:h
cabbrev Pydoc term ++close python -m pydoc
cabbrev bsp sbuffer
cabbrev bvs vert sbuffer
cabbrev tabb tab sbuffer
" }}}

" Commands
" {{{
command! -nargs=* Pydebug tab term ++close pudb3 % <args>
" }}}
