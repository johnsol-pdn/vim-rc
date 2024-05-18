hi clear

if exists("syntax_on")
    syntax reset
endif

set bg=dark
let color_name="justmyscheme"

"=== Пользовательские цвета ===
hi justmyschemeMainColor          cterm=none      ctermfg=0    ctermbg=35
hi justmyschemeSecondColor                        ctermfg=255  ctermbg=29

"=== Основного интерфейса интерфейса ===
hi Normal                                                      ctermbg=none
"Цвета линейки строк (та, что слева номера строк показыват)
hi LineNr                         cterm=none      ctermfg=245  ctermbg=234
hi CursorLineNr                   cterm=bold      ctermfg=250  ctermbg=237
hi CursorLine                     cterm=none                   ctermbg=234
hi Folded                         cterm=none      ctermfg=93   ctermbg=none
hi ModeMsg                        cterm=none      ctermfg=0    ctermbg=120
hi NonText                                        ctermfg=215
hi Visual                                                      ctermbg=59
hi ColorColumn                                                 ctermbg=235
hi VertSplit                      cterm=none      ctermfg=120  ctermbg=none

"=== Строка вкладок ===
hi TabLine                        cterm=none      ctermfg=252  ctermbg=235
hi TabLineSel                     cterm=none      ctermfg=0    ctermbg=35
hi TabLineFill                    cterm=none      ctermfg=None ctermbg=235

hi WildMenu                       cterm=none      ctermfg=0    ctermbg=246

hi Pmenu                                          ctermfg=242  ctermbg=233
hi PmenuSel                                       ctermfg=7    ctermbg=235

" Статусная строка
hi StatusLine                     cterm=none      ctermfg=246  ctermbg=234
hi link StatusLineEditorMode justmyschemeMainColor
hi link StatusLineFileType   justmyschemeSecondColor
hi StatusLineFileFormat                           ctermfg=247  ctermbg=235
hi StatusLineEmpty                                             ctermbg=235
hi StatusLineReadOnlyFlag                         ctermfg=247  ctermbg=235
hi StatusLineEncoding                             ctermfg=247  ctermbg=235
hi link StatusLineRuler      justmyschemeSecondColor
hi link StatusLineBranchName justmyschemeMainColor

"=== Подсвтека синтаксиса ===
" Заголовки Markdown
hi Title                          cterm=bold      ctermfg=189
" Комментарии в языках программирования
hi Comment                                        ctermfg=60

hi Constant                                       ctermfg=153
hi String                                         ctermfg=229
hi Number                                         ctermfg=50
hi Boolean                                        ctermfg=215

hi Identifier                     cterm=none      ctermfg=147
hi Function                                       ctermfg=153

hi Statement                                      ctermfg=141

hi PreProc                                        ctermfg=162
hi Include                        cterm=bold      ctermfg=162

hi Type                                           ctermfg=212

hi Delimiter                                      ctermfg=189

hi Special                                        ctermfg=219

hi Todo                           cterm=bold      ctermfg=154  ctermbg=none
hi Error                                                       ctermbg=197

" === Встроенные плагины ===

" Netrw
hi netrwDir                       cterm=bold      ctermfg=220
hi netrwLink                      cterm=bold      ctermfg=99
hi netrwSymLink                   cterm=bold      ctermfg=99
hi netrwExe                       cterm=bold      ctermfg=2

" Diff
hi diffRemoved                                                 ctermbg=1
hi diffAdded                                                   ctermbg=2
hi diffChanged                                                 ctermbg=3
