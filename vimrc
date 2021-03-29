"Менеджер плагинов: Vim-Plug
"Подключение плагинов (для установки - :PlugInstal)
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
call plug#end()

"Включаем подсветку синтаксиса
syntax on

set nocompatible
set mouse=a

set encoding=utf8

"Включает колонку нумерации строк
set number
set numberwidth=4
set cursorline

set laststatus=2
set statusline=%#StatusLineWhite#\ %n:\ %f\ %r\ %#StatusLineCyan#\ %{&ff}\ %#StatusLineClear#%=%#StatusLineCyan#\ %l:%c\ 

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

"Кеймапы для NERDTree
nmap <F2> :NERDTreeToggle<CR>

"Кеймапы для запуска Python скриптов
autocmd BufRead *.py nmap <F5> :!python3 %<CR>
autocmd BufRead *.py nmap <F6> :!sudo python3 %<CR>
autocmd BufRead *.py nmap <F9> :!pep8 --max-line-length=230 %<CR>

"Кеймапы запуска Bash скриптов
autocmd BufRead *.sh nnoremap <F5> :!bash %<CR>

"Перенос сток для .md файлов
autocmd BufRead *.md set wrap

"Кеймапы обновления темы vim
autocmd BufRead *.vim nnoremap <F5> :colorscheme test_scheme<CR>

"Установка своей цветовой схемы
colorscheme test_scheme
