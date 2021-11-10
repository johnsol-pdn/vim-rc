if exists("current_compiller")
    finish
endif
let current_compiller = "pycodestyle"

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=pycodestyle\ %
CompilerSet errorformat=%f:%l:%c:\ %t%n\ %m
