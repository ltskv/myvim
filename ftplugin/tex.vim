setlocal foldmethod=syntax tabstop=2 shiftwidth=2

iabbrev <buffer> tit \textit
iabbrev <buffer> pg \paragraph
iabbrev <buffer> sc \section
iabbrev <buffer> sb \subsection
iabbrev <buffer> ssb \subsubsection
iabbrev <buffer> td \todo
iabbrev <buffer> mb \mathbf

nnoremap <buffer> <localleader>lm :Latexmk<cr>
nnoremap <buffer> <localleader>lv :LatexView<cr>
nnoremap <buffer> <localleader>T :LatexTOC<cr>
