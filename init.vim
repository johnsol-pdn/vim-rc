function LessBehaviour()
    if (!&modifiable || &ro)
        set nonumber
        set nospell
        set laststatus=0
        set cmdheight=1
    endif
endfunction

"Функция получения текущего режима редактора
function GetMode()
    let l:editor_mode = mode()

    let l:editor_modes_list = [
        \ "NORMAL",
        \ "COMMAND",
        \ "INSERT",
        \ "VISUAL",
        \ "VISUAL-LINE",
        \ "VISUAL-BLOCK",
        \ "REPLACE"
        \ ]

    if l:editor_mode == "n"
        return l:editor_modes_list[0]

    elseif l:editor_mode == "c"
        return l:editor_modes_list[1]

    elseif l:editor_mode == "i"
        return l:editor_modes_list[2]

    elseif l:editor_mode == "v"
        return l:editor_modes_list[3]
    elseif l:editor_mode == "V"
        return l:editor_modes_list[4]
    elseif l:editor_mode =="\<C-v>"
        return l:editor_modes_list[5]

    elseif l:editor_mode == "R"
        return l:editor_modes_list[6]

    else
        echo l:editor_mode
        return "?MODE"
    endif
endfunction

"Менеджер плагинов: Vim-Plug
"Подключение плагинов (для установки - :PlugInstal)
call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
call plug#end()

"Включаем подсветку синтаксиса
syntax on

set nocompatible
" Включение поддержки мыши
"set mouse=a

set encoding=utf8

set showtabline=0 "Убираем таблайн сверху

"Запрещаем менять вид курсора
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
set guicursor=

"Включает колонку нумерации строк
set number
set numberwidth=4
set cursorline

"Не показывать режим (он отображается в нашей строке статуса)
set noshowmode

"Настройки строки статуса
set laststatus=2

set statusline=
set statusline+=%#StatusLineEditorMode#\ %{GetMode()}\ 
set statusline+=%#StatusLineFileName#\ %f\ 
set statusline+=%#StatusLineFileFormat#\ %{&ff}\ 
set statusline+=%#StatusLineEmpty#%=
set statusline+=%#StatusLineReadOnlyFlag#\ %r\ 
set statusline+=%#StatusLineEncoding#\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=%#StatusLineFileType#\ %{&ft}\ 
set statusline+=%#StatusLinePosition#\ %p%%\ %l:%c\ 

"Выключает перенос строк
set nowrap

"Автоподстановка табов
set smarttab
"Замена табов на пробелы
set expandtab
"Установка отступа на 4 символа
set tabstop=4
set shiftwidth=4
set softtabstop=4

"Автодополнение отступов
set autoindent
set smartindent

"Заставляем себя юзать только hjkl
nnoremap <Left> :echoe "Use H pls"<CR>
nnoremap <Right> :echoe "Use L pls"<CR>
nnoremap <Up> :echoe "Use K pls"<CR>
nnoremap <Down> :echoe "Use J pls"<CR>

"Не тянись до ESC
imap jk <ESC>

"Кеймапы для запуска Python скриптов
autocmd VimEnter *.py nmap <F5> :12split term://python3 %<CR>
autocmd VimEnter *.py nmap <F9> :10split term://pylint %<CR>

"Кеймапы запуска Bash скриптов
autocmd VimEnter *.sh nnoremap <F5> :!bash %<CR>

"Перенос сток для .md файлов
autocmd VimEnter *.md set wrap

"Кеймапы обновления темы vim
autocmd VimEnter *.vim nnoremap <F5> :source %<CR>

"Установка своей цветовой схемы
colorscheme custom_scheme_dark

"Довольно удобная реализация поддержки русских букв (говорят официальная)
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"Автоматическое включение LessBehaviour
augroup ReadOnly
    au!
    au VimEnter * :call LessBehaviour()
augroup END
