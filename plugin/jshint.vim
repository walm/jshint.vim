" NOTE: You must have jshint in your path.
"
" Install:
"
" On system with npm:
"   npm install jshint
"

" Location of jshint utility, change in vimrc i different
if !exists("g:jshintprg")
	let g:jshintprg="jshint"
endif

function! s:JSHint(cmd, args)
    set lazyredraw
    cclose
    if &readonly == 0
      update
    endif

    echo "JSHint ..."

    " If no file is provided, use current file 
    if empty(a:args)
        let l:fileargs = expand("%")
    else
        let l:fileargs = a:args
    end

    let grepprg_bak=&grepprg
    let grepformat_bak=&grepformat
    try
        let &grepprg=g:jshintprg
        let &grepformat="%f: line %l\\,\ col %c\\, %m"
        silent execute a:cmd . " " . l:fileargs
    finally
        let &grepprg=grepprg_bak
        let &grepformat=grepformat_bak
    endtry

    if len(getqflist()) >= 1

      " has errors display quickfix win
      execute 'belowright copen'

      setlocal wrap

      " close quickfix
      exec "nnoremap <silent> <buffer> q :ccl<CR>"
      exec "nnoremap <silent> <buffer> c :ccl<CR>"

      " open in a new window 
      exec "nnoremap <silent> <buffer> o <C-W><CR>"

      " preview
      exec "nnoremap <silent> <buffer> go <CR><C-W><C-W>"
    endif

    set nolazyredraw
    redraw!

    if len(getqflist()) == 0
      " no error, sweet!
      hi Green ctermfg=green
      echohl Green
      echon "JSHint: Lint free"
      echohl
    endif

endfunction

command! -bang -nargs=* -complete=file JSHint call s:JSHint('grep<bang>',<q-args>)
