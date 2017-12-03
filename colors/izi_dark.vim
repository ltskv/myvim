" izi colorscheme

highlight clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "izi"

hi Directory    ctermfg=33 ctermbg=0 guifg=#0000ff guibg=#ffffff
"hi ErrorMsg     guibg=#ee2c2c guifg=White
"hi FoldColumn   guibg=Grey guifg=#00008B
hi Folded       cterm=bold ctermfg=8 ctermbg=0 gui=bold guifg=#808080 guibg=#ffffff
hi IncSearch    cterm=reverse gui=reverse
"hi ModeMsg      gui=bold
"hi MoreMsg      gui=bold guifg=#2E8B57
hi NonText      cterm=NONE ctermfg=8 ctermbg=0 gui=NONE guifg=#c0c0c0 guibg=#ffffff
hi Pmenu        cterm=NONE ctermfg=15 ctermbg=238 gui=NONE guifg=#000000 guibg=#e4e4e4
"hi PmenuSbar    guibg=Grey
hi PmenuSel     cterm=NONE ctermfg=15 ctermbg=18 gui=NONE guifg=#000000 guibg=#afffff
"hi PmenuThumb   gui=reverse
"hi Question     gui=bold guifg=Chartreuse4
hi SignColumn   cterm=NONE ctermbg=0 gui=NONE guibg=#ffffff
"hi SpecialKey   guifg=Blue
"hi SpellBad     guisp=#ee2c2c gui=undercurl
"hi SpellCap     guisp=Blue gui=undercurl
"hi SpellLocal   guisp=#4A708B gui=undercurl
"hi SpellRare    guisp=#ff00ff gui=undercurl
hi TabLine      cterm=NONE ctermbg=8 ctermfg=15 gui=NONE guibg=#c0c0c0
hi TabLineFill  cterm=NONE ctermbg=8 gui=NONE guibg=#c0c0c0
hi TabLineSel   cterm=bold ctermfg=15 ctermbg=0 gui=bold guifg=#000000 guibg=#ffffff
hi StatusLine gui=bold guibg=#c0c0c0 guifg=#000000 cterm=bold ctermbg=240 ctermfg=15
hi StatusLineNc gui=NONE guibg=#c0c0c0 guifg=#808080 cterm=NONE ctermbg=240 ctermfg=7

hi Title        cterm=bold ctermfg=15 gui=bold guifg=#000000
hi VertSplit    cterm=bold ctermfg=15 ctermbg=0 gui=bold guifg=#000000 guibg=#ffffff
hi Visual       cterm=NONE ctermbg=18 gui=none guibg=#afffff
"hi WarningMsg   guifg=#ee2c2c

hi Error         cterm=bold ctermfg=9 ctermbg=0 gui=bold guifg=#ff0000 guibg=#ffffff
hi SyntasticError   cterm=bold ctermfg=9 ctermbg=0 gui=bold guifg=#ff0000 guibg=#ffffff
hi SyntasticWarning cterm=underline gui=undercurl guisp=#ffaf00
hi Unstylish cterm=NONE ctermbg=52 gui=NONE guibg=#ffc0c0 guifg=#000000
hi def link TrailingWhite Unstylish
hi Identifier    cterm=NONE ctermfg=14 ctermbg=NONE gui=NONE guifg=#00afaf guibg=#ffffff
"hi Ignore       gui=NONE guifg=bg guibg=NONE
hi PreProc      cterm=NONE ctermfg=3 ctermbg=0 gui=NONE guifg=#875f00 guibg=#ffffff
hi Special      cterm=NONE ctermfg=15 ctermbg=0 gui=NONE guifg=#000000 guibg=#ffffff
hi SpecialChar  cterm=NONE ctermfg=9 ctermbg=0 gui=NONE guifg=#ff0000 guibg=#ffffff
hi String       cterm=NONE ctermfg=1 ctermbg=0 gui=NONE guifg=#c00000 guibg=#ffffff
hi Underlined   cterm=underline ctermfg=12 ctermbg=0 gui=underline guifg=#0000ff guibg=#ffffff

"hi Boolean      cterm=bold
hi Comment      cterm=NONE ctermfg=2 ctermbg=0 gui=NONE guifg=#00c000 guibg=#ffffff
hi Constant     cterm=NONE ctermfg=33 ctermbg=0 gui=NONE guifg=#0000c0 guibg=#ffffff
hi Cursor       cterm=NONE ctermbg=8 gui=NONE guifg=NONE guibg=#c0c0c0
hi CursorColumn ctermbg=3 guibg=#c0c0c0
"hi CursorIM     guibg=fg guifg=bg
hi CursorLine   cterm=bold ctermbg=240 gui=bold guibg=#c0c0c0
hi LineNr       cterm=NONE ctermfg=8 ctermbg=0 gui=NONE guifg=#c0c0c0 guibg=#ffffff
hi MatchParen   cterm=NONE ctermfg=1 ctermbg=100 gui=NONE guifg=#ff0000 guibg=#ffff00
hi Search       cterm=NONE ctermbg=58 gui=NONE guibg=#ffff00
hi Statement    cterm=NONE ctermfg=13 ctermbg=0 gui=NONE guifg=#c000c0 guibg=#ffffff
hi Todo         cterm=bold ctermfg=214 ctermbg=0 gui=bold guifg=#ffaf00 guibg=#ffffff
hi Type         cterm=NONE ctermfg=111 ctermbg=0 gui=NONE guifg=#005fa7 guibg=#ffffff
"hi WildMenu     guibg=#c7CEEB guifg=Black
"hi lCursor      guibg=fg guifg=bg
hi Normal       cterm=NONE ctermfg=15 ctermbg=0 gui=NONE guifg=#000000 guibg=#ffffff

hi DiffAdd    ctermbg=22 guibg=#c0ffc0 gui=none cterm=none
hi DiffChange ctermbg=58 guibg=#ffffc0 gui=none cterm=none
hi DiffText   ctermbg=18 guibg=#afffff gui=none cterm=none
hi DiffDelete ctermbg=88 ctermfg=1 guibg=#ffc0c0 guifg=#800000 gui=none cterm=none

" vim: sw=2
