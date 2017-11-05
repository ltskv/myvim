setlocal foldmethod=marker
nnoremap <buffer> <localleader>c mcI"<esc>`c:delm c<cr>
vnoremap <buffer> <localleader>f <esc>`>o"}}}<esc>`<O"{{{<esc>
nnoremap <buffer> <localleader>xf mx?"{{{<cr>dd/"}}}<cr>dd`x:noh<cr>:delm x<cr>
nnoremap <buffer> <localleader>xc mx^x`x
