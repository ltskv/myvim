" snowhite colorscheme

highlight clear
set t_Co=256
if exists("syntax_on")
    syntax reset
endif

let colors_name = "snowhite"

hi Directory    ctermfg=27 ctermbg=231 guifg=#005fff guibg=#ffffff
"hi ErrorMsg     guibg=#ee2c2c guifg=White
"hi FoldColumn   guibg=Grey guifg=#00008B
hi Folded       cterm=bold ctermfg=244 ctermbg=231 gui=bold guifg=#808080 guibg=#ffffff
hi IncSearch    cterm=reverse gui=reverse
"hi ModeMsg      gui=bold
"hi MoreMsg      gui=bold guifg=#2E8B57
hi NonText      cterm=NONE ctermfg=251 ctermbg=231 gui=NONE guifg=#c6c6c6 guibg=#ffffff
hi Pmenu        cterm=NONE ctermfg=16 ctermbg=254 gui=NONE guifg=#000000 guibg=#e4e4e4
"hi PmenuSbar    guibg=Grey
hi PmenuSel     cterm=NONE ctermfg=16 ctermbg=159 gui=NONE guifg=#000000 guibg=#afffff
"hi PmenuThumb   gui=reverse
"hi Question     gui=bold guifg=Chartreuse4
hi SignColumn   cterm=NONE ctermbg=231 gui=NONE guibg=#ffffff
"hi SpecialKey   guifg=Blue
"hi SpellBad     guisp=#ee2c2c gui=undercurl
"hi SpellCap     guisp=Blue gui=undercurl
"hi SpellLocal   guisp=#4A708B gui=undercurl
"hi SpellRare    guisp=#ff00ff gui=undercurl
hi TabLine      cterm=NONE ctermbg=251 gui=NONE guibg=#c6c6c6
hi TabLineFill  cterm=NONE ctermbg=251 gui=NONE guibg=#c6c6c6
hi TabLineSel   cterm=bold ctermfg=16 ctermbg=231 gui=bold guifg=#000000 guibg=#ffffff
hi StatusLineNormal gui=bold guibg=#c6c6c6 guifg=#000000 cterm=bold ctermbg=251 ctermfg=16
hi StatusLineInsert gui=bold guibg=#87af87 guifg=#000000 cterm=bold ctermbg=108 ctermfg=16
hi! link StatusLine StatusLineNormal
hi StatusLineNc gui=NONE guibg=#c6c6c6 guifg=#808080 cterm=NONE ctermbg=251 ctermfg=244
hi StatusLineTerm cterm=bold ctermfg=231 ctermbg=244 gui=bold guifg=#ffffff guibg=#808080
hi StatusLineTermNc cterm=NONE ctermfg=251 ctermbg=244 gui=NONE guifg=#c6c6c6 guibg=#808080
hi Title        cterm=bold ctermfg=16 gui=bold guifg=#000000
hi VertSplit    cterm=bold ctermfg=16 ctermbg=231 gui=bold guifg=#000000 guibg=#ffffff
hi Visual       cterm=NONE ctermbg=159 gui=none guibg=#afffff
"hi WarningMsg   guifg=#ee2c2c

hi Error         cterm=bold ctermfg=196 ctermbg=231 gui=bold guifg=#ff0000 guibg=#ffffff
hi SyntasticError   cterm=bold ctermfg=196 ctermbg=231 gui=bold guifg=#ff0000 guibg=#ffffff
hi SyntasticWarning cterm=underline gui=undercurl guisp=#ffaf00
hi Unstylish cterm=NONE ctermbg=224 gui=NONE guibg=#ffd7d7
hi def link TrailingWhite Unstylish
hi Identifier    cterm=NONE ctermfg=37 ctermbg=NONE gui=NONE guifg=#00afaf guibg=#ffffff
"hi Ignore       gui=NONE guifg=bg guibg=NONE
hi PreProc      cterm=NONE ctermfg=94 ctermbg=231 gui=NONE guifg=#875f00 guibg=#ffffff
hi Special      cterm=NONE ctermfg=16 ctermbg=231 gui=NONE guifg=#000000 guibg=#ffffff
hi SpecialChar  cterm=NONE ctermfg=196 ctermbg=231 gui=NONE guifg=#ff0000 guibg=#ffffff
hi String       cterm=NONE ctermfg=124 ctermbg=231 gui=NONE guifg=#af0000 guibg=#ffffff
hi Underlined   cterm=underline ctermfg=27 ctermbg=231 gui=underline guifg=#005fff guibg=#ffffff

"hi Boolean      cterm=bold
hi Comment      cterm=NONE ctermfg=34 ctermbg=231 gui=NONE guifg=#00af00 guibg=#ffffff
hi Constant     cterm=NONE ctermfg=20 ctermbg=231 gui=NONE guifg=#0000d7 guibg=#ffffff
hi Cursor       cterm=NONE ctermbg=244 gui=NONE guifg=NONE guibg=#c6c6c6
hi CursorColumn ctermbg=3 guibg=#c6c6c6
"hi CursorIM     guibg=fg guifg=bg
hi CursorLine   cterm=bold ctermbg=251 gui=bold guibg=#c6c6c6
hi LineNr       cterm=NONE ctermfg=251 ctermbg=231 gui=NONE guifg=#c6c6c6 guibg=#ffffff
hi MatchParen   cterm=NONE ctermfg=196 ctermbg=226 gui=NONE guifg=#ff0000 guibg=#ffff00
hi Search       cterm=NONE ctermbg=226 gui=NONE guibg=#ffff00
hi Statement    cterm=NONE ctermfg=127 ctermbg=231 gui=NONE guifg=#af00af guibg=#ffffff
hi Todo         cterm=bold ctermfg=214 ctermbg=231 gui=bold guifg=#ffaf00 guibg=#ffffff
hi Type         cterm=NONE ctermfg=24 ctermbg=231 gui=NONE guifg=#005f87 guibg=#ffffff
"hi WildMenu     guibg=#c7CEEB guifg=Black
"hi lCursor      guibg=fg guifg=bg
hi Normal       cterm=NONE ctermfg=16 ctermbg=231 gui=NONE guifg=#000000 guibg=#ffffff

hi DiffAdd    ctermbg=156 guibg=#afff87 gui=none cterm=none
hi DiffChange ctermbg=229 guibg=#ffffaf gui=none cterm=none
hi DiffText   ctermbg=159 guibg=#afffff gui=none cterm=none
hi DiffDelete ctermbg=210 ctermfg=124 guibg=#ff8787 guifg=#af0000 gui=none cterm=none
