"Функция получения текущего режима редактора
function GetMode()
    let s:editor_mode = mode()

    let s:editor_modes_list = [
        \ "NORMAL", 
        \ "INSERT",
        \ "VISUAL",
        \ "VISUAL-LINE",
        \ "VISUAL-BLOCK",
        \ "REPLACE"
        \ ]

    if s:editor_mode == "n"
        return s:editor_modes_list[0]

    elseif s:editor_mode == "i"
        return s:editor_modes_list[1]

    elseif s:editor_mode == "v"
        return s:editor_modes_list[2]
    elseif s:editor_mode == "V"
        return s:editor_modes_list[3]
    elseif s:editor_mode =="\<C-v>"
        return s:editor_modes_list[4]

    elseif s:editor_mode == "R"
        return s:editor_modes_list[5]

    else
        return "?MODE"
    endif
endfunction

"Менеджер плагинов: Vim-Plug
"Подключение плагинов (для установки - :PlugInstal)
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'airblade/vim-gitgutter'
call plug#end()

"Включаем подсветку синтаксиса
syntax on

set nocompatible
" Включение поддержки мыши
"set mouse=a

set encoding=utf8

"Включает колонку нумерации строк
set number
set numberwidth=4
set cursorline

"Не показывать режим (он отображается в нашей строке статуса)
set noshowmode

"Настройки строки статуса
set laststatus=2

set statusline=
set statusline+=%#StatusLineCyan#\ %{GetMode()}\ 
set statusline+=%#StatusLineWhite#\ %f\ 
set statusline+=%#StatusLineGrey#\ %{&ff}\ 
set statusline+=%#StatusLineClear#%=
set statusline+=%r\ %y\ 
set statusline+=%#StatusLineWhite#\ %l:%c\ 
set statusline+=%#StatusLineCyan#\ %p%%\ 

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
nmap <C-n> :NERDTreeToggle<CR>

"Кеймапы для запуска Python скриптов
autocmd BufRead *.py nmap <F5> :!python3 %<CR>
autocmd BufRead *.py nmap <F6> :!sudo python3 %<CR>
autocmd BufRead *.py nmap <F9> :!pep8 --max-line-length=230 %<CR>

"Кеймапы запуска Bash скриптов
autocmd BufRead *.sh nnoremap <F5> :!bash %<CR>

"Перенос сток для .md файлов
autocmd BufRead *.md set wrap

"Кеймапы обновления темы vim
autocmd BufRead *.vim nnoremap <F5> :colorscheme my_first_scheme<CR>

"Установка своей цветовой схемы
colorscheme my_first_scheme
