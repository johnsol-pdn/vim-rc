hi clear

if exists("syntax_on")
    syntax reset
endif


set bg=dark
let color_name="test_theme"

"Цвета псевдоинтерфейса
hi LineNr          ctermfg=145             cterm=bold
hi ModeMsg         ctermfg=0   ctermbg=14  cterm=NONE
hi NonText         ctermfg=201
hi Visual                      ctermbg=241

hi StatusLineWhite ctermfg=0   ctermbg=15 
hi StatusLineCyan  ctermfg=0   ctermbg=14
hi StatusLineBlack             ctermbg=0

"Подсвтека синтаксиса
hi Comment         ctermfg=248
hi Constant        ctermfg=105
hi Identifier      ctermfg=111
hi Statement       ctermfg=204             cterm=bold
hi PreProc         ctermfg=41
hi Type            ctermfg=79
