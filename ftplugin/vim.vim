setlocal foldmethod=marker foldlevel=0
nnoremap <buffer> <leader>c mcI"<space><esc>`c:delm c<cr>
vnoremap <buffer> <leader>c <esc>`>o"}}}<esc>`<O"{{{<esc>
nnoremap <buffer> <leader>xb
            \ mx?^"{{{<cr>dd/^"}}}<cr>dd`x:noh<cr>:delm x<cr>
nnoremap <buffer> <leader>xc mx?"<cr>xx`x:noh<cr>:delm x<cr>
