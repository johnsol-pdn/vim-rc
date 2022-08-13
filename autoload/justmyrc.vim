" === Пользовательские функции ===
"Функция получения текущего режима редактора
function justmyrc#GetMode()
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

function justmyrc#TabLine()
  let l:s = ''

  for l:i in range(tabpagenr('$'))
    " Выбираем, какую вкладку подсвечивать
    if l:i + 1 == tabpagenr()
      let l:s .= '%#TabLineSel#'
    else
      let l:s .= '%#TabLine#'
    endif

    "Указываем номер вкладки
    let l:s .= ' ' . (i + 1) . ':'

    "Получаем подпись (имя файла) из TabLabel
    let l:s .= ' %{justmyrc#TabLabel(' . (l:i + 1) . ')} '
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let l:s .= '%#TabLineFill#%T'

  return l:s
endfunction

function justmyrc#TabLabel(n)
  let l:buflist = tabpagebuflist(a:n)
  let l:winnr = tabpagewinnr(a:n)

  return bufname(buflist[winnr - 1])
endfunction

function justmyrc#LessBehaviour()
    if (!&modifiable || &ro)
        set nonumber
        set nospell
        set cmdheight=1
    endif
endfunction
