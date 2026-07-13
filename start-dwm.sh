export XDG_CURRENT_DESKTOP=dwm
export XDG_SESSION_DESKTOP=dwm
export XDG_SESSION_TYPE=x11

dbus-update-activation-environment --systemd DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE
systemctl --user import-environment DISPLAY XAUTHORITY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE
flameshot &
dwmblocks &
nitrogen --restore &
picom &
x11vnc -display :0 -auth guess -forever -shared -bg -usepw -noxdamage -xkb
[ -f ~/.Xresources ] && xrdb -merge ~/.XResources
exec dwm
