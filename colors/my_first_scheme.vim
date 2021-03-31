hi clear

if exists("syntax_on")
    syntax reset
endif


set bg=dark
let color_name="my_first_vim_theme"

"=== Цвета псевдоинтерфейса ===
"Цвета линейки строк (та, что слева номера строк показыват)
hi LineNr               ctermfg=250 ctermbg=234  cterm=NONE
hi CursorLineNr         ctermfg=250 ctermbg=236  cterm=bold
hi CursorLine                                    cterm=underline
hi ModeMsg              ctermfg=0   ctermbg=14   cterm=NONE
hi NonText              ctermfg=215
hi Visual                           ctermbg=241

"Цвета, используемые в статусной строке
hi StatusLineEditorMode ctermfg=15  ctermbg=57   cterm=bold
hi StatusLineGitBranch  ctermfg=15  ctermbg=63   cterm=bold
hi StatusLineFilePath   ctermfg=0   ctermbg=15
hi StatusLineFileFormat ctermfg=0   ctermbg=251
hi StatusLineEmpty                  ctermbg=239
hi StatusLineReadOnlyFlag ctermfg=0 ctermbg=239
hi StatusLineEncoding   ctermfg=0   ctermbg=251
hi StatusLineFileType   ctermfg=0   ctermbg=15
hi StatusLinePosition   ctermfg=15  ctermbg=57
hi StatusLinePercentPos ctermfg=15  ctermbg=63

"Vim-Gitgutter цвета
hi SignColumn                       ctermbg=NONE
hi GitGutterAdd         ctermfg=2                cterm=bold
hi GitGutterChange      ctermfg=3                cterm=bold
hi GitGutterDelete      ctermfg=1                cterm=bold

"=== Подсвтека синтаксиса ===
hi Comment              ctermfg=248
hi Constant             ctermfg=105
hi Identifier           ctermfg=111
hi Statement            ctermfg=204              cterm=bold
hi PreProc              ctermfg=41
hi Type                 ctermfg=79
