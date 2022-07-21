hi clear

if exists("syntax_on")
    syntax reset
endif

set bg=dark
let color_name="custom_scheme_dark"

"=== Цвета псевдоинтерфейса ===
"Цвета линейки строк (та, что слева номера строк показыват)
hi Normal                                              ctermbg=none
hi LineNr                 cterm=none      ctermfg=241  ctermbg=none
hi CursorLineNr           cterm=bold      ctermfg=250  ctermbg=237
hi CursorLine             cterm=none                   ctermbg=234
hi Folded                 cterm=none      ctermfg=93   ctermbg=none
hi ModeMsg                cterm=none      ctermfg=0    ctermbg=14
hi NonText                                ctermfg=215
hi Visual                                              ctermbg=241
hi ColorColumn                                         ctermbg=235

hi TabLine                cterm=None      ctermfg=252  ctermbg=235
hi TabLineSel             cterm=None      ctermfg=0    ctermbg=245
hi TabLineFill            cterm=None      ctermfg=None ctermbg=235

hi StatusLine             cterm=None      ctermfg=246  ctermbg=234
hi WildMenu               cterm=None      ctermfg=0    ctermbg=246

"Цвета, используемые в статусной строке
hi StatusLineEditorMode                   ctermfg=0    ctermbg=245
hi StatusLineBranchName                   ctermfg=107  ctermbg=235
hi StatusLineFileFormat                   ctermfg=247  ctermbg=235
hi StatusLineEmpty                                     ctermbg=235
hi StatusLineReadOnlyFlag                 ctermfg=247  ctermbg=235
hi StatusLineEncoding                     ctermfg=247  ctermbg=235
hi StatusLineFiletype                     ctermfg=0    ctermbg=245

"=== Подсвтека синтаксиса ===
" для заголовков markdown
hi Title                  cterm=bold      ctermfg=189

hi Comment                                ctermfg=240

hi Constant                               ctermfg=153
hi String                                 ctermfg=121
hi Number                                 ctermfg=50
hi Boolean                                ctermfg=215

hi Identifier             cterm=none      ctermfg=147
hi Function                               ctermfg=153

hi Statement                              ctermfg=189

hi PreProc                                ctermfg=159
hi Include                cterm=bold      ctermfg=159

hi Type                                   ctermfg=223

hi Delimiter                              ctermfg=189

hi Special                                ctermfg=222

hi Todo                   cterm=bold      ctermfg=0    ctermbg=186
hi Error                                               ctermbg=197
