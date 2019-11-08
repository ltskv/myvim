iabbrev <buffer> prn printf("\n");
cabbrev <buffer> Help term ++close man

nnoremap <buffer> <localleader>fb ][%
nnoremap <buffer> <localleader>fe ][
nnoremap <buffer> <localleader>h :term ++rows=15 ++close man <cword><cr>
nnoremap <buffer> <localleader>x :term ++rows=15 %:p:h/run<cr>

setlocal foldmethod=syntax foldlevel=99
