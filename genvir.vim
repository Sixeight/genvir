
command! Genvir :call <SID>Genvir()

func! s:Genvir()
  let s:name = input('command name? > ')
  let s:func = eval("input('Function name? > ', '" . s:name . "')")
  let s:list = ["",
             \  "command! " . s:name . " :call <SID>" . s:func . "()",
             \  "",
             \  "function! s:" . s:func . "()",
             \  "  ruby {ruby method name}",
             \  "endfunction",
             \  "",
             \  "ruby << EOF",
             \  "",
             \  "EOF",
             \  ""]
  call append(0, s:list)
  call cursor(9, 1)
  set ft=ruby
endfunc

