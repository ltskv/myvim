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
set statusline+=%w%q%h "Is it help/preview/loclist?
set statusline+=%{GetGitStatus()} "Is it git?
set statusline+=\ 
set statusline+=%.40f "What's the filename?
set statusline+=%m%r "Is it modifiable/readonly?
set statusline+=[%LL] "How many lines?
set statusline+=%= "Go to the right ---->
set statusline+=\ 
set statusline+=%< "Trim here
set statusline+=%{&fileencoding?&fileencoding:&encoding}
set statusline+=\|%{&fileformat} "Unix/Win?
set statusline+=%y "What's the type of the file?
set statusline+=\ 
set statusline+=x%02B "Character under cursor...
set statusline+=\ @%-2c "at column
set statusline+=\ 
