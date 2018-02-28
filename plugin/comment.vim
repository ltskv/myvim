let s:comment_filetype_map = {
            \ 'c': '\/\/',
            \ 'cpp': '\/\/',
            \ 'java': '\/\/',
            \ 'vhdl': '--',
            \ 'python': '#',
            \ 'vim': '"',
            \ 'tex': '%',
            \ 'sh': '#'
            \ }

let s:block_filetype_map = {
            \ 'c': ['\/\*', '\*\/'],
            \ 'java': ['\/\*', '\*\/'],
            \ 'cpp': ['\/\*', '\*\/'],
            \ 'python': ['"""', '"""'],
            \ 'vim': ['" {{{', '" }}}']
            \ }

function! MyCommenter(uncomment) range
    let comment = get(s:comment_filetype_map, &ft, '')
    if !len(comment)
        return
    endif
    let search_range = a:firstline . ',' . a:lastline
    if !a:uncomment
        execute search_range . 's/\(^\s*\)\(\S\)/\1' . comment . ' \2/e'
    else
        execute search_range . 's/\(^\s*\)' . comment . '\s*/\1/e'
    endif
    nohl
endfunction

function! MyBlocker(unblock) range
    let block = get(s:block_filetype_map, &ft, [])
    if !len(block)
        return
    endif
    if !a:unblock
        execute 'normal! ' . a:lastline . 'gg'
        execute 'normal! o' . substitute(block[1], '\', '', 'g') . "\<esc>"
        execute 'normal! ' . a:firstline . 'gg'
        execute 'normal! O' . substitute(block[0], '\', '', 'g') . "\<esc>"
    else
        execute 'normal! ?' . block[0] . "\<cr>" . 'dd'
        execute 'normal! /' . block[1] . "\<cr>" . 'dd'
    endif
    noh
endfunction

command! -range CommenseComment <line1>,<line2>call MyCommenter(0)
command! -range CommenseUncomment <line1>,<line2>call MyCommenter(1)
command! -range CommenseBlock <line1>,<line2>call MyBlocker(0)
command! -range CommenseUnblock <line1>,<line2>call MyBlocker(1)
