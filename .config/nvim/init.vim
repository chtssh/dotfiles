" Dein:
execute 'source' expand('~/.config/nvim/plugins/dein.vim')

" Mappings: {{{
function! s:GetBufferList() abort
  redir =>buflist
  silent! ls
  redir END
  return split(buflist, '\n')
endfunction

function! ToggleLocationList() abort
  for bufname in s:GetBufferList()
    if bufname =~ '\[Location List\]'
      lclose
      return
    endif
  endfor
  try
    lopen
  catch /E776/
    echo 'Location List is Empty.'
    return
  endtry
endfunction

function! ToggleQuickfixList() abort
  for bufname in s:GetBufferList()
    if bufname =~ '\[Quickfix List\]'
      cclose
      return
    endif
  endfor
  copen
endfunction

nnoremap <silent> <Leader>l :call ToggleLocationList()<CR>
nnoremap <silent> <Leader>q :call ToggleQuickfixList()<CR>
nnoremap Q q

xnoremap <Tab> >
xnoremap <S-Tab> <

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
autocmd FileType vim,toml setlocal foldtext=substitute(getline(v:foldstart),'{','','g')
autocmd FileType c,cpp,h setlocal foldtext=substitute(getline(v:foldstart),'/','\ ','g').'\ '
autocmd FileType c,cpp,h setlocal foldmethod=indent
"}}}

" View: {{{
syntax enable
" set showcmd                     " Show the number of selected lines/characters
set title                       " Enable window title
" set ruler                       " Show position
" set rulerformat=
let c_no_curly_error = 1        " Disable the curly braces highlight error

set list                        " Show
set listchars=tab:▸\ ,trail:·   " tabs and trails

set number                      " Print the line number
set relativenumber              " Print the line number relative
" set pumheight=20                " Set popup menu max height.
set wildignore+=*.o,*.so        " Ignore this when used wildmenu

" set laststatus=1                " Enable/disable status bar
" set cursorline                  " Highlight the screen line of the cursor
" set statusline=
" set statusline+=\ %#ErrorMsg#%{neomake#statusline#LoclistStatus('neomake:\ ')}

set statusline=%f\ %h%m%r%<
set statusline+=%10(%{neomake#statusline#LoclistStatus()}%)

set statusline+=%=              " Align to right
set statusline+=%-15(%y%)
set statusline+=%-10.(%l:%c%V%)\ %P
" set diffopt+=vertical

" autocmd FileType help wincmd L  " Split left help window
autocmd FileType qf wincmd J | setlocal statusline=%f
" set splitbelow                  " Swap
" set splitright                  " split

let $NVIM_TUI_ENABLE_TRUE_COLOR   = 1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1

" set fillchars=stl:^,stlnc:-,vert:\|,fold:-,diff:-
autocmd FileType toml syntax sync minlines=500
"}}}

" Edit: {{{
" set textwidth=90                " Maximum width of text that is being inserted
"set colorcolumn=+1,+2           " A comma separated list of screen columns

set noswapfile                  " Disable swap file
set undofile                    " Enable undo file

set hidden                      " Disable buffer unload when swithing
set secure                      " Disable unsafe commands
autocmd FileType c,cpp,h setlocal cindent
set cinoptions=:0l1g0N-s        " Indents for C/C++

set ts=4 sts=4 sw=4             " Tab
set expandtab                   " Space
set smartindent                 " Settings
autocmd FileType cpp,hpp,vim setlocal ts=2 sts=2 sw=2 et

set formatoptions-=ro

"}}}

" vim: set ts=2 sw=2 sts=2 et fdm=marker:
