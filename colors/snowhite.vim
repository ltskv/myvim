" snowhite colorscheme

highlight clear
set t_Co=256
if exists("syntax_on")
    syntax reset
endif

let colors_name = "snowhite"

" My custom stuff
" {{{
hi StatusLineNormal cterm=bold ctermbg=251 ctermfg=16 gui=bold guibg=#c6c6c6 guifg=#000000
hi StatusLineInsert cterm=bold ctermbg=108 ctermfg=16 gui=bold guibg=#87af87 guifg=#000000

hi Unstylish cterm=NONE ctermbg=224 gui=NONE guibg=#ffd7d7
hi def link TrailingWhite Normal
" }}}

hi Directory                   ctermfg=27  ctermbg=NONE          guifg=#005fff guibg=#ffffff
hi Folded           cterm=bold ctermfg=244 ctermbg=NONE gui=bold guifg=#808080 guibg=#ffffff
hi NonText          cterm=NONE ctermfg=251 ctermbg=NONE gui=NONE guifg=#c6c6c6 guibg=#ffffff
hi Pmenu            cterm=NONE ctermfg=16  ctermbg=254  gui=NONE guifg=#000000 guibg=#e4e4e4
hi PmenuSel         cterm=NONE ctermfg=16  ctermbg=159  gui=NONE guifg=#000000 guibg=#afffff
hi SignColumn       cterm=NONE             ctermbg=NONE gui=NONE               guibg=#ffffff
hi TabLine          cterm=NONE             ctermbg=251  gui=NONE               guibg=#c6c6c6
hi TabLineFill      cterm=NONE             ctermbg=251  gui=NONE               guibg=#c6c6c6
hi TabLineSel       cterm=bold ctermfg=16  ctermbg=NONE gui=bold guifg=#000000 guibg=#ffffff
hi StatusLineNc     cterm=NONE ctermfg=244 ctermbg=251  gui=NONE guifg=#808080 guibg=#c6c6c6
hi StatusLineTerm   cterm=bold ctermfg=231 ctermbg=244  gui=bold guifg=#ffffff guibg=#808080
hi StatusLineTermNc cterm=NONE ctermfg=251 ctermbg=244  gui=NONE guifg=#c6c6c6 guibg=#808080
hi Title            cterm=bold ctermfg=16               gui=bold guifg=#000000
hi VertSplit        cterm=bold ctermfg=16  ctermbg=NONE gui=bold guifg=#000000 guibg=#ffffff
hi Visual           cterm=NONE             ctermbg=159  gui=NONE               guibg=#afffff

hi Error            cterm=bold ctermfg=196 ctermbg=NONE gui=bold guifg=#ff0000 guibg=#ffffff
hi Identifier       cterm=NONE ctermfg=17  ctermbg=NONE gui=NONE guifg=#00005f guibg=#ffffff
hi PreProc          cterm=NONE ctermfg=94  ctermbg=NONE gui=NONE guifg=#875f00 guibg=#ffffff
hi Special          cterm=NONE ctermfg=16  ctermbg=NONE gui=NONE guifg=#000000 guibg=#ffffff
hi SpecialChar      cterm=NONE ctermfg=196 ctermbg=NONE gui=NONE guifg=#ff0000 guibg=#ffffff
hi String           cterm=NONE ctermfg=124 ctermbg=NONE gui=NONE guifg=#af0000 guibg=#ffffff

hi Comment          cterm=NONE ctermfg=34  ctermbg=NONE gui=NONE guifg=#00af00 guibg=#ffffff
hi Constant         cterm=NONE ctermfg=21  ctermbg=NONE gui=NONE guifg=#0000ff guibg=#ffffff
hi Cursor           cterm=NONE             ctermbg=244  gui=NONE guifg=NONE    guibg=#c6c6c6
hi CursorColumn                            ctermbg=3                           guibg=#c6c6c6
hi CursorLine NONE
hi! link CursorLineNR Normal
hi LineNr           cterm=NONE ctermfg=251 ctermbg=NONE gui=NONE guifg=#c6c6c6 guibg=#ffffff
hi MatchParen       cterm=NONE ctermfg=196 ctermbg=226  gui=NONE guifg=#ff0000 guibg=#ffff00
hi Search           cterm=NONE             ctermbg=226  gui=NONE               guibg=#ffff00
hi Statement        cterm=NONE ctermfg=127 ctermbg=NONE gui=NONE guifg=#af00af guibg=#ffffff
hi Todo             cterm=bold ctermfg=214 ctermbg=NONE gui=bold guifg=#ffaf00 guibg=#ffffff
hi Type             cterm=NONE ctermfg=25  ctermbg=NONE gui=NONE guifg=#005faf guibg=#ffffff
hi Function         cterm=NONE ctermfg=37  ctermbg=NONE gui=NONE guifg=#00afaf guibg=#ffffff
hi Normal           cterm=NONE ctermfg=16  ctermbg=NONE gui=NONE guifg=#000000 guibg=#ffffff

hi DiffAdd          cterm=NONE             ctermbg=194  gui=NONE               guibg=#d7ffd7
hi DiffChange       cterm=NONE             ctermbg=230  gui=NONE               guibg=#ffffd7
hi DiffText         cterm=NONE             ctermbg=195  gui=NONE               guibg=#d7ffff
hi DiffDelete       cterm=NONE ctermfg=124 ctermbg=224  gui=NONE guifg=#af0000 guibg=#ffd7d7

hi IncSearch        cterm=reverse                           gui=reverse
hi Underlined       cterm=underline ctermfg=27 ctermbg=NONE gui=underline guifg=#005fff guibg=#ffffff

" Plugin stuff
" {{{
hi SyntasticError   cterm=bold ctermfg=196 ctermbg=NONE gui=bold guifg=#ff0000 guibg=#ffffff
hi SyntasticWarning cterm=underline gui=undercurl guisp=#ffaf00

hi! link ALEError SyntasticError
hi! link ALEWarning SyntasticWarning

hi! link diffAdded Comment
hi! link diffRemoved String

hi CustomDummy NONE
hi! link EasyMotionShade Dummy
hi EasyMotionTarget cterm=reverse gui=reverse

hi EasyMotionTarget2First cterm=reverse gui=reverse
hi EasyMotionTarget2Second cterm=reverse gui=reverse

hi EasyMotionMoveHL cterm=reverse gui=reverse
hi EasyMotionIncSearch cterm=reverse gui=reverse

hi! ALEVirtualTextError cterm=bold ctermfg=251 gui=bold guifg=#c6c6c6
hi! ALEVirtualTextWarning cterm=NONE ctermfg=251 gui=bold guifg=#c6c6c6
" }}}
