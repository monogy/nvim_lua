
vim.cmd([[

iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

" 使用F2键调用函数AddAuthor
map <F2> :call AddAuthor()<cr>

autocmd BufNewFile *.sh,*.py,*.c,*.cpp,*.h call AddAuthor()
autocmd BufNewFile *.h call Loading_Message_H()
autocmd BufNewFile *.cpp call Loading_Message_Cpp()
autocmd BufNewFile *.n call Loading_Message_Note()

function AddAuthor()
  let n=1
  while n < 8
    let line = getline(n)
    if line=~'[#]*\s*\*\s*\S*Last\s*modified\s*:\s*\S*.*$'
      call UpdateTitle()
      return
    endif
    let n = n + 1
  endwhile
  call AddTitleForT()
endfunction

" 文件头信息写入--用于#、/**/注释的脚本
function AddTitleForT()
  if &filetype == 'sh'
    call append(0,"#!/bin/bash")
  elseif &filetype == 'python'
    call append(0,"#!/usr/bin/env python")
  else
    call append(0,"/*")
  endif
  call append(1,"# _*_ coding:utf-8 _*_")
  call append(2,"# **********************************************************")
  call append(3,"# * Author        : 李阳")
  call append(4,"# * Email         : monogy@163.com")
  call append(5,"# * Create time   : ".strftime("%Y-%m-%d %H:%M"))
  call append(6,"# * Last modified : ".strftime("%Y-%m-%d %H:%M"))
  call append(7,"# * Filename      : ".expand("%:t"))
  call append(8,"# * Description   :")
  call append(9,"# *********************************************************/")
  call append(10,"")
  echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endfunction

function UpdateTitle()
  execute '/* Last modified\s* :/s@:.*$@\=strftime(": %Y-%m-%d %H:%M")@'
  execute '/* Filename      :/s@:.*$@\=": ".expand("%:t")@'
  echohl WarningMsg | echo "Successful in updating the copyright." | echohl None
endfunction

" .h文件自动添加
function Loading_Message_H()
  let fileName = expand("%:t:r")
  call append(11, "#pragma once")
  call append(12, "")
  call append(13, "class ".fileName)
  call append(14,"{")
  call append(15, "  public:")
  call append(16, "")
  call append(17, "};")
  call append(18,"")
  echohl WarningMsg | echo "Successful in adding the .h header." | echohl None
endfunction

" .cpp文件自动添加
function Loading_Message_Cpp()
  let fileName = expand("%:t:r")
  call append(11, '#include "'.fileName.'.h"')
  call append(12, '#include <iostream>')
  call append(13, '#include <map>')
  call append(14, '#include <set>')
  call append(15, '#include <vector>')
  call append(16, '#include <queue>')
  call append(17, '#include <stack>')
  call append(18, '#include <string>')
  call append(19, '#include <algorithm>')
  call append(20, '#include <string>')
  call append(21, 'using namespace std;')
  call append(22, "")
  call append(23, "int main (){")
  call append(24, " ")
  call append(25, " return 0;")
  call append(26, "}")
  call append(27, "")
  echohl WarningMsg | echo "Successful in adding the .cpp header." | echohl None
endfunction

" .n文件自动添加
function Loading_Message_Note()
  call append(0,"# _*_ coding:utf-8 _*_")
  call append(1,"# **********************************************************")
  call append(2,"# * Author        : 李阳")
  call append(3,"# * Email         : monogy@163.com")
  call append(4,"# * Create time   : ".strftime("%Y-%m-%d %H:%M"))
  call append(5,"# * Last modified : ".strftime("%Y-%m-%d %H:%M"))
  call append(6,"# * Filename      : ".expand("%:t"))
  call append(7,"# * Description   : ".expand("日记"))
  call append(8,"# *********************************************************/")
  call append(9,"")
  echohl WarningMsg | echo "Successful in adding the .cpp header." | echohl None
endfunction



]])
