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

let g:unite_source_menu_menus.configs = {
      \     'description' : 'Edit config files',
      \ }
let g:unite_source_menu_menus.configs.file_candidates = [
      \       ['mksh'     , '~/.mkshrc'],
      \       ['ncmpcpp'  , '~/.config/ncmpcpp/config'],
      \       ['xinit'    , '~/.xinitrc'],
      \       ['profile'  , '~/.profile'],
      \       ['rtorrent' , '~/.rtorrent.rc'],
      \       ['zathura' , '~/.config/zathura/zathurarc'],
      \       ['ranger' , '~/.config/ranger/rc.conf'],
      \       ['mpd' , '~/.config/mpd/mpd.conf'],
      \       ['mpv' , '~/.config/mpv/mpv.conf'],
      \       ['nvim' , '~/.config/nvim/init.vim'],
      \     ]

let g:unite_source_menu_menus.logs = {
      \       'description' : 'View config files',
      \ }
let g:unite_source_menu_menus.logs.file_candidates = [
      \       ['xorg'     , '/var/log/Xorg.0.log'],
      \       ['dwm'      , '~/.dwm.log'],
      \       ['pacman'   , '/var/log/pacman.log'],
      \     ]
