iabbrev <buffer> prn printf("\n");
cabbrev <buffer> Help term ++close man

nnoremap <buffer> <localleader>fb ][%
nnoremap <buffer> <localleader>fe ][
nnoremap <buffer> <localleader>h :term ++rows=15 ++close man 3 <cword><cr>
nnoremap <buffer> <localleader>x :execute 'term ++rows=15 bash -c "if [ -r ./run ]; then ./run; else ninja -C build && ./build/\"$(basename \"$PWD\")\"; fi"'<cr>

setlocal foldmethod=syntax foldlevel=99
