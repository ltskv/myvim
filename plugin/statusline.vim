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

function! GetFilePath()
    let filename=@%
    if strlen(filename) == 0
        return '[new]'
    elseif strlen(filename) < winwidth(filename) - 40
        return filename
    endif
    if has('win32')
        let sep = '\'
    else
        let sep = '/'
    endif
    let dirpath=split(@%, sep)
    let result = ''
    if filename[0] == sep
        let result .= sep
    endif
    for direntry in dirpath[:-2]
        let result .= direntry[0] . '/'
    endfor
    let result .= expand('%:t')
    return result
endfunction

set statusline=
set statusline+=%w%q%h "Is it help/preview/loclist?
set statusline+=%{GetGitStatus()} "Is it git?
set statusline+=\ 
set statusline+=%{GetFilePath()} "What's the filename? (nicely adjusted)
set statusline+=%m%r "Is it modifiable/readonly?
set statusline+=[%LL] "How many lines?
set statusline+=%= "Go to the right ---->
set statusline+=%< "Trim here
set statusline+=\ 
set statusline+=%{&fileencoding?&fileencoding:&encoding}
set statusline+=\|%{&fileformat} "Unix/Win?
set statusline+=%y "What's the type of the file?
" set statusline+=\ 
" set statusline+=x%02B "Character under cursor...
set statusline+=\ @%-2c "at column
set statusline+=\ 

hi def link StatusLineNormal StatusLine
hi def link StatusLineInsert StatusLineNC

augroup statushl
    autocmd!
    autocmd InsertEnter * hi! link StatusLine StatusLineInsert
    autocmd InsertLeave * hi! link StatusLine StatusLineNormal
augroup END
