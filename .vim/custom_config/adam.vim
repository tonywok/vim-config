" happy folding
function! FoldText()
    let first = getline(v:foldstart)
    let last  = substitute(getline(v:foldend), '^\s\+', '', '')
    let total = v:foldend - v:foldstart
    return first.'  ('.total.' lines)  '.last
endfunction

set foldtext=FoldText()
set fillchars=fold:\ 

autocmd BufRead *.txt set ai formatoptions=tan

command! WriteRoom set nonumber fuoptions=background:Normal lines=40 columns=80 sidescrolloff=0 laststatus=0 noruler

"function! CDToDirectory()
"  let ft = exec('set ft')
"  echo ft
"  if ft == 'filetype=netrw'
"    echo 'HERE'
"  endif
"endfunction
"autocmd VimEnter * call CDToDirectory()

