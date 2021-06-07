hi clear

if exists("syntax_on")
    syntax reset
endif

set bg=dark
let color_name="my_first_vim_theme"

"=== Цвета псевдоинтерфейса ===
hi Normal                                                          guifg=#ffffff guibg=#111111
"Цвета линейки строк (та, что слева номера строк показыват)
hi LineNr                 ctermfg=241 ctermbg=NONE cterm=NONE      guifg=#bcbcbc guibg=#1c1c1c
hi CursorLineNr           ctermfg=250 ctermbg=237  cterm=bold      guifg=#bcbcbc guibg=#303030 gui=bold
hi CursorLine                                      cterm=underline               guibg=NONE    gui=underline
hi ModeMsg                ctermfg=0   ctermbg=14   cterm=NONE      guifg=#000000 guibg=#00ffff gui=NONE
hi NonText                ctermfg=215                              guifg=#ffaf5f
hi Visual                             ctermbg=241                                guibg=#626262

"Цвета, используемые в статусной строке
hi StatusLineEditorMode   ctermfg=0   ctermbg=41                   guifg=#ffffff guibg=#5f00ff gui=bold
hi StatusLineFilePath     ctermfg=0   ctermbg=15                   guifg=#000000 guibg=#ffffff
hi StatusLineFileFormat   ctermfg=0   ctermbg=251                  guifg=#000000 guibg=#c6c6c6
hi StatusLineEmpty                    ctermbg=239                                guibg=#4e4e4e
hi StatusLineReadOnlyFlag ctermfg=0   ctermbg=239                                guibg=#4e4e4e
hi StatusLineEncoding     ctermfg=0   ctermbg=251                  guifg=#000000 guibg=#c6c6c6
hi StatusLineFileType     ctermfg=0   ctermbg=15                   guifg=#000000 guibg=#ffffff
hi StatusLinePosition     ctermfg=0   ctermbg=41                   guifg=#ffffff guibg=#5f00ff

"Vim-Gitgutter цвета
hi SignColumn                         ctermbg=NONE                               guibg=NONE
hi GitGutterAdd           ctermfg=2                cterm=bold      guifg=#008000               gui=bold
hi GitGutterChange        ctermfg=3                cterm=bold      guifg=#808000               gui=bold
hi GitGutterDelete        ctermfg=1                cterm=bold      guifg=#800000               gui=bold

"=== Подсвтека синтаксиса ===
hi Comment                ctermfg=248                              guifg=#a8a8a8
hi Constant               ctermfg=156                              guifg=#8787ff
hi Identifier             ctermfg=216                              guifg=#87afff
hi Statement              ctermfg=204              cterm=bold      guifg=#ff5f87               gui=bold
hi PreProc                ctermfg=120              cterm=bold      guifg=#00d75f
hi Type                   ctermfg=152                              guifg=#5fd7af
hi Todo                   ctermfg=0   ctermbg=159  cterm=bold
hi Error                              ctermbg=197
