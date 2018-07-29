let s:comment_map = {
            \ 'c': '\/\/',
            \ 'cpp': '\/\/',
            \ 'java': '\/\/',
            \ 'javascript': '\/\/',
            \ 'vhdl': '--',
            \ 'python': '#',
            \ 'vim': '"',
            \ 'tex': '%',
            \ 'plaintex': '%',
            \ 'sh': '#',
            \ 'make': '#',
            \ }

let s:block_map = {
            \ 'c': ['\/\*', '\*\/'],
            \ 'java': ['\/\*', '\*\/'],
            \ 'cpp': ['\/\*', '\*\/'],
            \ 'python': ['"""', '"""'],
            \ 'vim': ['" {{{', '" }}}'],
            \ 'css': ['\/\*', '\*\/'],
            \ 'html': ['<!--', '-->'],
            \ 'javascript': ['\/\*', '\*\/']
            \ }

function! MyCommenter(uncomment) range
    let comment = get(s:comment_map, &ft, '')
    if exists('g:custom_comment_map')
        let comment = get(g:custom_comment_map, &ft, comment)
    endif
    if !len(comment)
        return
    endif
    let search_range = a:firstline . ',' . a:lastline

    " Uncomment the line anyway (when commenting this avoids multiple comment
    " chars)
    execute search_range . 's/\(^\s*\)\(' . comment . '\s*\)\+/\1/e'
    if !a:uncomment
        " Comment
        execute search_range . 's/\(^\s*\)\(\S\)/\1' . comment . ' \2/e'
    endif
    nohl
endfunction

function! MyBlocker(unblock) range
    let block = get(s:block_map, &ft, [])
    if exists('g:custom_block_map')
        let block = get(g:custom_block_map, &ft, [])
    endif
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
    nohl
endfunction

command! -range CommenseComment silent <line1>,<line2>call MyCommenter(0)
command! -range CommenseUncomment silent <line1>,<line2>call MyCommenter(1)
command! -range CommenseBlock silent <line1>,<line2>call MyBlocker(0)
command! -range CommenseUnblock silent <line1>,<line2>call MyBlocker(1)
