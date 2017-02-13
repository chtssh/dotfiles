set nocompatible
set backspace=indent,eol,start
set history=200
set scrolloff=5
set suffixes+=.log,.out,.png,.jpg

" Mappings:
nnoremap <Leader>v :Lexplore<CR>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

let g:netrw_winsize = -28
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_list_hide= netrw_gitignore#Hide().'.*\.swp$'
autocmd FileType netrw setlocal statusline=%f

let g:completor_auto_trigger = 0
set pumheight=10

if has('syntax')
	syntax enable
	colorscheme gotham
	let c_comment_strings = 1
	let c_curly_error = 1
	set colorcolumn=+1,+2
endif

filetype plugin indent on
let g:vim_indent_cont = &sw
if has('cindent')
	set cinoptions=:0t0(0
endif

if has('persistent_undo')
	set noswapfile
	set undofile
	set undodir=~/.vim/.undo
endif

if has('title')
	set title
endif

if has('path_extra')
	set path+=**
endif

fun! s:LoadTemplate()
	let template = $HOME . '/.vim/templates/foo.' . expand('%:e')

	if filereadable(template)
		execute '0r' . template . '|$d'
		%s/`.*`/\=eval(strcharpart(submatch(0), 1,
			\strlen(submatch(0)) - 2))/g
		%s/${0}//g
	endif
endfun
autocmd BufNewFile *.* silent! call s:LoadTemplate()


if has('folding')
	autocmd FileType c setlocal foldmethod=syntax
	set foldminlines=20
endif

set list
set listchars=tab:\|\ ,trail:-

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
set laststatus=1
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
