" === Общие настройки ===
"Включаем подсветку синтаксиса
syntax on

set nocompatible

set encoding=utf8

set showtabline=2
set tabline=%!justmyrc#TabLine()

"Включает колонку нумерации строк
set numberwidth=4
"Показывает относительные значения (от текущей строки)
set relativenumber
"Отображает номер у текущей строки в комбинации с относительной позицией
set number
set cursorline

"Подсветка найденных фраз
set hlsearch

"Подсветка фраз при наборе текста для поиска
set incsearch

"Включение подсказок команд
set wildmenu
"Игнорировать расширения в подсказках
set wildignore=*.o,*.obj,*.pyc,__pycache__

"Не показывать режим (он отображается в кастомной строке статуса)
set noshowmode

"Читать modeline при запуске
set modeline

"Настройки строки статуса
set laststatus=2

set statusline=
set statusline+=%#StatusLineEditorMode#\ %{justmyrc#GetMode()}\ 
set statusline+=%#StatusLineBranchName#\ %{g:git_branch}\ 
set statusline+=%#StatusLineFileFormat#\ %{&ff}\ 
set statusline+=%#StatusLineEmpty#%=
set statusline+=%#StatusLineReadOnlyFlag#\ %r
set statusline+=%#StatusLineEncoding#\ %{&fileencoding?&fileencoding:&encoding}\ 
set statusline+=%#StatusLineRuler#\ %v:%l\ (%p%%)\ 
set statusline+=%#StatusLineFileType#\ %{&ft}\ 

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

set autoread

"Фикс Backspace после обновления до Vim9
set backspace=indent,eol,start

"Отступ в количестве строк (не включая ту, на которой курсор) при прокрутке (очень годная вещь)
set scrolloff=2

"Параметры сохранения позиции курсора в файлах
set viminfo='10,\"100,:20,%,n~/.viminfo

"Не тянись до ESC
imap jk <ESC>

"Сброс подсветки поиска в нормальном режиме
nmap <space> :noh<CR>

augroup GitBranch
    autocmd!
    autocmd BufEnter,ShellCmdPost,FileChangedShellPost * call justmyrc#GetBranchName(expand("%"))
    autocmd BufLeave * let g:git_branch = ""
augroup END

"Автонастройка для определенных типов файлов
augroup Python
    autocmd!
    autocmd BufEnter *.py compiler pycodestyle
    "Кеймапы для запуска Python скриптов
    autocmd BufEnter *.py nmap <F5> :!python3 %<CR>
augroup END

augroup Markdown
    autocmd!
    autocmd BufEnter *.md set wrap
    autocmd BufEnter *.md set colorcolumn=80
    autocmd BufLeave *.md set colorcolumn=0
    autocmd BufEnter *.md set textwidth=80
    autocmd BufLeave *.md set textwidth=0
augroup END

augroup Clang
    autocmd!
    "Кеймап для GCC
    autocmd BufEnter *.c nmap <F5> :make<CR>
augroup END

augroup Nftables
    autocmd!
    "Автообнаружение файла nftables
    autocmd BufRead,BufNewFile nftables.conf,*.nft,*/etc/nftables/* set filetype=nftables
augroup END

augroup Bash
    autocmd!
    "Кеймапы запуска Bash скриптов
    autocmd BufEnter *.sh nmap <F5> :!bash %<CR>
augroup END

augroup Vim
    autocmd!
    "Кеймапы обновления темы vim
    autocmd BufEnter vimrc nnoremap <F5> :source %<CR>
    autocmd BufEnter *.vim nnoremap <F5> :source %<CR>
augroup END

augroup vimStartup
    autocmd!

    "Возвращать курсор на последнюю позицию в этом файле
    " NOTE: взято из оригинального конфига Vim ($VIMRUNTIME/defaults)
    autocmd BufReadPost *
      \ let line = line("'\"")
      \ | if line >= 1 && line <= line("$") && &filetype !~# 'commit'
      \      && index(['xxd', 'gitrebase'], &filetype) == -1
      \ |   execute "normal! g`\""
      \ | endif
augroup END

"Установка своей цветовой схемы
colorscheme catnet_chreamy

"Довольно удобная реализация поддержки русских букв (говорят официальная)
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"Автоматическое включение LessBehaviour
augroup ReadOnly
    au!
    au VimEnter * :call justmyrc#LessBehaviour()
augroup END
