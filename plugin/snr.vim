function! MySearchAndReplace(src, dst)
    let l:curbuf = bufnr()
    execute "Rg -w " . a:src
    cclose
    execute 'cfdo %s/\<' . a:src .'\>/' . a:dst .'/ | silent update'
    execute 'b ' . l:curbuf
endfunction

command! -nargs=+ SearchAndReplace call MySearchAndReplace(<f-args>)
