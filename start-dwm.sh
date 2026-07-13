flameshot &
nitrogen --restore &
picom &
cava_start.sh &
spotify_start.sh &
dwmblocks &
x11vnc -display :0 -auth guess -forever -shared -bg -usepw -noxdamage -xkb
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
exec dwm
