let g:unite_ignore_source_files = ['function.vim', 'command.vim', 'window.vim']
" For unite-menu.
let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.unite = {
      \     'description' : 'Start unite sources',
      \ }
let g:unite_source_menu_menus.unite.command_candidates = {
      \       'history'    : 'Unite history/command',
      \       'quickfix'   : 'Unite qflist -no-quit',
      \       'resume'     : 'Unite -buffer-name=resume resume',
      \       'directory'  : 'Unite -buffer-name=files '.
      \             '-default-action=lcd directory_mru',
      \       'mapping'    : 'Unite mapping',
      \       'message'    : 'Unite output:message',
      \       'scriptnames': 'Unite output:scriptnames',
      \     }

let g:unite_source_menu_menus.zsh = {
      \     'description' : 'Edit zsh files',
      \ }
let g:unite_source_menu_menus.zsh.file_candidates = [
      \       ['zshenv'    , '~/.zshenv'],
      \       ['zshrc'     , '~/.zshrc'],
      \       ['zplug'     , '~/.zplug'],
      \     ]
let g:unite_source_alias_aliases = {}
let g:unite_source_alias_aliases.test = {
      \ 'source' : 'file_rec',
      \ 'args'   : '~/',
      \ }
call unite#custom#profile('files', 'filters', 'sorter_rank')

