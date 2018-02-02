setlocal foldmethod=marker foldlevel=0
nnoremap <buffer> <localleader>c mcI"<space><esc>`c:delm c<cr>
vnoremap <buffer> <localleader>c <esc>`>o"}}}<esc>`<O"{{{<esc>
nnoremap <buffer> <localleader>xb
            \ mx?^"{{{<cr>dd/^"}}}<cr>dd`x:noh<cr>:delm x<cr>
nnoremap <buffer> <localleader>xc mx?"<cr>xx`x:noh<cr>:delm x<cr>
