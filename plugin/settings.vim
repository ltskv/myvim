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
set foldmethod=syntax
set foldlevel=99
set encoding=utf-8
set number
set showmatch
set matchtime=2
set autoread
set cursorline

set hlsearch
set incsearch

set laststatus=2
set nojoinspaces
set backspace=
set cino=(0,u0,Ws,m1
set belloff=all
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
    autocmd FileType html,jinja,vue setlocal omnifunc=htmlcomplete#CompleteTags sw=2 tabstop=2
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
augroup END
runtime macros/matchit.vim
" }}}

" vim-plug stuff
" {{{
augroup vim_plug_stuff
    autocmd!
    autocmd FileType vim-plug setlocal nocursorline
augroup END
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

" Syntastic Stuff aka ALE stuff
" {{{
let g:ale_linters = {
            \ 'python': ['pyflakes'],
            \ 'cpp': [],
            \ 'rust': []
            \ }
let g:ale_fix_on_save = 1
let g:ale_fixers = {
            \ 'python': ['black'],
            \ 'javascript': ['prettier'],
            \ 'vue': ['prettier'],
            \ 'html': ['prettier'],
            \ 'markdown': ['prettier'],
            \ 'json': ['prettier'],
            \ 'rust': ['rustfmt'],
            \ '*': []
            \ }
" }}}

" Doge Stuff
" {{{
let g:doge_enable_mappings = 0
let g:doge_doc_standard_python = 'numpy'
" }}}

" NNN Stuff
" {{{
let g:nnn#set_default_mappings = 0
let g:nnn#layout = 'new'
let g:nnn#action = {
            \ '<leader>nt': 'tab split',
            \ '<leader>ns': 'split',
            \ '<leader>nv': 'vsplit' }
" }}}

" FZF Stuff
" {{{
let g:fzf_layout = {'up': '50%'}
" }}}

" Style - Long Lines and Tabs
" {{{
let g:filetype_tab_ok = [
            \ 'make',
            \ 'gitcommit'
            \ ]

function! BadStyle() abort
    call clearmatches()
    if !&modifiable
        return
    endif
    call matchadd('Unstylish', '\%80v.')
    if index(g:filetype_tab_ok, &ft) == -1
        call matchadd('Unstylish', '\t')
    endif
endfunction

augroup badstyle
    autocmd!
    autocmd BufWinEnter,WinEnter * call BadStyle()
augroup END
" }}}

" Style - Trailing Whitespace
" {{{
let g:filetype_trailing_white_ok = [
            \ 'markdown',
            \ ]

function! TrailingWhiteUnstylish() abort
    if !&modifiable
        hi! link TrailingWhite Normal
    elseif index(g:filetype_trailing_white_ok, &ft) == -1
        hi! link TrailingWhite Unstylish
    else
        hi! link TrailingWhite Normal
    endif
endfunction

function! TrailingWhiteOkay() abort
    hi! link TrailingWhite Normal
endfunction

augroup trailingwhite
    autocmd!
    autocmd BufWinEnter,WinEnter * match TrailingWhite '\v\s+$'
    autocmd BufWinEnter,WinEnter,InsertLeave * call TrailingWhiteUnstylish()
    autocmd InsertEnter * call TrailingWhiteOkay()
augroup END
" }}}

" Style - Prose
" {{{
augroup prose
    autocmd!
    autocmd FileType tex,text,plaintex,markdown,rst
                \ setlocal spell spelllang=en_us textwidth=79
augroup END
" }}}

" Style - Comment Formatting (?)
" {{{
augroup fuckingcomment
    autocmd!
    autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
augroup END
" }}}

" Nice hack for project filenames
" {{{
augroup relativize
    autocmd!
    autocmd FileReadPost,BufReadPost,BufNewFile * lcd .
augroup END
" }}}

" For Terminal
" {{{
if has('terminal')
    augroup terminalsettings
        autocmd!
        autocmd TerminalWinOpen * setlocal nonu
        autocmd TerminalWinOpen * call TrailingWhiteUnstylish()
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
vnoremap q <nop>
vnoremap Q <nop>
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

nnoremap gf <c-w><c-f>

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

nnoremap <leader>sl :tabe $MYVIMRC<cr>
nnoremap <leader>ss :execute 'tabe' my_settings_file<cr>
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
nnoremap <leader>qn :cnext<cr>
nnoremap <leader>qp :cprev<cr>
nnoremap <leader>rg :Rg -w <c-r><c-w><cr>

nnoremap <leader>fy :let @"=expand('%')<cr>
nnoremap <leader>fc :let @+=expand('%')<cr>
" }}}

" Mappings for Plugins
" {{{
nnoremap <leader>N :NnnPicker %:p:h<CR>
nnoremap <leader>n :NnnPicker<CR>
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>] :YcmCompleter GoTo<cr>
nnoremap <leader>yt :YcmCompleter GetType<cr>
nnoremap <leader>ye :YcmShowDetailedDiagnostic<cr>
nnoremap <leader>yh :YcmCompleter GetDoc<cr>
nnoremap <leader>yf :YcmCompleter FixIt<cr>:ccl<cr>
nnoremap <leader>yd :YcmDiags<cr>
nnoremap <leader>yp <plug>(YCMHover)
nnoremap <leader>yr :YcmCompleter GoToReferences<cr>
" nnoremap <leader>sd :SyntasticSetLoclist<cr>:lopen<cr>
" nnoremap <leader>sc :w<cr>:SyntasticCheck<cr>
" nnoremap <leader>sr :SyntasticReset<cr>
nnoremap <leader>sd :ALELint<cr>:lopen<cr>
nnoremap <leader>sr :ALEReset<cr>
nnoremap <leader>T :TagbarToggle<cr>
nnoremap <leader>g :Git<cr>
" }}}

" Abbreviations
" {{{
iabbrev rr return
iabbrev itt import
iabbrev miu µ
cabbrev w!! w !sudo tee > /dev/null %<cr>
cabbrev ddf %:h
cabbrev Pydoc term ++close python -m pydoc
cabbrev bsp sbuffer
cabbrev bvs vert sbuffer
cabbrev tabb tab sbuffer
" }}}

" Commands
" {{{
command! -nargs=* Pydebug tab term ++close pudb3 % <args>
" }}}
