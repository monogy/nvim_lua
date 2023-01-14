"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>c5l<CR>
autocmd Filetype markdown inoremap <buffer> ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,x ****** <++><Esc>F*hhi
autocmd Filetype markdown inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,d `` <++><Esc>F`i
" autocmd Filetype markdown inoremap <buffer> ,q > <Enter><Enter><++><Esc>2kA
autocmd Filetype markdown inoremap <buffer> ,q > 
autocmd Filetype markdown inoremap <buffer> ,,k :---:\|
autocmd Filetype markdown inoremap <buffer> ,,j :---\|
autocmd Filetype markdown inoremap <buffer> ,,l ---:\|
" autocmd Filetype markdown inoremap <buffer> ,. * 
autocmd Filetype markdown inoremap <buffer> ,. * 
autocmd Filetype markdown inoremap <buffer> ,<Space> &nbsp; 
" autocmd Filetype markdown inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap <buffer> ,c ```<++>```<Enter><++><Esc>2kA
autocmd Filetype markdown inoremap <buffer> ,mm - [ ] <Enter><++><ESC>kA
autocmd Filetype markdown inoremap <buffer> ,mn - [x] <Enter><++><ESC>kA
autocmd Filetype markdown inoremap <buffer> ,9 1. <Enter><++><ESC>kA
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,5 #####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,6 ######<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap <buffer> ,l --------<Enter>
autocmd Filetype markdown inoremap <buffer> ,t <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

