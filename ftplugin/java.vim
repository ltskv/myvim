iabbrev <buffer> cout System.out.println
nnoremap <buffer> <localleader>fb ][%
nnoremap <buffer> <localleader>fe ][
nnoremap <buffer> <localleader>c mcI//<esc>`c:delm c<cr>
vnoremap <buffer> <localleader>c <esc>`>o*/<esc>`<O/*<esc>
nnoremap <buffer> <localleader>xc mx^xx`x:delm x<cr>
nnoremap <buffer> <localleader>xb mx?\/\*<cr>dd/\*\/<cr>dd`x:noh<cr>:delm x<cr>

setlocal foldmethod=syntax foldlevel=99
