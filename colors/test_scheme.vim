hi clear

if exists("syntax_on")
    syntax reset
endif


set bg=dark
let color_name="test_theme"

"Цвета псевдоинтерфейса
hi LineNr          ctermfg=250 ctermbg=234 cterm=NONE
hi CursorLineNr    ctermfg=250 ctermbg=236 cterm=bold
hi CursorLine                  ctermbg=233 cterm=NONE
hi ModeMsg         ctermfg=0   ctermbg=14  cterm=NONE
hi NonText         ctermfg=215
hi Visual                      ctermbg=241

hi StatusLineWhite ctermfg=0   ctermbg=15 
hi StatusLineCyan  ctermfg=0   ctermbg=14
hi StatusLineGrey              ctermbg=235

"Подсвтека синтаксиса
hi Comment         ctermfg=248
hi Constant        ctermfg=105
hi Identifier      ctermfg=111
hi Statement       ctermfg=204             cterm=bold
hi PreProc         ctermfg=41
hi Type            ctermfg=79
