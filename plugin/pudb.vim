let s:bpfile = trim(system('python -c "import pudb.settings; print(pudb.settings.get_breakpoints_file_name())"'))

if filereadable(s:bpfile)
    call sign_define("pudb_bp", { "text": "b",  "texthl": "Error"})

    function! BreakpointFromString(bp_string)
        return split(split(a:bp_string, ' ')[1], ':')
    endfunction

    function! StringFromBreakpoint(breakpoint)
        return 'b ' . a:breakpoint[0] . ':' . a:breakpoint[1]
    endfunction

    function! LoadBreakpoints()
        let breakpoints = filter(readfile(s:bpfile), 'v:val[0] == "b"')
        let breakpoints = map(breakpoints, 'BreakpointFromString(v:val)')
        return breakpoints
    endfunction

    function! AddBreakpoint()
        if &ft != 'python'
            echoerr 'Not a Python file'
            return
        endif
        let breakpoints = LoadBreakpoints()
        let fname = expand('%:p')
        let lineno = line('.')
        for breakpoint in breakpoints
            if fname == breakpoint[0] && lineno == breakpoint[1]
                return
            endif
        endfor
        let bpline = 'b ' . fname . ':' . lineno
        call writefile([bpline], s:bpfile, 'a')
        call DrawMarkers()
    endfunction

    function! DeleteBreakpoint()
        if &ft != 'python'
            echoerr 'Not a Python file'
            return
        endif
        let fname = expand('%:p')
        let lineno = line('.')
        let breakpoints = filter(LoadBreakpoints(),
                    \ 'v:val[0] != fname || v:val[1] != lineno')
        call writefile(map(breakpoints, 'StringFromBreakpoint(v:val)'),
                    \ s:bpfile, 'w')
        call DrawMarkers()
    endfunction

    function! UndrawMarkers()
        call sign_unplace('pudb')
    endfunction

    function! DrawMarkers()
        call UndrawMarkers()
        let breakpoints = LoadBreakpoints()
        for breakpoint in breakpoints
            if bufexists(breakpoint[0])
                call sign_place(0, 'pudb', 'pudb_bp', breakpoint[0], {
                            \ 'lnum': str2nr(breakpoint[1])})
            endif
        endfor
    endfunction

    command! PudbAddBreakpoint call AddBreakpoint()
    command! PudbDeleteBreakpoint call DeleteBreakpoint()
    command! PudbShowBreakpoints call DrawMarkers()
    command! PudbHideBreakpoints call UndrawMarkers()
endif
