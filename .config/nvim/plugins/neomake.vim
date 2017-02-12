function! MakeAdvance() abort
  silent wall|make
  redraw!
  call setqflist(filter(getqflist(), 'v:val.valid'))
  if len(getqflist())
    copen
    wincmd p
  else
    cclose
  endif
endfunction

" autocmd! BufWritePost *.c,*.cpp,*.h,*.py call MakeAdvance()
"nnoremap <Leader>c :call MakeAdvance()<CR>
autocmd! BufWritePost * Neomake
"autocmd! InsertLeave * Neomake

" autocmd! CursorHold *.c,*.cpp,*.h,*.py call s:CheckModify()
" function! s:CheckModify() abort
"   if &modified
"     silent write|Neomake
"   endif
" endfunction
" set updatetime=4000

" let g:neomake_open_list = 2
" let g:neomake_echo_current_error = 0

let g:neomake_verbose = 0
let g:neomake_error_sign = {
            \ 'text': '>>',
            \ 'texthl': 'ErrorMsg',
            \ }
let g:neomake_warning_sign = {
            \ 'text': '>>',
            \ 'texthl': 'LineNr',
            \ }
let g:neomake_cpp_clang_args = ['-fsyntax-only', '-Wall', '-Wextra', '-std=c++14']
let g:neomake_cpp_gcc_args = g:neomake_cpp_clang_args
let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_c_enabled_makers = ['gcc']
