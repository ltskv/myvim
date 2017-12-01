function! GetGitStatus()
    if !exists('*fugitive#statusline')
        return ''
    endif
    let result=fugitive#statusline()
    if strlen(result) == 0
        return result
    else
        return "{" . split(result,'[()]')[1] . "}"
    endif
endfunction

set statusline=
set statusline+=%w%q%h
set statusline+=%{GetGitStatus()}
set statusline+=\ 
set statusline+=%f
set statusline+=%m%r
set statusline+=%=
set statusline+=\ 
set statusline+=%<
set statusline+=%{&fileencoding?&fileencoding:&encoding}
set statusline+=\|%{&fileformat}
set statusline+=\ 
set statusline+=%y
set statusline+=\ 
set statusline+=<x%02B>
set statusline+=\ 
set statusline+=(%2c:%l)/%L
set statusline+=\ 
