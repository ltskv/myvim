" pitchblack colorscheme

highlight clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "pitchblack"

"hi ErrorMsg     guibg=#ee2c2c guifg=White
"hi FoldColumn   guibg=Grey guifg=#00008B
hi Folded       cterm=bold ctermfg=8 ctermbg=0 gui=bold guifg=#808080 guibg=#000000
hi IncSearch    cterm=reverse gui=reverse
"hi ModeMsg      gui=bold
"hi MoreMsg      gui=bold guifg=#2E8B57
hi NonText      cterm=NONE ctermfg=8 ctermbg=0 gui=NONE guifg=#808080 guibg=#000000
hi Pmenu        cterm=NONE ctermfg=15 ctermbg=238 gui=NONE guifg=#eeeeee guibg=#444444
"hi PmenuSbar    guibg=Grey
hi PmenuSel     cterm=NONE ctermfg=15 ctermbg=18 gui=NONE guifg=#ffffff guibg=#000087
"hi PmenuThumb   gui=reverse
"hi Question     gui=bold guifg=Chartreuse4
hi SignColumn   cterm=NONE ctermbg=0 gui=NONE guibg=#000000
"hi SpecialKey   guifg=Blue
"hi SpellBad     guisp=#ee2c2c gui=undercurl
"hi SpellCap     guisp=Blue gui=undercurl
"hi SpellLocal   guisp=#4A708B gui=undercurl
"hi SpellRare    guisp=#ff00ff gui=undercurl
hi TabLine      cterm=NONE ctermbg=8 ctermfg=15 gui=NONE guibg=#808080
hi TabLineFill  cterm=NONE ctermbg=8 gui=NONE guibg=#808080
hi TabLineSel   cterm=bold ctermfg=15 ctermbg=0 gui=bold guifg=#ffffff guibg=#000000
hi StatusLine gui=bold guibg=#585858 guifg=#ffffff cterm=bold ctermbg=240 ctermfg=15
hi StatusLineNc gui=NONE guibg=#585858 guifg=#808080 cterm=NONE ctermbg=240 ctermfg=7

hi Title        cterm=bold ctermfg=15 gui=bold guifg=#ffffff
hi VertSplit    cterm=bold ctermfg=15 ctermbg=0 gui=bold guifg=#ffffff guibg=#000000
hi Visual       cterm=NONE ctermbg=18 gui=none guibg=#000080
"hi WarningMsg   guifg=#ee2c2c

hi Error         cterm=bold ctermfg=9 ctermbg=0 gui=bold guifg=#ff0000 guibg=#000000
hi SyntasticError   cterm=bold ctermfg=9 ctermbg=0 gui=bold guifg=#ff0000 guibg=#000000
hi SyntasticWarning cterm=underline gui=undercurl guisp=#ffaf00
hi Unstylish cterm=NONE ctermbg=52 gui=NONE guibg=#5f0000
hi def link TrailingWhite Unstylish
hi Identifier    cterm=NONE ctermfg=14 ctermbg=NONE gui=NONE guifg=#00c0c0 guibg=#000000
"hi Ignore       gui=NONE guifg=bg guibg=NONE
hi PreProc      cterm=NONE ctermfg=3 ctermbg=0 gui=NONE guifg=#c0c000 guibg=#000000
hi Special      cterm=NONE ctermfg=15 ctermbg=0 gui=NONE guifg=#ffffff guibg=#000000
hi SpecialChar  cterm=NONE ctermfg=1 ctermbg=0 gui=NONE guifg=#c00000 guibg=#000000
hi String       cterm=NONE ctermfg=1 ctermbg=0 gui=NONE guifg=#c00000 guibg=#000000
hi Underlined   cterm=underline ctermfg=12 ctermbg=0 gui=underline guifg=#0000ff guibg=#000000

"hi Boolean      cterm=bold
hi Comment      cterm=NONE ctermfg=28 ctermbg=0 gui=NONE guifg=#008000 guibg=#000000
hi Constant     cterm=NONE ctermfg=33 ctermbg=0 gui=NONE guifg=#0087ff guibg=#000000
hi! link Directory Constant
hi Cursor       cterm=NONE ctermbg=7 gui=reverse guibg=NONE guifg=NONE
hi CursorColumn ctermbg=3 guibg=#c0c0c0
"hi CursorIM     guibg=fg guifg=bg
hi CursorLine   cterm=bold ctermbg=240 gui=bold guibg=#444444
hi LineNr       cterm=NONE ctermfg=8 ctermbg=0 gui=NONE guifg=#808080 guibg=#000000
hi MatchParen   cterm=NONE ctermfg=1 ctermbg=3 gui=NONE guifg=#c00000 guibg=#c0c000
hi Search       cterm=NONE ctermfg=0 ctermbg=3 gui=NONE guifg=#000000 guibg=#c0c000
hi Statement    cterm=NONE ctermfg=13 ctermbg=0 gui=NONE guifg=#ff00ff guibg=#000000
hi Todo         cterm=bold ctermfg=214 ctermbg=0 gui=bold guifg=#ffaf00 guibg=#000000
hi Type         cterm=NONE ctermfg=111 ctermbg=0 gui=NONE guifg=#87afff guibg=#000000
"hi WildMenu     guibg=#c7CEEB guifg=Black
"hi lCursor      guibg=fg guifg=bg
hi Normal       cterm=NONE ctermfg=15 ctermbg=0 gui=NONE guifg=#eeeeee guibg=#000000

hi DiffAdd    ctermbg=22 guibg=#004400 gui=none cterm=none
hi DiffChange ctermfg=15 ctermbg=58 guibg=#333300 gui=none cterm=none
hi DiffText   ctermbg=18 guibg=#000080 gui=none cterm=none
hi DiffDelete ctermbg=88 ctermfg=1 guibg=#800000 guifg=#c00000 gui=none cterm=none

" vim: sw=2
