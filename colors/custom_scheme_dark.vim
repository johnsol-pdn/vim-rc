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
hi CursorLine             cterm=none
hi Folded                 cterm=none      ctermfg=93   ctermbg=none
hi ModeMsg                cterm=none      ctermfg=0    ctermbg=14
hi NonText                                ctermfg=215
hi Visual                                              ctermbg=241
hi ColorColumn                                         ctermbg=235

hi TabLine                cterm=None      ctermfg=252  ctermbg=236
hi TabLineSel             cterm=None      ctermfg=0    ctermbg=208
hi TabLineFill            cterm=None      ctermfg=None ctermbg=236

hi WildMenu               cterm=None      ctermfg=0    ctermbg=83

"Цвета, используемые в статусной строке
hi StatusLineEditorMode                   ctermfg=0    ctermbg=190
hi StatusLineFileName     cterm=bold      ctermfg=252  ctermbg=236
hi StatusLineFileFormat                   ctermfg=247  ctermbg=236
hi StatusLineEmpty                                     ctermbg=236
hi StatusLineReadOnlyFlag                 ctermfg=247  ctermbg=236
hi StatusLineEncoding                     ctermfg=247  ctermbg=236
hi StatusLineFileType     cterm=bold      ctermfg=252  ctermbg=236
hi StatusLinePosition                     ctermfg=0    ctermbg=190

"=== Подсвтека синтаксиса ===
" для заголовков markdown
hi Title                  cterm=bold      ctermfg=171

hi Comment                                ctermfg=248

hi Constant                               ctermfg=153
hi String                                 ctermfg=43
hi Number                                 ctermfg=50
hi Boolean                                ctermfg=197

hi Identifier             cterm=none      ctermfg=147
hi Function                               ctermfg=45

hi Statement                              ctermfg=171

hi PreProc                                ctermfg=47
hi Include                cterm=bold      ctermfg=47

hi Type                                   ctermfg=203

hi Delimiter                              ctermfg=171

hi Todo                   cterm=bold      ctermfg=0    ctermbg=186
hi Error                                               ctermbg=197
