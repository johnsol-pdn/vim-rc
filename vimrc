set encoding=utf8

"Включает колонку нумерации строк
set number
set numberwidth=4

set laststatus=2

set statusline=%#StatusLineWhite#\ %n:\ %f\ %r\ %#StatusLineCyan#\ %{&ff}\ %#StatusLineBlack#%=%#StatusLineCyan#\ %l:%c\ 
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

"Кеймапы для запуска Python скриптов
autocmd BufRead *.py nnoremap <F5> :!python %<CR>
autocmd BufRead *.py nnoremap <F6> :!sudo python %<CR>
autocmd BufRead *.py nnoremap <F9> :!pep8 --max-line-length=230 %<CR>

"Кеймапы запуска Bash скриптов
autocmd BufRead *.sh nnoremap <F5> :!bash %<CR>

"Кеймапы обновления темы vim
autocmd BufRead *.vim nnoremap <F5> :colorscheme test_scheme<CR>

"Установка своей цветовой схемы
colorscheme test_scheme
