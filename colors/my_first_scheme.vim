hi clear

if exists("syntax_on")
    syntax reset
endif

set bg=dark
let color_name="my_first_vim_theme"

"=== Цвета псевдоинтерфейса ===
"Цвета линейки строк (та, что слева номера строк показыват)
hi LineNr                 ctermfg=241 ctermbg=NONE cterm=NONE
hi CursorLineNr           ctermfg=250 ctermbg=237  cterm=bold
hi CursorLine                                      cterm=underline
hi ModeMsg                ctermfg=0   ctermbg=14   cterm=NONE
hi NonText                ctermfg=215
hi Visual                             ctermbg=241

"Цвета, используемые в статусной строке
hi StatusLineEditorMode   ctermfg=0   ctermbg=41
hi StatusLineFileName     ctermfg=247 ctermbg=236
hi StatusLineFileFormat   ctermfg=247 ctermbg=236
hi StatusLineEmpty                    ctermbg=236
hi StatusLineReadOnlyFlag ctermfg=247 ctermbg=236
hi StatusLineEncoding     ctermfg=247 ctermbg=236
hi StatusLineFileType     ctermfg=247 ctermbg=236
hi StatusLinePosition     ctermfg=0   ctermbg=41

"Vim-Gitgutter цвета
hi SignColumn                         ctermbg=NONE
hi GitGutterAdd           ctermfg=2                cterm=bold
hi GitGutterChange        ctermfg=3                cterm=bold
hi GitGutterDelete        ctermfg=1                cterm=bold

"=== Подсвтека синтаксиса ===
hi Comment                ctermfg=248
hi Constant               ctermfg=156
hi Identifier             ctermfg=216
hi Statement              ctermfg=204              cterm=bold
hi PreProc                ctermfg=120              cterm=bold
hi Type                   ctermfg=152
hi Todo                   ctermfg=0   ctermbg=159  cterm=bold
hi Error                              ctermbg=197
