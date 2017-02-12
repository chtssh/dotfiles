" Dein:
execute 'source' expand('~/.config/nvim/plugins/dein.vim')

" Mappings: {{{
nnoremap Q q
map <Leader>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
nnoremap <Leader>v :Lexplore<CR>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
"}}}

" Folding: {{{
"set nofoldenable
"set foldcolumn=0
" set foldignore=/*
"set foldclose=all
set foldnestmax=2               " Deepest fold
set foldminlines=10
" set foldlevel=1
autocmd FileType vim,toml
      \ setlocal foldtext=substitute(getline(v:foldstart),'{','','g') |
      \ setlocal foldmethod=marker
autocmd FileType c,cpp,h
      \ setlocal foldtext=substitute(getline(v:foldstart),'/','\ ','g').'\ ' |
      \ setlocal foldmethod=indent
"}}}

" View: {{{
syntax enable
set title                       " Enable window title
set laststatus=1
set ruler                       " Show position
" set rulerformat=
let c_no_curly_error = 1        " Disable the curly braces highlight error

set list                        " Show
"set listchars=tab:>\ ,trail:·   " tabs and trails
set listchars=tab:│\ ,trail:•,

" set number                      " Print the line number
set relativenumber              " Print the line number relative
" set pumheight=20                " Set popup menu max height.
set wildignore+=*.o,*.so        " Ignore this when used wildmenu
set scrolloff=1
" set cursorline
" set colorcolumn=79

autocmd FileType qf wincmd J
autocmd FileType qf,netrw setlocal statusline=%f

let g:netrw_winsize = -28
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_browse_split = 4
let g:netrw_list_hide = netrw_gitignore#Hide()

"set termguicolors
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

" set fillchars=stl:^,stlnc:-,vert:\|,fold:-,diff:-
autocmd FileType toml syntax sync minlines=500
"}}}

" Edit: {{{
" set textwidth=90                " Maximum width of text that is being inserted
" set colorcolumn=+1,+2           " A comma separated list of screen columns

set noswapfile                  " Disable swap file
set undofile                    " Enable undo file

set hidden                      " Disable buffer unload when swithing
set secure                      " Disable unsafe commands
autocmd FileType c,cpp,h setlocal cindent
set cinoptions=:0l1g0N-s        " Indents for C/C++

" set ts=4 sts=4 sw=4             " Tab
" set expandtab                   " Space
" set smartindent                 " Settings
" autocmd FileType cpp,hpp,vim setlocal ts=2 sts=2 sw=2
" autocmd FileType c setlocal noexpandtab

set formatoptions-=ro

"set makeprg=make\ -C\ build\ -s
"set errorformat=%f:%l:%c:\ %m
"}}}
