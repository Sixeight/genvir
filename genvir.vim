
command! Genvir :call <SID>Genvir()

function! s:Genvir()
  let name = input('command name? > ')
  let func = eval("input('Function name? > ', '" . name . "')")
  call append(0, ["",
    \  "command! " . name . " :call <SID>" . func . "()",
    \  "",
    \  "function! s:" . func . "()",
    \  "  ruby {ruby method name}",
    \  "endfunction",
    \  "",
    \  "ruby << EOF",
    \  "",
    \  "EOF",
    \  ""])
  call cursor(9, 1)
  set ft=ruby
endfunction

