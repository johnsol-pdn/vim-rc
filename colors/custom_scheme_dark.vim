hi clear

if exists("syntax_on")
    syntax reset
endif

set bg=dark
let color_name="custom_scheme_dark"

"=== Цвета псевдоинтерфейса ===
"Цвета линейки строк (та, что слева номера строк показыват)
hi Normal                                              ctermbg=none          guifg=#ffffff guibg=#131313
hi LineNr                 cterm=none      ctermfg=241  ctermbg=none gui=none guifg=#626262 guibg=#131313
hi CursorLineNr           cterm=bold      ctermfg=250  ctermbg=237  gui=bold guifg=#bcbcbc guibg=#3a3a3a
hi CursorLine             cterm=none                                gui=none               guibg=#131313
hi Folded                 cterm=none      ctermfg=93   ctermbg=none gui=none guifg=#8700ff guibg=#131313
hi ModeMsg                cterm=none      ctermfg=0    ctermbg=14   gui=none guifg=#000000 guibg=#00ffff
hi NonText                                ctermfg=215                        guifg=#ffaf5f
hi Visual                                              ctermbg=241                         guibg=#626262
hi ColorColumn                                         ctermbg=235                         guibg=#262626

hi TabLine                cterm=None      ctermfg=252  ctermbg=236  gui=none guifg=#d0d0d0 guibg=#303030
hi TabLineSel             cterm=None      ctermfg=0    ctermbg=208  gui=none guifg=#000000 guibg=#ff8700
hi TabLineFill            cterm=None      ctermfg=None ctermbg=236  gui=none guifg=#131313 guibg=#303030

hi WildMenu               cterm=None      ctermfg=0    ctermbg=83   gui=none guifg=#000000 guibg=#5fff5f

"Цвета, используемые в статусной строке
hi StatusLineEditorMode                   ctermfg=0    ctermbg=190           guifg=#000000 guibg=#d7ff00
hi StatusLineFileName     cterm=bold      ctermfg=252  ctermbg=236  gui=bold guifg=#d0d0d0 guibg=#303030
hi StatusLineFileFormat                   ctermfg=247  ctermbg=236           guifg=#9e9e9e guibg=#303030
hi StatusLineEmpty                                     ctermbg=236                         guibg=#303030
hi StatusLineReadOnlyFlag                 ctermfg=247  ctermbg=236           guifg=#9e9e9e guibg=#303030
hi StatusLineEncoding                     ctermfg=247  ctermbg=236           guifg=#9e9e9e guibg=#303030
hi StatusLineFileType     cterm=bold      ctermfg=252  ctermbg=236  gui=bold guifg=#d0d0d0 guibg=#303030
hi StatusLinePosition                     ctermfg=0    ctermbg=190           guifg=#000000 guibg=#d7ff00

"=== Подсвтека синтаксиса ===
" для заголовков markdown
hi Title                  cterm=bold      ctermfg=171               gui=bold guifg=#d75fd7

hi Comment                                ctermfg=248                        guifg=#a8a8a8

hi Constant                               ctermfg=153                        guifg=#afd7ff
hi String                                 ctermfg=43                         guifg=#00d7af
hi Number                                 ctermfg=50                         guifg=#00ffd7
hi Boolean                                ctermfg=197                        guifg=#ff005f

hi Identifier             cterm=none      ctermfg=147               gui=none guifg=#afafff
hi Function                               ctermfg=45                         guifg=#00d7ff

hi Statement                              ctermfg=171                        guifg=#d75fd7

hi PreProc                                ctermfg=47                         guifg=#00ff5f
hi Include                cterm=bold      ctermfg=47                gui=bold guifg=#00ff5f

hi Type                                   ctermfg=203                        guifg=#ff5f5f

hi Delimiter                              ctermfg=171                        guifg=#d75fd7

hi Todo                   cterm=bold      ctermfg=0    ctermbg=186  gui=bold guifg=#000000 guibg=#d7d75f
hi Error                                               ctermbg=197                         guibg=#ff005f
