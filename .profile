export PATH="$PATH:$HOME/.bin"
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec xinit -- -noacpi
