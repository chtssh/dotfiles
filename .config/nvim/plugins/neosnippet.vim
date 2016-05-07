let g:neosnippet#snippets_directory = "~/.config/nvim/snippets/"
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

"imap <C-k>  <Plug>(neosnippet_expand_or_jump)
"smap <C-k>  <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>  <Plug>(neosnippet_expand_target)
"imap <C-s>  <Plug>(neosnippet_start_unite_snippet)
"inoremap <silent> ((
            \ <C-r>=neosnippet#anonymous('\left(${1}\right)${0}')<CR>

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "<Plug>(neosnippet_expand_or_jump)" : "<Tab>"
