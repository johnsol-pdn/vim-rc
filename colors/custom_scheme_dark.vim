hi clear

if exists("syntax_on")
    syntax reset
endif

set bg=dark
let color_name="custom_scheme_dark"

"=== Цвета псевдоинтерфейса ===
"Цвета линейки строк (та, что слева номера строк показыват)
hi Normal                                              ctermbg=None
hi LineNr                 cterm=NONE      ctermfg=241  ctermbg=NONE
hi CursorLineNr           cterm=bold      ctermfg=250  ctermbg=237
hi CursorLine             cterm=underline
hi ModeMsg                cterm=NONE      ctermfg=0    ctermbg=14
hi NonText                                ctermfg=215
hi Visual                                              ctermbg=241
hi ColorColumn                                         ctermbg=250

hi TabLine                cterm=None      ctermfg=252  ctermbg=236
hi TabLineSel             cterm=None      ctermfg=0    ctermbg=111
hi TabLineFill            cterm=None      ctermfg=None ctermbg=236

" для заголовков markdown
hi Title                  cterm=bold      ctermfg=171

"Цвета, используемые в статусной строке
hi StatusLineEditorMode                   ctermfg=0    ctermbg=111
hi StatusLineFileName     cterm=bold      ctermfg=252  ctermbg=NONE
hi StatusLineFileFormat                   ctermfg=247  ctermbg=NONE
hi StatusLineEmpty                                     ctermbg=NONE
hi StatusLineReadOnlyFlag                 ctermfg=247  ctermbg=NONE
hi StatusLineEncoding                     ctermfg=247  ctermbg=NONE
hi StatusLineFileType     cterm=bold      ctermfg=252  ctermbg=NONE
hi StatusLinePosition                     ctermfg=0    ctermbg=111

"Vim-Gitgutter цвета
hi SignColumn                                          ctermbg=NONE
hi GitGutterAdd           cterm=bold      ctermfg=2
hi GitGutterChange        cterm=bold      ctermfg=3
hi GitGutterDelete        cterm=bold      ctermfg=1

"=== Подсвтека синтаксиса ===
hi Comment                                ctermfg=248

hi Constant                               ctermfg=153
hi String                                 ctermfg=43
hi Number                                 ctermfg=50
hi Boolean                                ctermfg=197

hi Identifier             cterm=NONE      ctermfg=147
hi Function                               ctermfg=45

hi Statement                              ctermfg=171

hi PreProc                                ctermfg=47
hi Include                cterm=bold      ctermfg=47

hi Type                                   ctermfg=203

hi Delimiter                              ctermfg=171

hi Todo                   cterm=bold      ctermfg=0    ctermbg=186
hi Error                                               ctermbg=197
