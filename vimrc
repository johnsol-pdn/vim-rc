" === Общие настройки ===
"Включаем подсветку синтаксиса
syntax on

set nocompatible

set encoding=utf8

set showtabline=2
set tabline=%!justmyrc#TabLine()

"Включает колонку нумерации строк
set number
set numberwidth=4
set relativenumber
set cursorline

"Подсветка найденных фраз
set hlsearch

"Включение подсказок команд
set wildmenu

"Не показывать режим (он отображается в кастомной строке статуса)
"set noshowmode

"Настройки строки статуса
set laststatus=2

set statusline=
set statusline+=%#StatusLineFileType#\ %{&ft}\ 
set statusline+=%#StatusLineFileFormat#\ %{&ff}\ 
set statusline+=%#StatusLineEmpty#%=
set statusline+=%#StatusLineReadOnlyFlag#\ %r
set statusline+=%#StatusLineEncoding#\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=%#StatusLineFileType#\ %v:%l\ (%p%%)\ 

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

"Фикс Backspace после обновления до Vim9
set backspace=indent,eol,start

"=== GVIM ===
"Настройка шрифта
set guifont=Monospace\ 12
"Отключение смены курсора в GVim
set guicursor+=a:block-Cursor
"Отключение меню, тулбара и полосы прокрутки
set guioptions-=m
set guioptions-=T
set guioptions-=r

"Не тянись до ESC
imap jk <ESC>

"Автонастройка для определенных типов файлов
autocmd BufEnter *.py set colorcolumn=80
autocmd BufLeave *.py set colorcolumn=0

autocmd BufEnter *.py compiler pycodestyle

autocmd BufEnter *.md set wrap
autocmd BufEnter *.md set colorcolumn=80
autocmd BufLeave *.md set colorcolumn=0
autocmd BufEnter *.md set textwidth=80
autocmd BufLeave *.md set textwidth=0

"Кеймапы для запуска Python скриптов
autocmd BufEnter *.py nmap <F5> :!python3 %<CR>
autocmd BufEnter *.py nmap <F9> :make<CR>

"Кеймапы запуска Bash скриптов
autocmd BufEnter *.sh nmap <F5> :!bash %<CR>

"Кеймапы обновления темы vim
autocmd BufEnter *.vim nnoremap <F5> :source %<CR>

"Установка своей цветовой схемы
colorscheme custom_scheme_dark

"Довольно удобная реализация поддержки русских букв (говорят официальная)
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"Автоматическое включение LessBehaviour
augroup ReadOnly
    au!
    au VimEnter * :call justmyrc#LessBehaviour()
augroup END
