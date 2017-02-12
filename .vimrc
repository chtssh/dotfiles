set nocompatible
set backspace=indent,eol,start
set history=200
set scrolloff=5
set suffixes+=.log,.out,.png,.jpg

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

let g:completor_auto_trigger = 0
set pumheight=10

if has('syntax')
	syntax enable
	colorscheme gotham
	let c_comment_strings=1
	set colorcolumn=+1,+2
endif

filetype plugin indent on
let g:vim_indent_cont = &sw
if has('cindent')
	set cinoptions=:0t0(0
endif

set noswapfile
if has('persistent_undo')
	set undofile
	set undodir=~/.vim/.undo
endif

if has('title')
	set title
endif

if has('path_extra')
	set path+=**
endif

if has('folding')
	autocmd FileType c setlocal foldmethod=syntax
	set foldminlines=20
endif

set list
set listchars=tab:│\ ,trail:•

if has('windows') && has('folding')
	set fillchars=vert:\│,fold:-
endif

if has('wildmenu')
	set wildmenu
endif
if has('wildignore')
	set wildignore+=*.o,*.so
endif

set display=truncate
"
if has('extra_search')
	set hlsearch
	set incsearch
endif

if has('langmap')
	set langnoremap
endif

set ttyfast

set relativenumber

" Completion:
set shortmess+=c
if has('insert_expand')
	set complete-=t,i
	setlocal completeopt-=preview
endif

let g:compiler_gcc_ignore_unmatched_lines = 1
set autowrite
set lazyredraw
