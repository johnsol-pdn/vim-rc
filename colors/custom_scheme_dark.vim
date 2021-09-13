hi clear

if exists("syntax_on")
    syntax reset
endif

set bg=dark
let color_name="custom_scheme_dark"

"=== Цвета псевдоинтерфейса ===
"Цвета линейки строк (та, что слева номера строк показыват)
hi LineNr                 ctermfg=241 ctermbg=NONE cterm=NONE
hi CursorLineNr           ctermfg=250 ctermbg=237  cterm=bold
hi CursorLine                                      cterm=underline
hi ModeMsg                ctermfg=0   ctermbg=14   cterm=NONE
hi NonText                ctermfg=215
hi Visual                             ctermbg=241

"Цвета, используемые в статусной строке
hi StatusLineEditorMode   ctermfg=0   ctermbg=111
hi StatusLineFileName     ctermfg=252 ctermbg=NONE cterm=bold
hi StatusLineFileFormat   ctermfg=247 ctermbg=NONE
hi StatusLineEmpty                    ctermbg=NONE
hi StatusLineReadOnlyFlag ctermfg=247 ctermbg=NONE
hi StatusLineEncoding     ctermfg=247 ctermbg=NONE
hi StatusLineFileType     ctermfg=252 ctermbg=NONE cterm=bold
hi StatusLinePosition     ctermfg=0   ctermbg=111

"Vim-Gitgutter цвета
hi SignColumn                         ctermbg=NONE
hi GitGutterAdd           ctermfg=2                cterm=bold
hi GitGutterChange        ctermfg=3                cterm=bold
hi GitGutterDelete        ctermfg=1                cterm=bold

"=== Подсвтека синтаксиса ===
hi Comment                ctermfg=248
hi Constant               ctermfg=153
hi Identifier             ctermfg=147              cterm=NONE
hi Statement              ctermfg=203
hi PreProc                ctermfg=203
hi Type                   ctermfg=152
hi Todo                   ctermfg=0   ctermbg=159  cterm=bold
hi Error                              ctermbg=197
