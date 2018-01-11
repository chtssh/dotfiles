export _JAVA_AWT_WM_NONREPARENTING=1
wmname LG3D

xsetroot -solid "#0a0f14"
while true
do
    xsetroot -name "$(date -u "+%a, %d %b %R") UTC"
    sleep 1
done &
exec dwm

# vim: ft=sh
