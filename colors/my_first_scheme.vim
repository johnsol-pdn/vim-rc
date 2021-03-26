hi clear

if exists("syntax_on")
    syntax reset
endif


set bg=dark
let color_name="my_first_vim_theme"

"=== Цвета псевдоинтерфейса ===
"Цвета линейки строк (та, что слева номера строк показыват)
hi LineNr          ctermfg=250 ctermbg=234 cterm=NONE
hi CursorLineNr    ctermfg=250 ctermbg=236 cterm=bold
hi CursorLine                              cterm=underline
hi ModeMsg         ctermfg=0   ctermbg=14  cterm=NONE
hi NonText         ctermfg=215
hi Visual                      ctermbg=241

hi StatusLineWhite ctermfg=0   ctermbg=15 
hi StatusLineCyan  ctermfg=0   ctermbg=14
hi StatusLineClear                         cterm=NONE

"=== Подсвтека синтаксиса ===
hi Comment         ctermfg=248
hi Constant        ctermfg=105
hi Identifier      ctermfg=111
hi Statement       ctermfg=204             cterm=bold
hi PreProc         ctermfg=41
hi Type            ctermfg=79
