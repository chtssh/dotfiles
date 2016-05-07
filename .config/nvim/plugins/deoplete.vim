let g:deoplete#enable_at_startup = 1
set completeopt=menu
let g:deoplete#max_list = 10
let g:deoplete#max_abbr_width = 50
let g:deoplete#auto_complete_start_length = 2
" let g:deoplete#enable_refresh_always = 1
" let g:deoplete#disable_auto_complete = 1

" <TAB>: completion.
imap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ neosnippet#expandable_or_jumpable() ?
      \     "<Plug>(neosnippet_expand_or_jump)" :
      \ "\<TAB>"

function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#mappings#smart_close_popup()."\<C-h>"
inoremap <expr><BS> deoplete#mappings#smart_close_popup()."\<C-h>"

inoremap <expr><C-g> deoplete#mappings#undo_completion()

" <C-l>: redraw candidates
inoremap <expr><C-l>       deoplete#mappings#refresh()

" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function() abort
"   return deoplete#mappings#close_popup() . "\<CR>"
" endfunction

inoremap <expr> '  pumvisible() ? deoplete#mappings#close_popup() : "'"
