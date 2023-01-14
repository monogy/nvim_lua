
vim.cmd([[

noremap <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    :FloatermNew --autoclose=0 gcc % -o %< && ./%<
  elseif &filetype == 'cpp'
    :FloatermNew --autoclose=0 g++ -std=c++11 % -Wall -o %<
    " :res -15
    :term ./%<
    " elseif &filetype == 'java'
    " exec "!javac %"
    " exec "!time java %<"
  elseif &filetype == 'sh'
    :FloatermNew --autoclose=0 bash %
  elseif &filetype == 'python'
    :FloatermNew --autoclose=0 time python3 %
  elseif &filetype == 'html'
    silent! exec '!firefox % &'
  elseif &filetype == 'markdown'
    exec "MarkdownPreview"
  elseif &filetype == 'lua'
    set splitbelow
    :sp
    :term lua %
    " elseif &filetype == 'tex'
    " silent! exec "VimtexStop"
    " silent! exec "VimtexCompile"
    " elseif &filetype == 'dart'
    " exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
    " silent! exec "CocCommand flutter.dev.openDevLog"
    " elseif &filetype == 'javascript'
    " set splitbelow
    " :sp
    " :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
    " elseif &filetype == 'go'
    " set splitbelow
    " :sp
    " :term go run .
  endif
endfunc

]])


