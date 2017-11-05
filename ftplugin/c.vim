iabbrev <buffer> prn printf("\n");
iabbrev <buffer> im(a) int main(int argc, const char** argv)
iabbrev <buffer> maw #pragma message("malloc warning!")
nnoremap <buffer> <localleader>fb ][%
nnoremap <buffer> <localleader>fe ][
nnoremap <buffer> <localleader>c I//<esc>
vnoremap <buffer> <localleader>c <esc>`>o*/<esc>`<O/*<esc>
nnoremap <buffer> <localleader>xc mx/\*\/<cr>dd?\/\*<cr>dd`x:noh<cr>:delm x<cr>
nnoremap <buffer> <localleader>xb mx?\/\*<cr>dd/\*\/<cr>dd`x:noh<cr>:delm x<cr>

setlocal foldmethod=syntax foldlevel=99
