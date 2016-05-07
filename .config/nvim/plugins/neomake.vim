autocmd! BufWritePost *.c,*.cpp,*.h,*.py Neomake

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
            \ 'texthl': 'SyntasticErrorSign',
            \ }
let g:neomake_warning_sign = {
            \ 'text': '>>',
            \ 'texthl': 'SyntasticWarningSign',
            \ }
let g:neomake_cpp_clang_args = ['-fsyntax-only', '-Wall', '-Wextra', '-std=c++14']
let g:neomake_cpp_gcc_args = g:neomake_cpp_clang_args
let g:neomake_cpp_enabled_makers = ['clang']
