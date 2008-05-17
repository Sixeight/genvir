
command! Genvir :call <SID>Genvir()

func! s:Genvir()
  let s:name = input('command name? > ')
  let s:funk = eval("input('Function name? > ', '" . s:name . "')")
  call eval("setline(2, 'command! " . s:name . " :call <SID>" . s:funk . "()')")
  call setline(3, '')
  call eval("setline(4, 'function! s:" . s:funk . "()')")
  call setline(5, '  ruby {ruby method name}')
  call setline(6, 'endfunction')
  call setline(7, '')
  call setline(8, 'ruby << EOF')
  call setline(9, '   ')
  call setline(10, 'EOF')
  call setline(11, '')
  call cursor(9, 3)
  set ft=vim
endfunc

