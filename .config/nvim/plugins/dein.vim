let g:dein#install_progress_type = 'title'
let g:dein#install_message_type  = 'none'

let s:dein_dir = expand('~/.cache/dein/repos/github.com/Shougo/dein.vim')
if !isdirectory(s:dein_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
endif
execute 'set runtimepath^=' . s:dein_dir

call dein#begin('~/.cache/dein')
call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
call dein#load_toml('~/.config/nvim/deinlazy.toml', {'lazy' : 1})
call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
