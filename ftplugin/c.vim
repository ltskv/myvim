iabbrev <buffer> prn printf("\n");
nnoremap <buffer> <localleader>fb ][%
nnoremap <buffer> <localleader>fe ][
nnoremap <buffer> <leader>c mcI//<space><esc>`c:delm c<cr>
vnoremap <buffer> <leader>c <esc>`>o*/<esc>`<O/*<esc>
nnoremap <buffer> <leader>xc mx?//<cr>xxx`x:noh<cr>:delm x<cr>
nnoremap <buffer> <leader>xb mx?\/\*<cr>dd/\*\/<cr>dd`x:noh<cr>:delm x<cr>

setlocal foldmethod=syntax foldlevel=99
