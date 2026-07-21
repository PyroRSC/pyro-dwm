flameshot &
nitrogen --restore &
picom &
dwmblocks &
on_start.sh &
x11vnc -display :0 -auth guess -forever -shared -bg -usepw -noxdamage -xkb
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
exec dwm
